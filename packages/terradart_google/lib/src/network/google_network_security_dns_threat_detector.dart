// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_dns_threat_detector`.
const Set<String> _googleNetworkSecurityDnsThreatDetectorSensitive = <String>{};

/// Factory wrapper for `google_network_security_dns_threat_detector`.
///
/// DNS Armor is a fully-managed service that provides DNS-layer security for
/// your Google Cloud workloads.
///
/// Network Security **DNS threat detector** (DNS Armor / Infoblox) — enables
/// DNS-layer advanced threat detection for VPC workloads in a project.
///
/// Creating a detector enables DNS Armor for the project. Billing is
/// usage-based (workloads / internet-bound DNS queries) via Network Security
/// SKU `F6D7-37A1-D4A0`, not a flat existence charge for the config alone.
/// [threatDetectorProvider] must be `INFOBLOX` (only supported value).
/// Location must be `global`.
///
/// Enable `networksecurity.googleapis.com` via [GoogleProjectService]
/// before apply. At most one DNS threat detector exists per project.
///
/// Example:
/// ```dart
/// GoogleNetworkSecurityDnsThreatDetector(
///   localName: 'dns_threat',
///   name: TfArg.literal('terradart-dns-threat'),
///   location: TfArg.literal('global'),
///   threatDetectorProvider: TfArg.literal(
///     NetworkSecurityDnsThreatDetectorThreatDetectorProvider.infoblox,
///   ),
/// );
/// ```
final class GoogleNetworkSecurityDnsThreatDetector extends Resource {
  static const String tfType = 'google_network_security_dns_threat_detector';

  GoogleNetworkSecurityDnsThreatDetector({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    TfArg<NetworkSecurityDnsThreatDetectorThreatDetectorProvider>?
    threatDetectorProvider,
    TfArg<List<String>>? excludedNetworks,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (location != null) 'location': location,
           if (threatDetectorProvider != null)
             'threat_detector_provider': threatDetectorProvider,
           if (excludedNetworks != null) 'excluded_networks': excludedNetworks,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityDnsThreatDetectorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
