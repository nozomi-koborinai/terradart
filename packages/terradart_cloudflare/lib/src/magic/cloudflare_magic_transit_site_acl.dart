// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_transit_site_acl`.
const Set<String> _cloudflareMagicTransitSiteAclSensitive = <String>{};

/// Magic Transit Site Acl enum for `protocols`.
enum MagicTransitSiteAclProtocols implements TerraformEnum {
  tcp('tcp'),
  udp('udp'),
  icmp('icmp');

  const MagicTransitSiteAclProtocols(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `lan_1` block of
/// `cloudflare_magic_transit_site_acl` (derived from provider schema).
@immutable
final class MagicTransitSiteAclLan1 {
  const MagicTransitSiteAclLan1({
    required this.lanId,
    this.lanName,
    this.portRanges,
    this.ports,
    this.subnets,
  });

  final TfArg<String> lanId;

  final TfArg<String>? lanName;

  final TfArg<List<String>>? portRanges;

  final TfArg<List<num>>? ports;

  final TfArg<List<String>>? subnets;

  Map<String, Object?> encode() => {
    'lan_id': lanId.toTfJson(),
    'lan_name': ?lanName?.toTfJson(),
    'port_ranges': ?portRanges?.toTfJson(),
    'ports': ?ports?.toTfJson(),
    'subnets': ?subnets?.toTfJson(),
  };
}

/// Typed helper for the `lan_2` block of
/// `cloudflare_magic_transit_site_acl` (derived from provider schema).
@immutable
final class MagicTransitSiteAclLan2 {
  const MagicTransitSiteAclLan2({
    required this.lanId,
    this.lanName,
    this.portRanges,
    this.ports,
    this.subnets,
  });

  final TfArg<String> lanId;

  final TfArg<String>? lanName;

  final TfArg<List<String>>? portRanges;

  final TfArg<List<num>>? ports;

  final TfArg<List<String>>? subnets;

  Map<String, Object?> encode() => {
    'lan_id': lanId.toTfJson(),
    'lan_name': ?lanName?.toTfJson(),
    'port_ranges': ?portRanges?.toTfJson(),
    'ports': ?ports?.toTfJson(),
    'subnets': ?subnets?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_magic_transit_site_acl`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class CloudflareMagicTransitSiteAcl extends Resource {
  static const String tfType = 'cloudflare_magic_transit_site_acl';

  CloudflareMagicTransitSiteAcl({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? description,
    TfArg<bool>? forwardLocally,
    required TfArg<String> name,
    List<TfArg<MagicTransitSiteAclProtocols>>? protocols,
    required TfArg<String> siteId,
    TfArg<bool>? unidirectional,
    required MagicTransitSiteAclLan1 lan1,
    required MagicTransitSiteAclLan2 lan2,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'description': ?description,
           'forward_locally': ?forwardLocally,
           'name': name,
           if (protocols != null)
             'protocols': TfArg.literal([
               for (final e in protocols) e.toTfJson(),
             ]),
           'site_id': siteId,
           'unidirectional': ?unidirectional,
           'lan_1': TfArg.literal(lan1.encode()),
           'lan_2': TfArg.literal(lan2.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSiteAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareMagicTransitSiteAcl>`.
  RefTo<CloudflareMagicTransitSiteAcl> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `forward_locally` attribute.
  TfRef<bool> get forwardLocally =>
      TfRef.attribute<bool>(this, 'forward_locally');

  /// Reference to `protocols` attribute.
  TfRef<List<String>> get protocols =>
      TfRef.attribute<List<String>>(this, 'protocols');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `unidirectional` attribute.
  TfRef<bool> get unidirectional =>
      TfRef.attribute<bool>(this, 'unidirectional');
}
