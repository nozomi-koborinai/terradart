// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_streams`.
const Set<String> _cloudflareStreamsSensitive = <String>{};

/// Factory wrapper for `cloudflare_streams`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class DataCloudflareStreams extends Data {
  static const String tfType = 'cloudflare_streams';

  DataCloudflareStreams({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? after,
    TfArg<bool>? asc,
    TfArg<String>? before,
    TfArg<String>? creator,
    TfArg<String>? end,
    TfArg<bool>? includeCounts,
    TfArg<num>? limit,
    TfArg<String>? liveInputId,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? search,
    TfArg<String>? start,
    TfArg<String>? status,
    TfArg<String>? type,
    TfArg<String>? videoName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'after': ?after,
           'asc': ?asc,
           'before': ?before,
           'creator': ?creator,
           'end': ?end,
           'include_counts': ?includeCounts,
           'limit': ?limit,
           'live_input_id': ?liveInputId,
           'max_items': ?maxItems,
           'name': ?name,
           'search': ?search,
           'start': ?start,
           'status': ?status,
           'type': ?type,
           'video_name': ?videoName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
