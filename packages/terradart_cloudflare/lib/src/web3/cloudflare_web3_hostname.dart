// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_web3_hostname`.
const Set<String> _cloudflareWeb3HostnameSensitive = <String>{};

/// Factory wrapper for `cloudflare_web3_hostname`.
///
/// Accepted Permissions
///
/// - `Web3 Hostnames Read` - `Web3 Hostnames Write`
final class CloudflareWeb3Hostname extends Resource {
  static const String tfType = 'cloudflare_web3_hostname';

  CloudflareWeb3Hostname({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? dnslink,
    required TfArg<String> name,
    required TfArg<String> target,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (dnslink != null) 'dnslink': dnslink,
           'name': name,
           'target': target,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWeb3HostnameSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
