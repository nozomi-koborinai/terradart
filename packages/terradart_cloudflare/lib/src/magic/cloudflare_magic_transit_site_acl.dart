// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_transit_site_acl`.
const Set<String> _cloudflareMagicTransitSiteAclSensitive = <String>{};

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

  final TfArg<List<Object?>>? portRanges;

  final TfArg<List<Object?>>? ports;

  final TfArg<List<Object?>>? subnets;

  Map<String, Object?> encode() => {
    'lan_id': lanId.toTfJson(),
    if (lanName != null) 'lan_name': lanName!.toTfJson(),
    if (portRanges != null) 'port_ranges': portRanges!.toTfJson(),
    if (ports != null) 'ports': ports!.toTfJson(),
    if (subnets != null) 'subnets': subnets!.toTfJson(),
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

  final TfArg<List<Object?>>? portRanges;

  final TfArg<List<Object?>>? ports;

  final TfArg<List<Object?>>? subnets;

  Map<String, Object?> encode() => {
    'lan_id': lanId.toTfJson(),
    if (lanName != null) 'lan_name': lanName!.toTfJson(),
    if (portRanges != null) 'port_ranges': portRanges!.toTfJson(),
    if (ports != null) 'ports': ports!.toTfJson(),
    if (subnets != null) 'subnets': subnets!.toTfJson(),
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
    required TfArg<String> accountId,
    TfArg<String>? description,
    TfArg<bool>? forwardLocally,
    required TfArg<String> name,
    TfArg<List<String>>? protocols,
    required TfArg<String> siteId,
    TfArg<bool>? unidirectional,
    required MagicTransitSiteAclLan1 lan1,
    required MagicTransitSiteAclLan2 lan2,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (description != null) 'description': description,
           if (forwardLocally != null) 'forward_locally': forwardLocally,
           'name': name,
           if (protocols != null) 'protocols': protocols,
           'site_id': siteId,
           if (unidirectional != null) 'unidirectional': unidirectional,
           'lan_1': TfArg.literal(lan1.encode()),
           'lan_2': TfArg.literal(lan2.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSiteAclSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
