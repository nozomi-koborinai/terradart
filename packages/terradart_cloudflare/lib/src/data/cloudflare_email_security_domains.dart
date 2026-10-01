// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_domains`.
const Set<String> _cloudflareEmailSecurityDomainsSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_security_domains`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityDomains extends Data {
  static const String tfType = 'cloudflare_email_security_domains';

  DataCloudflareEmailSecurityDomains({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? activeDeliveryMode,
    TfArg<String>? allowedDeliveryMode,
    TfArg<String>? direction,
    TfArg<List<String>>? domain,
    TfArg<String>? integrationId,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<String>? search,
    TfArg<String>? status,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'active_delivery_mode': ?activeDeliveryMode,
           'allowed_delivery_mode': ?allowedDeliveryMode,
           'direction': ?direction,
           'domain': ?domain,
           'integration_id': ?integrationId,
           'max_items': ?maxItems,
           'order': ?order,
           'search': ?search,
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailSecurityDomainsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `active_delivery_mode` attribute.
  TfRef<String> get activeDeliveryMode =>
      TfRef.attribute<String>(this, 'active_delivery_mode');

  /// Reference to `allowed_delivery_mode` attribute.
  TfRef<String> get allowedDeliveryMode =>
      TfRef.attribute<String>(this, 'allowed_delivery_mode');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `domain` attribute.
  TfRef<List<String>> get domain =>
      TfRef.attribute<List<String>>(this, 'domain');

  /// Reference to `integration_id` attribute.
  TfRef<String> get integrationId =>
      TfRef.attribute<String>(this, 'integration_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
