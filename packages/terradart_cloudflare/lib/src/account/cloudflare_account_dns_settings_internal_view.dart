// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_dns_settings_internal_view`.
const Set<String> _cloudflareAccountDnsSettingsInternalViewSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_account_dns_settings_internal_view`.
///
/// Accepted Permissions
///
/// - `DNS View Read` - `DNS View Write`
final class CloudflareAccountDnsSettingsInternalView extends Resource {
  static const String tfType = 'cloudflare_account_dns_settings_internal_view';

  CloudflareAccountDnsSettingsInternalView({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> name,
    required TfArg<List<String>> zones,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'name': name, 'zones': zones},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAccountDnsSettingsInternalViewSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `modified_time` attribute.
  TfRef<String> get modifiedTime =>
      TfRef.attribute<String>(this, 'modified_time');
}
