// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_logpush_dataset_field`.
const Set<String> _cloudflareLogpushDatasetFieldSensitive = <String>{};

/// Factory wrapper for `cloudflare_logpush_dataset_field`.
///
/// Accepted Permissions
///
/// - `Logs Read`
final class DataCloudflareLogpushDatasetField extends Data {
  static const String tfType = 'cloudflare_logpush_dataset_field';

  DataCloudflareLogpushDatasetField({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? datasetId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (datasetId != null) 'dataset_id': datasetId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLogpushDatasetFieldSensitive;
}
