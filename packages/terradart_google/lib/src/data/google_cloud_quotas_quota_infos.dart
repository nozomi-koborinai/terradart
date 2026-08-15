// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_quotas_quota_infos`.
const Set<String> _googleCloudQuotasQuotaInfosSensitive = <String>{};

/// Factory wrapper for `google_cloud_quotas_quota_infos`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudQuotasQuotaInfos extends Data {
  static const String tfType = 'google_cloud_quotas_quota_infos';

  DataGoogleCloudQuotasQuotaInfos({
    required super.localName,
    required TfArg<String> parent,
    required TfArg<String> service,
  }) : super(
         terraformType: tfType,
         argMap: {'parent': parent, 'service': service},
       );

  @override
  Set<String> get sensitiveFields => _googleCloudQuotasQuotaInfosSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `quota_infos` attribute.
  TfRef<List<Map<String, Object?>>> get quotaInfos =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'quota_infos');
}
