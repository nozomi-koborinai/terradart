// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_routing_address`.
const Set<String> _cloudflareEmailRoutingAddressSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_routing_address`.
///
/// Accepted Permissions
///
/// - `Email Routing Addresses Read` - `Email Routing Addresses Write`
final class CloudflareEmailRoutingAddress extends Resource {
  static const String tfType = 'cloudflare_email_routing_address';

  CloudflareEmailRoutingAddress({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> email,
    TfArg<String>? status,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'email': email,
           if (status != null) 'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingAddressSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');

  /// Reference to `verified` attribute.
  TfRef<String> get verified => TfRef.attribute<String>(this, 'verified');
}
