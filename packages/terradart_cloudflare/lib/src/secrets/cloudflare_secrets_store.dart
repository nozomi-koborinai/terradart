// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_secrets_store`.
const Set<String> _cloudflareSecretsStoreSensitive = <String>{};

/// Factory wrapper for `cloudflare_secrets_store`.
///
/// Accepted Permissions
///
/// - `Secrets Store Read` - `Secrets Store Write`
final class CloudflareSecretsStore extends Resource {
  static const String tfType = 'cloudflare_secrets_store';

  CloudflareSecretsStore({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSecretsStoreSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');
}
