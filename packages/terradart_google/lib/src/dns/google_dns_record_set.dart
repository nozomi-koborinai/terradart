// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../dns/google_dns_managed_zone.dart' show GoogleDnsManagedZone;

/// Sensitive field paths for `google_dns_record_set`.
const Set<String> _googleDnsRecordSetSensitive = <String>{};

/// DNS resource record type for `google_dns_record_set.type`.
extension type const DnsRecordSetType._(TfArg<String> _)
    implements TfArg<String> {
  DnsRecordSetType.variable(String name) : this._(TfArg.variable(name));
  DnsRecordSetType.expression(String template)
    : this._(TfArg.expression(template));
  const DnsRecordSetType.arg(TfArg<String> arg) : this._(arg);

  static const a = DnsRecordSetType._(TfArgLiteral('A'));
  static const aaaa = DnsRecordSetType._(TfArgLiteral('AAAA'));
  static const cname = DnsRecordSetType._(TfArgLiteral('CNAME'));
  static const mx = DnsRecordSetType._(TfArgLiteral('MX'));
  static const txt = DnsRecordSetType._(TfArgLiteral('TXT'));
  static const ns = DnsRecordSetType._(TfArgLiteral('NS'));
  static const soa = DnsRecordSetType._(TfArgLiteral('SOA'));
  static const ptr = DnsRecordSetType._(TfArgLiteral('PTR'));
  static const srv = DnsRecordSetType._(TfArgLiteral('SRV'));
  static const caa = DnsRecordSetType._(TfArgLiteral('CAA'));

  static const List<DnsRecordSetType> values = [
    a,
    aaaa,
    cname,
    mx,
    txt,
    ns,
    soa,
    ptr,
    srv,
    caa,
  ];
}

extension type const DnsRecordSetRoutingPolicyIlbIpProtocol._(TfArg<String> _)
    implements TfArg<String> {
  DnsRecordSetRoutingPolicyIlbIpProtocol.variable(String name)
    : this._(TfArg.variable(name));
  DnsRecordSetRoutingPolicyIlbIpProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const DnsRecordSetRoutingPolicyIlbIpProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const tcp = DnsRecordSetRoutingPolicyIlbIpProtocol._(
    TfArgLiteral('tcp'),
  );
  static const udp = DnsRecordSetRoutingPolicyIlbIpProtocol._(
    TfArgLiteral('udp'),
  );

  static const List<DnsRecordSetRoutingPolicyIlbIpProtocol> values = [tcp, udp];
}

extension type const DnsRecordSetRoutingPolicyIlbType._(TfArg<String> _)
    implements TfArg<String> {
  DnsRecordSetRoutingPolicyIlbType.variable(String name)
    : this._(TfArg.variable(name));
  DnsRecordSetRoutingPolicyIlbType.expression(String template)
    : this._(TfArg.expression(template));
  const DnsRecordSetRoutingPolicyIlbType.arg(TfArg<String> arg) : this._(arg);

  static const regionalL4ilb = DnsRecordSetRoutingPolicyIlbType._(
    TfArgLiteral('regionalL4ilb'),
  );
  static const regionalL7ilb = DnsRecordSetRoutingPolicyIlbType._(
    TfArgLiteral('regionalL7ilb'),
  );
  static const globalL7ilb = DnsRecordSetRoutingPolicyIlbType._(
    TfArgLiteral('globalL7ilb'),
  );

  static const List<DnsRecordSetRoutingPolicyIlbType> values = [
    regionalL4ilb,
    regionalL7ilb,
    globalL7ilb,
  ];
}

@immutable
class DnsRecordSetRoutingPolicyInternalLoadBalancer {
  const DnsRecordSetRoutingPolicyInternalLoadBalancer({
    required this.ipAddress,
    this.ipProtocol,
    this.loadBalancerType,
    this.networkUrl,
    this.port,
    this.project,
    this.region,
  });

  final TfArg<String> ipAddress;
  final DnsRecordSetRoutingPolicyIlbIpProtocol? ipProtocol;
  final DnsRecordSetRoutingPolicyIlbType? loadBalancerType;
  final TfArg<String>? networkUrl;
  final TfArg<String>? port;
  final TfArg<String>? project;
  final TfArg<String>? region;

  Map<String, Object?> toArgMap() => {
    'ip_address': ipAddress.toTfJson(),
    if (ipProtocol != null) 'ip_protocol': ipProtocol!.toTfJson(),
    if (loadBalancerType != null)
      'load_balancer_type': loadBalancerType!.toTfJson(),
    if (networkUrl != null) 'network_url': networkUrl!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (project != null) 'project': project!.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
  };
}

@immutable
class DnsRecordSetRoutingPolicyHealthCheckedTargets {
  const DnsRecordSetRoutingPolicyHealthCheckedTargets({
    this.internalLoadBalancers,
  });

  final List<DnsRecordSetRoutingPolicyInternalLoadBalancer>?
  internalLoadBalancers;

  Map<String, Object?> toArgMap() => {
    if (internalLoadBalancers != null)
      'internal_load_balancers': internalLoadBalancers!
          .map((b) => b.toArgMap())
          .toList(),
  };
}

@immutable
class DnsRecordSetRoutingPolicyGeoRouting {
  const DnsRecordSetRoutingPolicyGeoRouting({
    this.healthCheckedTargets,
    this.location,
  });

  final DnsRecordSetRoutingPolicyHealthCheckedTargets? healthCheckedTargets;
  final TfArg<String>? location;

  Map<String, Object?> toArgMap() => {
    if (healthCheckedTargets != null)
      'health_checked_targets': [healthCheckedTargets!.toArgMap()],
    if (location != null) 'location': location!.toTfJson(),
  };
}

@immutable
class DnsRecordSetRoutingPolicyWrrRouting {
  const DnsRecordSetRoutingPolicyWrrRouting({
    this.healthCheckedTargets,
    this.weight,
  });

  final DnsRecordSetRoutingPolicyHealthCheckedTargets? healthCheckedTargets;
  final TfArg<num>? weight;

  Map<String, Object?> toArgMap() => {
    if (healthCheckedTargets != null)
      'health_checked_targets': [healthCheckedTargets!.toArgMap()],
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

@immutable
class DnsRecordSetRoutingPolicyPrimaryBackupRouting {
  const DnsRecordSetRoutingPolicyPrimaryBackupRouting({
    this.primary,
    this.backupGeo,
  });

  final DnsRecordSetRoutingPolicyGeoRouting? primary;
  final DnsRecordSetRoutingPolicyGeoRouting? backupGeo;

  Map<String, Object?> toArgMap() => {
    if (primary != null) 'primary': [primary!.toArgMap()],
    if (backupGeo != null) 'backup_geo': [backupGeo!.toArgMap()],
  };
}

@immutable
class DnsRecordSetRoutingPolicy {
  const DnsRecordSetRoutingPolicy({this.geo, this.wrr, this.primaryBackup});

  final List<DnsRecordSetRoutingPolicyGeoRouting>? geo;
  final List<DnsRecordSetRoutingPolicyWrrRouting>? wrr;
  final DnsRecordSetRoutingPolicyPrimaryBackupRouting? primaryBackup;

  @internal
  Map<String, Object?> encode() => {
    if (geo != null) 'geo': geo!.map((g) => g.toArgMap()).toList(),
    if (wrr != null) 'wrr': wrr!.map((w) => w.toArgMap()).toList(),
    if (primaryBackup != null) 'primary_backup': [primaryBackup!.toArgMap()],
  };
}

/// Factory wrapper for `google_dns_record_set`.
final class GoogleDnsRecordSet extends Resource {
  static const String tfType = 'google_dns_record_set';

  GoogleDnsRecordSet(
    super.localName, {
    required RefTo<GoogleDnsManagedZone> managedZone,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<List<String>>? rrdatas,
    TfArg<num>? ttl,
    required DnsRecordSetType type,
    DnsRecordSetRoutingPolicy? routingPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_zone': managedZone.encodeAs('name'),
           'name': name,
           'project': ?project,
           'rrdatas': ?rrdatas,
           'ttl': ?ttl,
           'type': type,
           if (routingPolicy != null)
             'routing_policy': TfArg.literal([routingPolicy.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsRecordSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDnsRecordSet>`.
  RefTo<GoogleDnsRecordSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `managed_zone` attribute.
  TfRef<String> get managedZone =>
      TfRef.attribute<String>(this, 'managed_zone');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `rrdatas` attribute.
  TfRef<List<String>> get rrdatas =>
      TfRef.attribute<List<String>>(this, 'rrdatas');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
