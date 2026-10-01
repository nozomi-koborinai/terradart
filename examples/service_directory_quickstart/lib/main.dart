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
        'api_servicedirectory',
        service: .literal('servicedirectory.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    // IAM members validate that the principal exists, so provision the service
    // account in-stack and bind against its `principal`.
    final consumer = add(
      GoogleServiceAccount(
        'registry_consumer',
        accountId: .literal('registry-consumer'),
        displayName: .literal('Service Directory consumer'),
      ),
    );

    final namespace = add(
      GoogleServiceDirectoryNamespace(
        'registry',
        namespaceId: .literal('terradart-registry'),
        location: .literal('us-central1'),
        labels: .literal(const {'managed-by': 'terradart'}),
        dependsOn: [apiServiceDirectory],
      ),
    );

    final service = add(
      GoogleServiceDirectoryService(
        'api',
        serviceId: .literal('api'),
        namespace: namespace.ref,
        metadata: .literal(const {'protocol': 'grpc'}),
        dependsOn: [namespace],
      ),
    );

    add(
      GoogleServiceDirectoryEndpoint(
        'api_primary',
        endpointId: .literal('api-primary'),
        service: service.ref,
        address: .literal('10.0.0.42'),
        port: .literal(443),
        metadata: .literal(const {'weight': '100'}),
        dependsOn: [service],
      ),
    );

    // Namespace IAM: member → binding → policy (ordered teardown).
    final namespaceViewer = add(
      GoogleServiceDirectoryNamespaceIamMember(
        'namespace_viewer',
        namespace: namespace.ref,
        role: .literal('roles/servicedirectory.viewer'),
        member: consumer.principal,
        dependsOn: [namespace, consumer],
      ),
    );

    final namespaceViewerBinding = add(
      GoogleServiceDirectoryNamespaceIamBinding(
        'namespace_viewer_binding',
        namespace: namespace.ref,
        role: .literal('roles/servicedirectory.viewer'),
        members: .literal([consumer.principal]),
        dependsOn: [namespace, namespaceViewer],
      ),
    );

    add(
      GoogleServiceDirectoryNamespaceIamPolicy(
        'namespace_viewer_policy',
        namespace: namespace.ref,
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/servicedirectory.viewer',
            member:
                'serviceAccount:registry-consumer@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [namespace, namespaceViewerBinding],
      ),
    );

    // Service IAM: member → binding → policy (ordered teardown).
    final serviceEditor = add(
      GoogleServiceDirectoryServiceIamMember(
        'service_editor',
        service: service.ref,
        role: .literal('roles/servicedirectory.editor'),
        member: consumer.principal,
        dependsOn: [service, consumer],
      ),
    );

    final serviceEditorBinding = add(
      GoogleServiceDirectoryServiceIamBinding(
        'service_editor_binding',
        service: service.ref,
        role: .literal('roles/servicedirectory.editor'),
        members: .literal([consumer.principal]),
        dependsOn: [service, serviceEditor],
      ),
    );

    add(
      GoogleServiceDirectoryServiceIamPolicy(
        'service_editor_policy',
        service: service.ref,
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/servicedirectory.editor',
            member:
                'serviceAccount:registry-consumer@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [service, serviceEditorBinding],
      ),
    );

    // Literal namespace id -- emitted as a Dart constant at synth time.
    addConstant('registryNamespaceId', .ref(namespace.namespaceId));

    // Full service resource id -- Terraform output only (computed).
    addOutput('registry_service_id', service.id);
  }
}
