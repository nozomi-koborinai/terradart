// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_global_forwarding_rule`.
const Set<String> _googleComputeGlobalForwardingRuleSensitive = <String>{};

/// Factory wrapper for `google_compute_global_forwarding_rule`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeGlobalForwardingRule extends Data {
  static const String tfType = 'google_compute_global_forwarding_rule';

  DataGoogleComputeGlobalForwardingRule({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeGlobalForwardingRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `base_forwarding_rule` attribute.
  TfRef<String> get baseForwardingRule =>
      TfRef.attribute<String>(this, 'base_forwarding_rule');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `external_managed_backend_bucket_migration_state` attribute.
  TfRef<String> get externalManagedBackendBucketMigrationState =>
      TfRef.attribute<String>(
        this,
        'external_managed_backend_bucket_migration_state',
      );

  /// Reference to `external_managed_backend_bucket_migration_testing_percentage` attribute.
  TfRef<num> get externalManagedBackendBucketMigrationTestingPercentage =>
      TfRef.attribute<num>(
        this,
        'external_managed_backend_bucket_migration_testing_percentage',
      );

  /// Reference to `forwarding_rule_id` attribute.
  TfRef<num> get forwardingRuleId =>
      TfRef.attribute<num>(this, 'forwarding_rule_id');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `ip_protocol` attribute.
  TfRef<String> get ipProtocol => TfRef.attribute<String>(this, 'ip_protocol');

  /// Reference to `ip_version` attribute.
  TfRef<String> get ipVersion => TfRef.attribute<String>(this, 'ip_version');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `load_balancing_scheme` attribute.
  TfRef<String> get loadBalancingScheme =>
      TfRef.attribute<String>(this, 'load_balancing_scheme');

  /// Reference to `metadata_filters` attribute.
  TfRef<List<Map<String, Object?>>> get metadataFilters =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'metadata_filters');

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

  /// Reference to `psc_connection_id` attribute.
  TfRef<String> get pscConnectionId =>
      TfRef.attribute<String>(this, 'psc_connection_id');

  /// Reference to `psc_connection_status` attribute.
  TfRef<String> get pscConnectionStatus =>
      TfRef.attribute<String>(this, 'psc_connection_status');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `service_directory_registrations` attribute.
  TfRef<List<Map<String, Object?>>> get serviceDirectoryRegistrations =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'service_directory_registrations',
      );

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
