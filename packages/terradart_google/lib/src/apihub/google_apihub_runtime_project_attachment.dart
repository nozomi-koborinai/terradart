// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apihub_runtime_project_attachment`.
const Set<String> _googleApihubRuntimeProjectAttachmentSensitive = <String>{};

/// Factory wrapper for `google_apihub_runtime_project_attachment`.
///
/// Runtime project attachment represents an attachment from the runtime project
/// to the host project. API Hub looks for deployments in the attached runtime
/// projects and creates corresponding resources in API Hub for the discovered
/// deployments.
///
/// API Hub **runtime project attachment** — attaches a runtime GCP
/// project so API Hub can discover deployments there.
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU after MCP
/// lookup (`list_services` API Hub → empty; Apigee `1C2D-8C78-EC58`
/// `list_skus` keyword Hub → 0). billing-behavior: attachment metadata
/// — no existence/hourly charge observed. Requires an API Hub host /
/// [GoogleApihubApiHubInstance] (never_apply undeletable singleton);
/// not standalone-project applyable on `terradart-validate`. **Never**
/// wire into apply-smoke.
final class GoogleApihubRuntimeProjectAttachment extends Resource {
  static const String tfType = 'google_apihub_runtime_project_attachment';

  GoogleApihubRuntimeProjectAttachment({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> runtimeProjectAttachmentId,
    required TfArg<String> runtimeProject,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'runtime_project_attachment_id': runtimeProjectAttachmentId,
           'runtime_project': runtimeProject,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApihubRuntimeProjectAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
