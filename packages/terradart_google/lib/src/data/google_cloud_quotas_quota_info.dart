// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_quotas_quota_info`.
const Set<String> _googleCloudQuotasQuotaInfoSensitive = <String>{};

/// Factory wrapper for `google_cloud_quotas_quota_info`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudQuotasQuotaInfo extends Data {
  static const String tfType = 'google_cloud_quotas_quota_info';

  DataGoogleCloudQuotasQuotaInfo({
    required super.localName,
    required TfArg<String> parent,
    required TfArg<String> quotaId,
    required TfArg<String> service,
  }) : super(
         terraformType: tfType,
         argMap: {'parent': parent, 'quota_id': quotaId, 'service': service},
       );

  @override
  Set<String> get sensitiveFields => _googleCloudQuotasQuotaInfoSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `container_type` attribute.
  TfRef<String> get containerType =>
      TfRef.attribute<String>(this, 'container_type');

  /// Reference to `dimensions` attribute.
  TfRef<List<String>> get dimensions =>
      TfRef.attribute<List<String>>(this, 'dimensions');

  /// Reference to `dimensions_infos` attribute.
  TfRef<List<Map<String, Object?>>> get dimensionsInfos =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dimensions_infos');

  /// Reference to `is_concurrent` attribute.
  TfRef<bool> get isConcurrent => TfRef.attribute<bool>(this, 'is_concurrent');

  /// Reference to `is_fixed` attribute.
  TfRef<bool> get isFixed => TfRef.attribute<bool>(this, 'is_fixed');

  /// Reference to `is_precise` attribute.
  TfRef<bool> get isPrecise => TfRef.attribute<bool>(this, 'is_precise');

  /// Reference to `metric` attribute.
  TfRef<String> get metric => TfRef.attribute<String>(this, 'metric');

  /// Reference to `metric_display_name` attribute.
  TfRef<String> get metricDisplayName =>
      TfRef.attribute<String>(this, 'metric_display_name');

  /// Reference to `metric_unit` attribute.
  TfRef<String> get metricUnit => TfRef.attribute<String>(this, 'metric_unit');

  /// Reference to `quota_display_name` attribute.
  TfRef<String> get quotaDisplayName =>
      TfRef.attribute<String>(this, 'quota_display_name');

  /// Reference to `quota_increase_eligibility` attribute.
  TfRef<List<Map<String, Object?>>> get quotaIncreaseEligibility =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'quota_increase_eligibility',
      );

  /// Reference to `refresh_interval` attribute.
  TfRef<String> get refreshInterval =>
      TfRef.attribute<String>(this, 'refresh_interval');

  /// Reference to `service_request_quota_uri` attribute.
  TfRef<String> get serviceRequestQuotaUri =>
      TfRef.attribute<String>(this, 'service_request_quota_uri');
}
