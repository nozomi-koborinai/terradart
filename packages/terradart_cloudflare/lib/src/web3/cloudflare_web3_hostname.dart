// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_web3_hostname`.
const Set<String> _cloudflareWeb3HostnameSensitive = <String>{};

/// Web3 Hostname enum for `target`.
enum Web3HostnameTarget implements TerraformEnum {
  ethereum('ethereum'),
  ipfs('ipfs'),
  ipfsUniversalPath('ipfs_universal_path');

  const Web3HostnameTarget(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_web3_hostname`.
///
/// Accepted Permissions
///
/// - `Web3 Hostnames Read` - `Web3 Hostnames Write`
final class CloudflareWeb3Hostname extends Resource {
  static const String tfType = 'cloudflare_web3_hostname';

  CloudflareWeb3Hostname(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? dnslink,
    required TfArg<String> name,
    required TfArg<Web3HostnameTarget> target,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'dnslink': ?dnslink,
           'name': name,
           'target': target,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWeb3HostnameSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWeb3Hostname>`.
  RefTo<CloudflareWeb3Hostname> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dnslink` attribute.
  TfRef<String> get dnslink => TfRef.attribute<String>(this, 'dnslink');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
