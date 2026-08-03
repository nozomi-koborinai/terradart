// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_quotas_quota_adjuster_settings`.
const Set<String> _googleCloudQuotasQuotaAdjusterSettingsSensitive = <String>{};

/// Cloud Quotas Quota Adjuster Settings Effective enum for `effective_enablement`.
enum CloudQuotasQuotaAdjusterSettingsEffectiveEnablement
    implements TerraformEnum {
  defaultCase('DEFAULT'),
  enabled('ENABLED'),
  disabled('DISABLED');

  const CloudQuotasQuotaAdjusterSettingsEffectiveEnablement(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Cloud Quotas Quota Adjuster Settings enum for `enablement`.
enum CloudQuotasQuotaAdjusterSettingsEnablement implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const CloudQuotasQuotaAdjusterSettingsEnablement(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_cloud_quotas_quota_adjuster_settings`.
///
/// QuotaAdjusterSettings resource represents your quota adjuster settings for a
/// particular project. When enabled, the quota adjuster monitors your usage for
/// the specified resources and issues quota adjustment requests when resource
/// usage approaches its quota value.
///
/// Cloud Quotas **quota adjuster settings** — project-singleton toggle
/// for automatic quota adjustment (`ENABLED` / `DISABLED`).
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU after MCP
/// lookup (`list_services` Cloud Quotas / Quota → empty). billing-behavior:
/// settings metadata — no existence/hourly charge. Provider MM sets
/// `exclude_delete: true` (create is PATCH on a pre-existing singleton) —
/// Terraform **cannot destroy** it, so apply-smoke would strand project
/// state forever (`never_apply`). Ships without a quickstart
/// (`tool/example_debt.yaml`).
final class GoogleCloudQuotasQuotaAdjusterSettings extends Resource {
  static const String tfType = 'google_cloud_quotas_quota_adjuster_settings';

  GoogleCloudQuotasQuotaAdjusterSettings({
    required super.localName,
    required TfArg<CloudQuotasQuotaAdjusterSettingsEnablement> enablement,
    TfArg<String>? parent,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enablement': enablement,
           if (parent != null) 'parent': parent,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudQuotasQuotaAdjusterSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_container` attribute.
  TfRef<String> get effectiveContainer =>
      TfRef.attribute<String>(this, 'effective_container');

  /// Reference to `effective_enablement` attribute.
  TfRef<String> get effectiveEnablement =>
      TfRef.attribute<String>(this, 'effective_enablement');

  /// Reference to `inherited` attribute.
  TfRef<bool> get inherited => TfRef.attribute<bool>(this, 'inherited');

  /// Reference to `inherited_from` attribute.
  TfRef<String> get inheritedFrom =>
      TfRef.attribute<String>(this, 'inherited_from');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
