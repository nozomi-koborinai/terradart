// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../web3/cloudflare_web3_hostname.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'identifier': identifier, 'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWeb3HostnameSensitive;

  /// A reference to the `cloudflare_web3_hostname` this data source reads, for
  /// arguments typed `RefTo<CloudflareWeb3Hostname>`.
  RefTo<CloudflareWeb3Hostname> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `identifier` attribute.
  TfRef<String> get identifierRef =>
      TfRef.attribute<String>(this, 'identifier');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
