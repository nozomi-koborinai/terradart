// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_stream_download`.
const Set<String> _cloudflareStreamDownloadSensitive = <String>{};

/// Factory wrapper for `cloudflare_stream_download`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class CloudflareStreamDownload extends Resource {
  static const String tfType = 'cloudflare_stream_download';

  CloudflareStreamDownload({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> identifier,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'identifier': identifier},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamDownloadSensitive;
}
