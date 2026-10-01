// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appmesh_virtual_service`.
const Set<String> _awsAppmeshVirtualServiceSensitive = <String>{};

/// Typed helper for the `spec` block of
/// `aws_appmesh_virtual_service` (derived from provider schema).
@immutable
final class AppmeshVirtualServiceSpec {
  const AppmeshVirtualServiceSpec({this.provider});

  final AppmeshVirtualServiceProvider? provider;

  Map<String, Object?> encode() => {'provider': ?provider?.encode()};
}

/// At most one of `virtual_node`, `virtual_router` on the `spec.provider` block of `aws_appmesh_virtual_service`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.virtualNode(...)`.
sealed class AppmeshVirtualServiceProvider {
  const AppmeshVirtualServiceProvider();

  /// Sets `virtual_node`.
  const factory AppmeshVirtualServiceProvider.virtualNode(
    AppmeshVirtualServiceVirtualNode virtualNode,
  ) = AppmeshVirtualServiceProviderVirtualNode;

  /// Sets `virtual_router`.
  const factory AppmeshVirtualServiceProvider.virtualRouter(
    AppmeshVirtualServiceVirtualRouter virtualRouter,
  ) = AppmeshVirtualServiceProviderVirtualRouter;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [AppmeshVirtualServiceProvider.virtualNode] choice: sets `virtual_node`.
final class AppmeshVirtualServiceProviderVirtualNode
    extends AppmeshVirtualServiceProvider {
  const AppmeshVirtualServiceProviderVirtualNode(this.virtualNode);

  final AppmeshVirtualServiceVirtualNode virtualNode;

  @override
  String get blockKey => 'virtual_node';

  @override
  Map<String, Object?> encode() => {'virtual_node': virtualNode.encode()};
}

/// The [AppmeshVirtualServiceProvider.virtualRouter] choice: sets `virtual_router`.
final class AppmeshVirtualServiceProviderVirtualRouter
    extends AppmeshVirtualServiceProvider {
  const AppmeshVirtualServiceProviderVirtualRouter(this.virtualRouter);

  final AppmeshVirtualServiceVirtualRouter virtualRouter;

  @override
  String get blockKey => 'virtual_router';

  @override
  Map<String, Object?> encode() => {'virtual_router': virtualRouter.encode()};
}

/// Typed helper for the `spec.provider.virtual_node` block of
/// `aws_appmesh_virtual_service` (derived from provider schema).
@immutable
final class AppmeshVirtualServiceVirtualNode {
  const AppmeshVirtualServiceVirtualNode({required this.virtualNodeName});

  final TfArg<String> virtualNodeName;

  Map<String, Object?> encode() => {
    'virtual_node_name': virtualNodeName.toTfJson(),
  };
}

/// Typed helper for the `spec.provider.virtual_router` block of
/// `aws_appmesh_virtual_service` (derived from provider schema).
@immutable
final class AppmeshVirtualServiceVirtualRouter {
  const AppmeshVirtualServiceVirtualRouter({required this.virtualRouterName});

  final TfArg<String> virtualRouterName;

  Map<String, Object?> encode() => {
    'virtual_router_name': virtualRouterName.toTfJson(),
  };
}

/// Factory wrapper for `aws_appmesh_virtual_service`.
final class AwsAppmeshVirtualService extends Resource {
  static const String tfType = 'aws_appmesh_virtual_service';

  AwsAppmeshVirtualService({
    required super.localName,
    required TfArg<String> meshName,
    TfArg<String>? meshOwner,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required AppmeshVirtualServiceSpec spec,
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
  Set<String> get sensitiveFields => _awsAppmeshVirtualServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppmeshVirtualService>`.
  RefTo<AwsAppmeshVirtualService> get ref => RefTo.of(this);

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

  /// Reference to `resource_owner` attribute.
  TfRef<String> get resourceOwner =>
      TfRef.attribute<String>(this, 'resource_owner');

  /// Reference to `mesh_name` attribute.
  TfRef<String> get meshName => TfRef.attribute<String>(this, 'mesh_name');

  /// Reference to `mesh_owner` attribute.
  TfRef<String> get meshOwner => TfRef.attribute<String>(this, 'mesh_owner');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
