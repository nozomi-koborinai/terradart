// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_custom_pages`.
const Set<String> _cloudflareCustomPagesSensitive = <String>{};

/// Factory wrapper for `cloudflare_custom_pages`.
///
/// Accepted Permissions
///
/// - `Account Custom Pages Read` - `Account Custom Pages Write` - `Account
/// Settings Read` - `Account Settings Write` - `Zero Trust: PII Read`
final class CloudflareCustomPages extends Resource {
  static const String tfType = 'cloudflare_custom_pages';

  CloudflareCustomPages({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> identifier,
    required TfArg<String> state,
    TfArg<String>? url,
    TfArg<String>? zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'identifier': identifier,
           'state': state,
           if (url != null) 'url': url,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomPagesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `preview_target` attribute.
  TfRef<String> get previewTarget =>
      TfRef.attribute<String>(this, 'preview_target');

  /// Reference to `required_tokens` attribute.
  TfRef<List<String>> get requiredTokens =>
      TfRef.attribute<List<String>>(this, 'required_tokens');
}
