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
final class DataCloudflareWeb3Hostname extends Data {
  static const String tfType = 'cloudflare_web3_hostname';

  DataCloudflareWeb3Hostname({
    required super.localName,
    required TfArg<String> identifier,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identifier': identifier,
           if (zoneId != null) 'zone_id': zoneId,
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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dnslink` attribute.
  TfRef<String> get dnslink => TfRef.attribute<String>(this, 'dnslink');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');
}
