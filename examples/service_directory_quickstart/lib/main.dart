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
/// `Stack.addExport`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/service_directory.dart';

String _iamPolicyDataJson({
  required String role,
  required String member,
}) {
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
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiServiceDirectory = add(
      GoogleProjectService(
        localName: 'api_servicedirectory',
        service: TfArg.literal('servicedirectory.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    // IAM members validate that the principal exists, so provision the service
    // account in-stack and bind against its `iamMember` ref.
    final consumer = add(
      GoogleServiceAccount(
        localName: 'registry_consumer',
        accountId: TfArg.literal('registry-consumer'),
        displayName: TfArg.literal('Service Directory consumer'),
      ),
    );

    final namespace = add(
      GoogleServiceDirectoryNamespace(
        localName: 'registry',
        namespaceId: TfArg.literal('terradart-registry'),
        location: TfArg.literal('us-central1'),
        labels: TfArg.literal(const {'managed-by': 'terradart'}),
        dependsOn: [ResourceDependency(apiServiceDirectory)],
      ),
    );

    final service = add(
      GoogleServiceDirectoryService(
        localName: 'api',
        serviceId: TfArg.literal('api'),
        namespace: TfArg.ref(namespace.id),
        metadata: TfArg.literal(const {'protocol': 'grpc'}),
        dependsOn: [ResourceDependency(namespace)],
      ),
    );

    add(
      GoogleServiceDirectoryEndpoint(
        localName: 'api_primary',
        endpointId: TfArg.literal('api-primary'),
        service: TfArg.ref(service.id),
        address: TfArg.literal('10.0.0.42'),
        port: TfArg.literal(443),
        metadata: TfArg.literal(const {'weight': '100'}),
        dependsOn: [ResourceDependency(service)],
      ),
    );

    // Namespace IAM: member → binding → policy (ordered teardown).
    final namespaceViewer = add(
      GoogleServiceDirectoryNamespaceIamMember(
        localName: 'namespace_viewer',
        name: TfArg.ref(namespace.id),
        role: TfArg.literal('roles/servicedirectory.viewer'),
        member: TfArg.ref(consumer.iamMember),
        dependsOn: [
          ResourceDependency(namespace),
          ResourceDependency(consumer),
        ],
      ),
    );

    final namespaceViewerBinding = add(
      GoogleServiceDirectoryNamespaceIamBinding(
        localName: 'namespace_viewer_binding',
        name: TfArg.ref(namespace.id),
        role: TfArg.literal('roles/servicedirectory.viewer'),
        members: TfArg.literal([consumer.iamMember.interpolation]),
        dependsOn: [
          ResourceDependency(namespace),
          ResourceDependency(namespaceViewer),
        ],
      ),
    );

    add(
      GoogleServiceDirectoryNamespaceIamPolicy(
        localName: 'namespace_viewer_policy',
        name: TfArg.ref(namespace.id),
        policyData: TfArg.literal(
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
        name: TfArg.ref(service.id),
        role: TfArg.literal('roles/servicedirectory.editor'),
        member: TfArg.ref(consumer.iamMember),
        dependsOn: [
          ResourceDependency(service),
          ResourceDependency(consumer),
        ],
      ),
    );

    final serviceEditorBinding = add(
      GoogleServiceDirectoryServiceIamBinding(
        localName: 'service_editor_binding',
        name: TfArg.ref(service.id),
        role: TfArg.literal('roles/servicedirectory.editor'),
        members: TfArg.literal([consumer.iamMember.interpolation]),
        dependsOn: [
          ResourceDependency(service),
          ResourceDependency(serviceEditor),
        ],
      ),
    );

    add(
      GoogleServiceDirectoryServiceIamPolicy(
        localName: 'service_editor_policy',
        name: TfArg.ref(service.id),
        policyData: TfArg.literal(
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
    addExport('REGISTRY_NAMESPACE_ID', StringExport('terradart-registry'));

    // Full service resource id -- Terraform output only (computed).
    addExport(
      'REGISTRY_SERVICE_ID',
      ResourceIdExport(service.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/registry_stack.app.dart');
  }
}
