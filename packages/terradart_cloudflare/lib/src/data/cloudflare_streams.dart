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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `after` attribute.
  TfRef<String> get afterRef => TfRef.attribute<String>(this, 'after');

  /// Reference to `asc` attribute.
  TfRef<bool> get ascRef => TfRef.attribute<bool>(this, 'asc');

  /// Reference to `before` attribute.
  TfRef<String> get beforeRef => TfRef.attribute<String>(this, 'before');

  /// Reference to `creator` attribute.
  TfRef<String> get creatorRef => TfRef.attribute<String>(this, 'creator');

  /// Reference to `end` attribute.
  TfRef<String> get endRef => TfRef.attribute<String>(this, 'end');

  /// Reference to `include_counts` attribute.
  TfRef<bool> get includeCountsRef =>
      TfRef.attribute<bool>(this, 'include_counts');

  /// Reference to `limit` attribute.
  TfRef<num> get limitRef => TfRef.attribute<num>(this, 'limit');

  /// Reference to `live_input_id` attribute.
  TfRef<String> get liveInputIdRef =>
      TfRef.attribute<String>(this, 'live_input_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `search` attribute.
  TfRef<String> get searchRef => TfRef.attribute<String>(this, 'search');

  /// Reference to `start` attribute.
  TfRef<String> get startRef => TfRef.attribute<String>(this, 'start');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');

  /// Reference to `video_name` attribute.
  TfRef<String> get videoNameRef => TfRef.attribute<String>(this, 'video_name');
}
