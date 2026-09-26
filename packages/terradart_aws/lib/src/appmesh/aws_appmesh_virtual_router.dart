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

  final List<AppmeshVirtualRouterSpecListener>? listener;

  Map<String, Object?> encode() => {
    if (listener != null) 'listener': [for (final e in listener!) e.encode()],
  };
}

/// Typed helper for the `spec.listener` block of
/// `aws_appmesh_virtual_router` (derived from provider schema).
@immutable
final class AppmeshVirtualRouterSpecListener {
  const AppmeshVirtualRouterSpecListener({required this.portMapping});

  final AppmeshVirtualRouterSpecListenerPortMapping portMapping;

  Map<String, Object?> encode() => {'port_mapping': portMapping.encode()};
}

/// Typed helper for the `spec.listener.port_mapping` block of
/// `aws_appmesh_virtual_router` (derived from provider schema).
@immutable
final class AppmeshVirtualRouterSpecListenerPortMapping {
  const AppmeshVirtualRouterSpecListenerPortMapping({
    required this.port,
    required this.protocol,
  });

  final TfArg<num> port;

  final TfArg<String> protocol;

  Map<String, Object?> encode() => {
    'port': port.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
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
           if (meshOwner != null) 'mesh_owner': meshOwner,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'spec': TfArg.literal(spec.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppmeshVirtualRouterSensitive;

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
