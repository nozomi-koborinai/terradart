/// Service Directory quickstart -- an end-to-end terradart example.
///
/// Defines a `RegistryStack` that provisions:
/// - a Service Directory namespace (`terradart-registry`),
/// - a service (`api`) under that namespace,
/// - an endpoint (`api-primary`) for the service,
/// - namespace / service IAM member + binding + policy for an in-stack
///   service account (serialized so destroy cannot race SetIamPolicy),
///
/// and exports the namespace id as a typed Dart constant via
/// `Stack.addConstant`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/service_directory.dart';

String _iamPolicyDataJson({required String role, required String member}) {
  return jsonEncode({
    'bindings': [
      {
        'role': role,
        'members': [member],
      },
    ],
  });
}

/// Service Directory Stack: a namespace + service + endpoint and resource-level
/// IAM member / binding / policy adjuncts.
final class RegistryStack extends Stack {
  RegistryStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/registry_stack.app.dart'),
      ) {
    final apiServiceDirectory = add(
      GoogleProjectService(
        localName: 'api_servicedirectory',
        service: .literal('servicedirectory.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    // IAM members validate that the principal exists, so provision the service
    // account in-stack and bind against its `iamMember` ref.
    final consumer = add(
      GoogleServiceAccount(
        localName: 'registry_consumer',
        accountId: .literal('registry-consumer'),
        displayName: .literal('Service Directory consumer'),
      ),
    );

    final namespace = add(
      GoogleServiceDirectoryNamespace(
        localName: 'registry',
        namespaceId: .literal('terradart-registry'),
        location: .literal('us-central1'),
        labels: .literal(const {'managed-by': 'terradart'}),
        dependsOn: [ResourceDependency(apiServiceDirectory)],
      ),
    );

    final service = add(
      GoogleServiceDirectoryService(
        localName: 'api',
        serviceId: .literal('api'),
        namespace: .ref(namespace.id),
        metadata: .literal(const {'protocol': 'grpc'}),
        dependsOn: [ResourceDependency(namespace)],
      ),
    );

    add(
      GoogleServiceDirectoryEndpoint(
        localName: 'api_primary',
        endpointId: .literal('api-primary'),
        service: .ref(service.id),
        address: .literal('10.0.0.42'),
        port: .literal(443),
        metadata: .literal(const {'weight': '100'}),
        dependsOn: [ResourceDependency(service)],
      ),
    );

    // Namespace IAM: member → binding → policy (ordered teardown).
    final namespaceViewer = add(
      GoogleServiceDirectoryNamespaceIamMember(
        localName: 'namespace_viewer',
        name: .ref(namespace.id),
        role: .literal('roles/servicedirectory.viewer'),
        member: .ref(consumer.iamMember),
        dependsOn: [
          ResourceDependency(namespace),
          ResourceDependency(consumer),
        ],
      ),
    );

    final namespaceViewerBinding = add(
      GoogleServiceDirectoryNamespaceIamBinding(
        localName: 'namespace_viewer_binding',
        name: .ref(namespace.id),
        role: .literal('roles/servicedirectory.viewer'),
        members: .literal([consumer.iamMember.interpolation]),
        dependsOn: [
          ResourceDependency(namespace),
          ResourceDependency(namespaceViewer),
        ],
      ),
    );

    add(
      GoogleServiceDirectoryNamespaceIamPolicy(
        localName: 'namespace_viewer_policy',
        name: .ref(namespace.id),
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/servicedirectory.viewer',
            member:
                'serviceAccount:registry-consumer@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [
          ResourceDependency(namespace),
          ResourceDependency(namespaceViewerBinding),
        ],
      ),
    );

    // Service IAM: member → binding → policy (ordered teardown).
    final serviceEditor = add(
      GoogleServiceDirectoryServiceIamMember(
        localName: 'service_editor',
        name: .ref(service.id),
        role: .literal('roles/servicedirectory.editor'),
        member: .ref(consumer.iamMember),
        dependsOn: [ResourceDependency(service), ResourceDependency(consumer)],
      ),
    );

    final serviceEditorBinding = add(
      GoogleServiceDirectoryServiceIamBinding(
        localName: 'service_editor_binding',
        name: .ref(service.id),
        role: .literal('roles/servicedirectory.editor'),
        members: .literal([consumer.iamMember.interpolation]),
        dependsOn: [
          ResourceDependency(service),
          ResourceDependency(serviceEditor),
        ],
      ),
    );

    add(
      GoogleServiceDirectoryServiceIamPolicy(
        localName: 'service_editor_policy',
        name: .ref(service.id),
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/servicedirectory.editor',
            member:
                'serviceAccount:registry-consumer@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [
          ResourceDependency(service),
          ResourceDependency(serviceEditorBinding),
        ],
      ),
    );

    // Literal namespace id -- emitted as a Dart constant at synth time.
    addConstant('registryNamespaceId', .ref(namespace.namespaceIdRef));

    // Full service resource id -- Terraform output only (computed).
    addOutput('registry_service_id', .ref(service.id));
  }
}
