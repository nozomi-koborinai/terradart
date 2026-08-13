// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_grpc_route`.
const Set<String> _googleNetworkServicesGrpcRouteSensitive = <String>{};

/// Factory wrapper for `google_network_services_grpc_route`.
///
/// GrpcRoute is the resource defining how gRPC traffic routed by a Mesh or
/// Gateway resource is routed.
///
/// Cloud Service Mesh **gRPC route** — hostname + method matchers that
/// attach to a [GoogleNetworkServicesMesh] (or a gateway). Config only
/// until workloads join the mesh; do not attach a
/// [GoogleNetworkServicesGateway] in apply-smoke (SWG is $1.25/h).
///
/// Nested `rules` stay as `List<Map<String, dynamic>>` until hyphenated
/// schema enums (`connect-failure`, …) can camelCase legally in wrap.
final class GoogleNetworkServicesGrpcRoute extends Resource {
  static const String tfType = 'google_network_services_grpc_route';

  GoogleNetworkServicesGrpcRoute({
    required super.localName,
    required TfArg<String> name,
    required TfArg<List<String>> hostnames,
    required TfArg<List<Map<String, dynamic>>> rules,
    TfArg<List<String>>? meshes,
    TfArg<List<String>>? gateways,
    TfArg<String>? location,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'hostnames': hostnames,
           'rules': rules,
           if (meshes != null) 'meshes': meshes,
           if (gateways != null) 'gateways': gateways,
           if (location != null) 'location': location,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesGrpcRouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
