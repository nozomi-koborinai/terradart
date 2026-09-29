// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../stream/cloudflare_stream_caption_language.dart';

/// Sensitive field paths for `cloudflare_stream_caption_language`.
const Set<String> _cloudflareStreamCaptionLanguageSensitive = <String>{};

/// Factory wrapper for `cloudflare_stream_caption_language`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class DataCloudflareStreamCaptionLanguage extends Data {
  static const String tfType = 'cloudflare_stream_caption_language';

  DataCloudflareStreamCaptionLanguage({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> identifier,
    required TfArg<String> language,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'identifier': identifier,
           'language': language,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamCaptionLanguageSensitive;

  /// A reference to the `cloudflare_stream_caption_language` this data source reads, for
  /// arguments typed `RefTo<CloudflareStreamCaptionLanguage>`.
  // ignore: invalid_use_of_internal_member
  RefTo<CloudflareStreamCaptionLanguage> get ref => RefTo.read(this);

  /// Reference to `generated` attribute.
  TfRef<bool> get generated => TfRef.attribute<bool>(this, 'generated');

  /// Reference to `label` attribute.
  TfRef<String> get label => TfRef.attribute<String>(this, 'label');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
