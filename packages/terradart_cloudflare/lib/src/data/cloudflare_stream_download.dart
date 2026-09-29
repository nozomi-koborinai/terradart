// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../stream/cloudflare_stream_download.dart';

/// Sensitive field paths for `cloudflare_stream_download`.
const Set<String> _cloudflareStreamDownloadSensitive = <String>{};

/// Factory wrapper for `cloudflare_stream_download`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class DataCloudflareStreamDownload extends Data {
  static const String tfType = 'cloudflare_stream_download';

  DataCloudflareStreamDownload({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> identifier,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'identifier': identifier},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamDownloadSensitive;

  /// A reference to the `cloudflare_stream_download` this data source reads, for
  /// arguments typed `RefTo<CloudflareStreamDownload>`.
  RefTo<CloudflareStreamDownload> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member
}
