// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_stream_caption_language`.
const Set<String> _cloudflareStreamCaptionLanguageSensitive = <String>{};

/// Factory wrapper for `cloudflare_stream_caption_language`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class CloudflareStreamCaptionLanguage extends Resource {
  static const String tfType = 'cloudflare_stream_caption_language';

  CloudflareStreamCaptionLanguage({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? file,
    required TfArg<String> identifier,
    required TfArg<String> language,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (file != null) 'file': file,
           'identifier': identifier,
           'language': language,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamCaptionLanguageSensitive;

  /// Reference to `generated` attribute.
  TfRef<bool> get generated => TfRef.attribute<bool>(this, 'generated');

  /// Reference to `label` attribute.
  TfRef<String> get label => TfRef.attribute<String>(this, 'label');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
