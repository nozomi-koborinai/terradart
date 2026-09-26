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

  final AppmeshMeshSpecEgressFilter? egressFilter;

  final AppmeshMeshSpecServiceDiscovery? serviceDiscovery;

  Map<String, Object?> encode() => {
    if (egressFilter != null) 'egress_filter': egressFilter!.encode(),
    if (serviceDiscovery != null)
      'service_discovery': serviceDiscovery!.encode(),
  };
}

/// Typed helper for the `spec.egress_filter` block of
/// `aws_appmesh_mesh` (derived from provider schema).
@immutable
final class AppmeshMeshSpecEgressFilter {
  const AppmeshMeshSpecEgressFilter({this.type});

  final TfArg<String>? type;

  Map<String, Object?> encode() => {if (type != null) 'type': type!.toTfJson()};
}

/// Typed helper for the `spec.service_discovery` block of
/// `aws_appmesh_mesh` (derived from provider schema).
@immutable
final class AppmeshMeshSpecServiceDiscovery {
  const AppmeshMeshSpecServiceDiscovery({this.ipPreference});

  final TfArg<String>? ipPreference;

  Map<String, Object?> encode() => {
    if (ipPreference != null) 'ip_preference': ipPreference!.toTfJson(),
  };
}

/// Factory wrapper for `aws_appmesh_mesh`.
final class AwsAppmeshMesh extends Resource {
  static const String tfType = 'aws_appmesh_mesh';

  AwsAppmeshMesh({
    required super.localName,
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
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (spec != null) 'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshMeshSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
