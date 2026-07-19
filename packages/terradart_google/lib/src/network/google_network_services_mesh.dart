// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_mesh`.
const Set<String> _googleNetworkServicesMeshSensitive = <String>{};

/// Factory wrapper for `google_network_services_mesh`.
///
/// Mesh represents a logical configuration grouping for workload to workload
/// communication within a service mesh. Routes that point to mesh dictate how
/// requests are routed within this logical mesh boundary.
///
/// Cloud Network Services Mesh — a logical service-mesh namespace for
/// sidecar / proxyless workloads (Traffic Director / Cloud Service Mesh).
///
/// Creating a Mesh alone does not attach clusters or bill Anthos Service
/// Mesh cluster/endpoint SKUs. Enable `networkservices.googleapis.com`
/// via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleNetworkServicesMesh(
///   localName: 'app',
///   name: TfArg.literal('terradart-mesh'),
///   location: TfArg.literal('global'),
///   description: TfArg.literal('TerraDart smoke mesh'),
/// );
/// ```
final class GoogleNetworkServicesMesh extends Resource {
  static const String tfType = 'google_network_services_mesh';

  GoogleNetworkServicesMesh({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    TfArg<String>? description,
    TfArg<num>? interceptionPort,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (location != null) 'location': location,
           if (description != null) 'description': description,
           if (interceptionPort != null) 'interception_port': interceptionPort,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesMeshSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
