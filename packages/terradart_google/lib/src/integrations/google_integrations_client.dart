// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_integrations_client`.
const Set<String> _googleIntegrationsClientSensitive = <String>{};

/// Typed helper for the `cloud_kms_config` block of
/// `google_integrations_client` (derived from provider schema).
@immutable
final class IntegrationsClientCloudKmsConfig {
  const IntegrationsClientCloudKmsConfig({
    required this.key,
    this.keyVersion,
    required this.kmsLocation,
    this.kmsProjectId,
    required this.kmsRing,
  });

  final TfArg<String> key;

  final TfArg<String>? keyVersion;

  final TfArg<String> kmsLocation;

  final TfArg<String>? kmsProjectId;

  final TfArg<String> kmsRing;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (keyVersion != null) 'key_version': keyVersion!.toTfJson(),
    'kms_location': kmsLocation.toTfJson(),
    if (kmsProjectId != null) 'kms_project_id': kmsProjectId!.toTfJson(),
    'kms_ring': kmsRing.toTfJson(),
  };
}

/// Factory wrapper for `google_integrations_client`.
///
/// Application Integration Client.
///
/// Application Integration **client** — provisions the Integration
/// control plane for a project location (`clients:provision`).
///
/// This is regional singleton config: [location] is the only required
/// argument. Creating the client does not execute integration flows
/// (billing SKUs are flow execution / data processed). Optional
/// [createSampleIntegrations] seeds sample flows; omit it for smoke
/// stacks. Optional [cloudKmsConfig] enables CMEK.
///
/// Enable `integrations.googleapis.com` via [GoogleProjectService]
/// before apply. Destroy calls `clients:deprovision`.
///
/// Example:
/// ```dart
/// GoogleIntegrationsClient(
///   localName: 'client',
///   location: TfArg.literal('us-central1'),
/// );
/// ```
final class GoogleIntegrationsClient extends Resource {
  static const String tfType = 'google_integrations_client';

  GoogleIntegrationsClient({
    required super.localName,
    required TfArg<String> location,
    TfArg<bool>? createSampleIntegrations,
    IntegrationsClientCloudKmsConfig? cloudKmsConfig,
    TfArg<String>? runAsServiceAccount,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (createSampleIntegrations != null)
             'create_sample_integrations': createSampleIntegrations,
           if (cloudKmsConfig != null)
             'cloud_kms_config': TfArg.literal(cloudKmsConfig.encode()),
           if (runAsServiceAccount != null)
             'run_as_service_account': runAsServiceAccount,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIntegrationsClientSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
