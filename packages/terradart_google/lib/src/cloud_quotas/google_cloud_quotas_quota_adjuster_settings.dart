// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_quotas_quota_adjuster_settings`.
const Set<String> _googleCloudQuotasQuotaAdjusterSettingsSensitive = <String>{};

/// Cloud Quotas Quota Adjuster Settings Effective enum for `effective_enablement`.
extension type const CloudQuotasQuotaAdjusterSettingsEffectiveEnablement._(
  TfArg<String> _
) implements TfArg<String> {
  CloudQuotasQuotaAdjusterSettingsEffectiveEnablement.variable(String name)
    : this._(TfArg.variable(name));
  CloudQuotasQuotaAdjusterSettingsEffectiveEnablement.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CloudQuotasQuotaAdjusterSettingsEffectiveEnablement.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const defaultCase =
      CloudQuotasQuotaAdjusterSettingsEffectiveEnablement._(
        TfArgLiteral('DEFAULT'),
      );
  static const enabled = CloudQuotasQuotaAdjusterSettingsEffectiveEnablement._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = CloudQuotasQuotaAdjusterSettingsEffectiveEnablement._(
    TfArgLiteral('DISABLED'),
  );

  static const List<CloudQuotasQuotaAdjusterSettingsEffectiveEnablement>
  values = [defaultCase, enabled, disabled];
}

/// Cloud Quotas Quota Adjuster Settings enum for `enablement`.
extension type const CloudQuotasQuotaAdjusterSettingsEnablement._(
  TfArg<String> _
) implements TfArg<String> {
  CloudQuotasQuotaAdjusterSettingsEnablement.variable(String name)
    : this._(TfArg.variable(name));
  CloudQuotasQuotaAdjusterSettingsEnablement.expression(String template)
    : this._(TfArg.expression(template));
  const CloudQuotasQuotaAdjusterSettingsEnablement.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = CloudQuotasQuotaAdjusterSettingsEnablement._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = CloudQuotasQuotaAdjusterSettingsEnablement._(
    TfArgLiteral('DISABLED'),
  );

  static const List<CloudQuotasQuotaAdjusterSettingsEnablement> values = [
    enabled,
    disabled,
  ];
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

  GoogleCloudQuotasQuotaAdjusterSettings(
    super.localName, {
    required CloudQuotasQuotaAdjusterSettingsEnablement enablement,
    TfArg<String>? parent,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'enablement': enablement, 'parent': ?parent},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudQuotasQuotaAdjusterSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudQuotasQuotaAdjusterSettings>`.
  RefTo<GoogleCloudQuotasQuotaAdjusterSettings> get ref => RefTo.of(this);

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

  /// Reference to `enablement` attribute.
  TfRef<String> get enablement => TfRef.attribute<String>(this, 'enablement');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
