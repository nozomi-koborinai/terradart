// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apihub_api_hub_instance`.
const Set<String> _googleApihubApiHubInstanceSensitive = <String>{};

/// Typed helper for the `config` block of
/// `google_apihub_api_hub_instance` (derived from provider schema).
@immutable
final class ApihubApiHubInstanceConfig {
  const ApihubApiHubInstanceConfig({
    this.cmekKeyName,
    this.disableSearch,
    this.encryptionType,
    this.vertexLocation,
  });

  final TfArg<String>? cmekKeyName;

  final TfArg<bool>? disableSearch;

  final TfArg<String>? encryptionType;

  final TfArg<String>? vertexLocation;

  Map<String, Object?> encode() => {
    if (cmekKeyName != null) 'cmek_key_name': cmekKeyName!.toTfJson(),
    if (disableSearch != null) 'disable_search': disableSearch!.toTfJson(),
    if (encryptionType != null) 'encryption_type': encryptionType!.toTfJson(),
    if (vertexLocation != null) 'vertex_location': vertexLocation!.toTfJson(),
  };
}

/// Factory wrapper for `google_apihub_api_hub_instance`.
///
/// An ApiHubInstance represents the instance resources of the API Hub.
/// Currently, only one ApiHub instance is allowed for each project. Currently,
/// updation/deletion of ApiHub instance is not allowed.
///
/// Apigee API Hub **instance** — project-singleton control plane for the
/// API catalog (one instance per project).
///
/// **Cost / apply:** Cloud Billing Catalog has **no API Hub SKU** after
/// MCP lookup (`list_services` for API Hub/apihub empty; Apigee
/// `1C2D-8C78-EC58` `list_skus` keyword Hub → 0). Provider MM sets
/// `exclude_delete: true` — Terraform **cannot destroy** the instance,
/// so apply-smoke would strand a project singleton forever. Ships
/// without a quickstart (`tool/example_debt.yaml`).
///
/// Enable `apihub.googleapis.com` via [GoogleProjectService] before
/// apply. [config] selects encryption (GMEK vs CMEK) and optional
/// Vertex search location.
final class GoogleApihubApiHubInstance extends Resource {
  static const String tfType = 'google_apihub_api_hub_instance';

  GoogleApihubApiHubInstance({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? apiHubInstanceId,
    TfArg<String>? description,
    required ApihubApiHubInstanceConfig config,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (apiHubInstanceId != null)
             'api_hub_instance_id': apiHubInstanceId,
           if (description != null) 'description': description,
           'config': TfArg.literal(config.encode()),
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApihubApiHubInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_message` attribute.
  TfRef<String> get stateMessage =>
      TfRef.attribute<String>(this, 'state_message');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
