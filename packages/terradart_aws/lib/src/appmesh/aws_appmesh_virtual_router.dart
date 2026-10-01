// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appmesh_virtual_router`.
const Set<String> _awsAppmeshVirtualRouterSensitive = <String>{};

/// Typed helper for the `spec` block of
/// `aws_appmesh_virtual_router` (derived from provider schema).
@immutable
final class AppmeshVirtualRouterSpec {
  const AppmeshVirtualRouterSpec({this.listener});

  final List<AppmeshVirtualRouterListener>? listener;

  Map<String, Object?> encode() => {
    if (listener != null) 'listener': [for (final e in listener!) e.encode()],
  };
}

/// Typed helper for the `spec.listener` block of
/// `aws_appmesh_virtual_router` (derived from provider schema).
@immutable
final class AppmeshVirtualRouterListener {
  const AppmeshVirtualRouterListener({required this.portMapping});

  final AppmeshVirtualRouterPortMapping portMapping;

  Map<String, Object?> encode() => {'port_mapping': portMapping.encode()};
}

/// Typed helper for the `spec.listener.port_mapping` block of
/// `aws_appmesh_virtual_router` (derived from provider schema).
@immutable
final class AppmeshVirtualRouterPortMapping {
  const AppmeshVirtualRouterPortMapping({
    required this.port,
    required this.protocol,
  });

  final TfArg<num> port;

  final TfArg<AppmeshVirtualRouterProtocol> protocol;

  Map<String, Object?> encode() => {
    'port': port.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
enum AppmeshVirtualRouterProtocol implements TerraformEnum {
  http('http'),
  tcp('tcp'),
  http2('http2'),
  grpc('grpc');

  const AppmeshVirtualRouterProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_appmesh_virtual_router`.
final class AwsAppmeshVirtualRouter extends Resource {
  static const String tfType = 'aws_appmesh_virtual_router';

  AwsAppmeshVirtualRouter({
    required super.localName,
    required TfArg<String> meshName,
    TfArg<String>? meshOwner,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required AppmeshVirtualRouterSpec spec,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'mesh_name': meshName,
           'mesh_owner': ?meshOwner,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshVirtualRouterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppmeshVirtualRouter>`.
  RefTo<AwsAppmeshVirtualRouter> get ref => RefTo.of(this);

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

  /// Reference to `resource_owner` attribute.
  TfRef<String> get resourceOwner =>
      TfRef.attribute<String>(this, 'resource_owner');

  /// Reference to `mesh_name` attribute.
  TfRef<String> get meshNameRef => TfRef.attribute<String>(this, 'mesh_name');

  /// Reference to `mesh_owner` attribute.
  TfRef<String> get meshOwnerRef => TfRef.attribute<String>(this, 'mesh_owner');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
