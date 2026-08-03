// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_quotas_quota_preference`.
const Set<String> _googleCloudQuotasQuotaPreferenceSensitive = <String>{};

/// Typed helper for the `quota_config` block of
/// `google_cloud_quotas_quota_preference` (derived from provider schema).
@immutable
final class CloudQuotasQuotaPreferenceQuotaConfig {
  const CloudQuotasQuotaPreferenceQuotaConfig({
    this.annotations,
    required this.preferredValue,
  });

  final TfArg<Map<String, String>>? annotations;

  final TfArg<String> preferredValue;

  Map<String, Object?> encode() => {
    if (annotations != null) 'annotations': annotations!.toTfJson(),
    'preferred_value': preferredValue.toTfJson(),
  };
}

/// Factory wrapper for `google_cloud_quotas_quota_preference`.
///
/// QuotaPreference represents the preferred quota configuration specified for a
/// project, folder or organization. There is only one QuotaPreference resource
/// for a quota value targeting a unique set of dimensions.
///
/// Cloud Quotas **quota preference** — preferred quota value for one
/// service / quota id (optionally dimensioned).
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU after MCP
/// lookup (`list_services` Cloud Quotas / Quota → empty). billing-behavior:
/// preference metadata — no existence/hourly charge. Provider MM sets
/// `exclude_delete: true` — Terraform **cannot destroy** the preference,
/// so apply-smoke would strand it forever (`never_apply`). Ships without
/// a quickstart (`tool/example_debt.yaml`).
final class GoogleCloudQuotasQuotaPreference extends Resource {
  static const String tfType = 'google_cloud_quotas_quota_preference';

  GoogleCloudQuotasQuotaPreference({
    required super.localName,
    TfArg<String>? parent,
    TfArg<String>? name,
    TfArg<String>? service,
    TfArg<String>? quotaId,
    required CloudQuotasQuotaPreferenceQuotaConfig quotaConfig,
    TfArg<Map<String, String>>? dimensions,
    TfArg<String>? contactEmail,
    TfArg<String>? justification,
    TfArg<String>? ignoreSafetyChecks,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (parent != null) 'parent': parent,
           if (name != null) 'name': name,
           if (service != null) 'service': service,
           if (quotaId != null) 'quota_id': quotaId,
           'quota_config': TfArg.literal(quotaConfig.encode()),
           if (dimensions != null) 'dimensions': dimensions,
           if (contactEmail != null) 'contact_email': contactEmail,
           if (justification != null) 'justification': justification,
           if (ignoreSafetyChecks != null)
             'ignore_safety_checks': ignoreSafetyChecks,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudQuotasQuotaPreferenceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
