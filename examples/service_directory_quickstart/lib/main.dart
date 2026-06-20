/// Service Directory quickstart -- an end-to-end terradart example.
///
/// Defines a `RegistryStack` that provisions:
/// - a Service Directory namespace (`terradart-registry`),
/// - a service (`api`) under that namespace,
/// - an endpoint (`api-primary`) for the service,
/// - a `roles/servicedirectory.viewer` grant on the namespace and a
///   `roles/servicedirectory.editor` grant on the service, both for an
///   in-stack service account,
///
/// and exports the namespace id as a typed Dart constant via
/// `Stack.addExport`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/service_directory.dart';

/// Service Directory Stack: a namespace + service + endpoint and resource-level
/// IAM members.
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

    add(
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

    add(
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
