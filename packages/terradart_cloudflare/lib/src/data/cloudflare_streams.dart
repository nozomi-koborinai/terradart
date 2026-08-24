// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? accountId,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (after != null) 'after': after,
           if (asc != null) 'asc': asc,
           if (before != null) 'before': before,
           if (creator != null) 'creator': creator,
           if (end != null) 'end': end,
           if (includeCounts != null) 'include_counts': includeCounts,
           if (limit != null) 'limit': limit,
           if (liveInputId != null) 'live_input_id': liveInputId,
           if (maxItems != null) 'max_items': maxItems,
           if (name != null) 'name': name,
           if (search != null) 'search': search,
           if (start != null) 'start': start,
           if (status != null) 'status': status,
           if (type != null) 'type': type,
           if (videoName != null) 'video_name': videoName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
