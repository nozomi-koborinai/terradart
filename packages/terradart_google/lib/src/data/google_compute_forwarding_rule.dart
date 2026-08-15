// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_forwarding_rule`.
const Set<String> _googleComputeForwardingRuleSensitive = <String>{};

/// Factory wrapper for `google_compute_forwarding_rule`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeForwardingRule extends Data {
  static const String tfType = 'google_compute_forwarding_rule';

  DataGoogleComputeForwardingRule({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeForwardingRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `all_ports` attribute.
  TfRef<bool> get allPorts => TfRef.attribute<bool>(this, 'all_ports');

  /// Reference to `allow_global_access` attribute.
  TfRef<bool> get allowGlobalAccess =>
      TfRef.attribute<bool>(this, 'allow_global_access');

  /// Reference to `allow_psc_global_access` attribute.
  TfRef<bool> get allowPscGlobalAccess =>
      TfRef.attribute<bool>(this, 'allow_psc_global_access');

  /// Reference to `backend_service` attribute.
  TfRef<String> get backendService =>
      TfRef.attribute<String>(this, 'backend_service');

  /// Reference to `base_forwarding_rule` attribute.
  TfRef<String> get baseForwardingRule =>
      TfRef.attribute<String>(this, 'base_forwarding_rule');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `forwarding_rule_id` attribute.
  TfRef<num> get forwardingRuleId =>
      TfRef.attribute<num>(this, 'forwarding_rule_id');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `ip_collection` attribute.
  TfRef<String> get ipCollection =>
      TfRef.attribute<String>(this, 'ip_collection');

  /// Reference to `ip_protocol` attribute.
  TfRef<String> get ipProtocol => TfRef.attribute<String>(this, 'ip_protocol');

  /// Reference to `ip_version` attribute.
  TfRef<String> get ipVersion => TfRef.attribute<String>(this, 'ip_version');

  /// Reference to `is_mirroring_collector` attribute.
  TfRef<bool> get isMirroringCollector =>
      TfRef.attribute<bool>(this, 'is_mirroring_collector');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `load_balancing_scheme` attribute.
  TfRef<String> get loadBalancingScheme =>
      TfRef.attribute<String>(this, 'load_balancing_scheme');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `network_tier` attribute.
  TfRef<String> get networkTier =>
      TfRef.attribute<String>(this, 'network_tier');

  /// Reference to `no_automate_dns_zone` attribute.
  TfRef<bool> get noAutomateDnsZone =>
      TfRef.attribute<bool>(this, 'no_automate_dns_zone');

  /// Reference to `port_range` attribute.
  TfRef<String> get portRange => TfRef.attribute<String>(this, 'port_range');

  /// Reference to `ports` attribute.
  TfRef<List<String>> get ports => TfRef.attribute<List<String>>(this, 'ports');

  /// Reference to `psc_connection_id` attribute.
  TfRef<String> get pscConnectionId =>
      TfRef.attribute<String>(this, 'psc_connection_id');

  /// Reference to `psc_connection_status` attribute.
  TfRef<String> get pscConnectionStatus =>
      TfRef.attribute<String>(this, 'psc_connection_status');

  /// Reference to `recreate_closed_psc` attribute.
  TfRef<bool> get recreateClosedPsc =>
      TfRef.attribute<bool>(this, 'recreate_closed_psc');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `service_directory_registrations` attribute.
  TfRef<List<Map<String, Object?>>> get serviceDirectoryRegistrations =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'service_directory_registrations',
      );

  /// Reference to `service_label` attribute.
  TfRef<String> get serviceLabel =>
      TfRef.attribute<String>(this, 'service_label');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `source_ip_ranges` attribute.
  TfRef<List<String>> get sourceIpRanges =>
      TfRef.attribute<List<String>>(this, 'source_ip_ranges');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
