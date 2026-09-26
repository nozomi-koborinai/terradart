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

  final AppmeshVirtualServiceSpecProvider? provider;

  Map<String, Object?> encode() => {
    if (provider != null) 'provider': provider!.encode(),
  };
}

/// Typed helper for the `spec.provider` block of
/// `aws_appmesh_virtual_service` (derived from provider schema).
@immutable
final class AppmeshVirtualServiceSpecProvider {
  const AppmeshVirtualServiceSpecProvider({
    this.virtualNode,
    this.virtualRouter,
  });

  final AppmeshVirtualServiceSpecProviderVirtualNode? virtualNode;

  final AppmeshVirtualServiceSpecProviderVirtualRouter? virtualRouter;

  Map<String, Object?> encode() => {
    if (virtualNode != null) 'virtual_node': virtualNode!.encode(),
    if (virtualRouter != null) 'virtual_router': virtualRouter!.encode(),
  };
}

/// Typed helper for the `spec.provider.virtual_node` block of
/// `aws_appmesh_virtual_service` (derived from provider schema).
@immutable
final class AppmeshVirtualServiceSpecProviderVirtualNode {
  const AppmeshVirtualServiceSpecProviderVirtualNode({
    required this.virtualNodeName,
  });

  final TfArg<String> virtualNodeName;

  Map<String, Object?> encode() => {
    'virtual_node_name': virtualNodeName.toTfJson(),
  };
}

/// Typed helper for the `spec.provider.virtual_router` block of
/// `aws_appmesh_virtual_service` (derived from provider schema).
@immutable
final class AppmeshVirtualServiceSpecProviderVirtualRouter {
  const AppmeshVirtualServiceSpecProviderVirtualRouter({
    required this.virtualRouterName,
  });

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
           if (meshOwner != null) 'mesh_owner': meshOwner,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshVirtualServiceSensitive;

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
}
