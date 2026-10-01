// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appmesh_mesh`.
const Set<String> _awsAppmeshMeshSensitive = <String>{};

/// Typed helper for the `spec` block of
/// `aws_appmesh_mesh` (derived from provider schema).
@immutable
final class AppmeshMeshSpec {
  const AppmeshMeshSpec({this.egressFilter, this.serviceDiscovery});

  final AppmeshMeshEgressFilter? egressFilter;

  final AppmeshMeshServiceDiscovery? serviceDiscovery;

  Map<String, Object?> encode() => {
    'egress_filter': ?egressFilter?.encode(),
    'service_discovery': ?serviceDiscovery?.encode(),
  };
}

/// Typed helper for the `spec.egress_filter` block of
/// `aws_appmesh_mesh` (derived from provider schema).
@immutable
final class AppmeshMeshEgressFilter {
  const AppmeshMeshEgressFilter({this.type});

  final AppmeshMeshType? type;

  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const AppmeshMeshType._(TfArg<String> _)
    implements TfArg<String> {
  AppmeshMeshType.variable(String name) : this._(TfArg.variable(name));
  AppmeshMeshType.expression(String template)
    : this._(TfArg.expression(template));
  const AppmeshMeshType.arg(TfArg<String> arg) : this._(arg);

  static const allowAll = AppmeshMeshType._(TfArgLiteral('ALLOW_ALL'));
  static const dropAll = AppmeshMeshType._(TfArgLiteral('DROP_ALL'));

  static const List<AppmeshMeshType> values = [allowAll, dropAll];
}

/// Typed helper for the `spec.service_discovery` block of
/// `aws_appmesh_mesh` (derived from provider schema).
@immutable
final class AppmeshMeshServiceDiscovery {
  const AppmeshMeshServiceDiscovery({this.ipPreference});

  final AppmeshMeshIpPreference? ipPreference;

  Map<String, Object?> encode() => {'ip_preference': ?ipPreference?.toTfJson()};
}

/// `ip_preference` — derived from the provider schema description.
extension type const AppmeshMeshIpPreference._(TfArg<String> _)
    implements TfArg<String> {
  AppmeshMeshIpPreference.variable(String name) : this._(TfArg.variable(name));
  AppmeshMeshIpPreference.expression(String template)
    : this._(TfArg.expression(template));
  const AppmeshMeshIpPreference.arg(TfArg<String> arg) : this._(arg);

  static const ipv6Preferred = AppmeshMeshIpPreference._(
    TfArgLiteral('IPv6_PREFERRED'),
  );
  static const ipv4Preferred = AppmeshMeshIpPreference._(
    TfArgLiteral('IPv4_PREFERRED'),
  );
  static const ipv4Only = AppmeshMeshIpPreference._(TfArgLiteral('IPv4_ONLY'));
  static const ipv6Only = AppmeshMeshIpPreference._(TfArgLiteral('IPv6_ONLY'));

  static const List<AppmeshMeshIpPreference> values = [
    ipv6Preferred,
    ipv4Preferred,
    ipv4Only,
    ipv6Only,
  ];
}

/// Factory wrapper for `aws_appmesh_mesh`.
final class AwsAppmeshMesh extends Resource {
  static const String tfType = 'aws_appmesh_mesh';

  AwsAppmeshMesh(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    AppmeshMeshSpec? spec,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (spec != null) 'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshMeshSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppmeshMesh>`.
  RefTo<AwsAppmeshMesh> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `last_updated_date` attribute.
  TfRef<String> get lastUpdatedDate =>
      TfRef.attribute<String>(this, 'last_updated_date');

  /// Reference to `mesh_owner` attribute.
  TfRef<String> get meshOwner => TfRef.attribute<String>(this, 'mesh_owner');

  /// Reference to `resource_owner` attribute.
  TfRef<String> get resourceOwner =>
      TfRef.attribute<String>(this, 'resource_owner');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
