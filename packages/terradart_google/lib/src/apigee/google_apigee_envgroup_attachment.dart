// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_envgroup_attachment`.
const Set<String> _googleApigeeEnvgroupAttachmentSensitive = <String>{};

/// Factory wrapper for `google_apigee_envgroup_attachment`.
///
/// An `Environment Group attachment` in Apigee.
///
/// Apigee **envgroup ↔ environment attachment**.
///
/// **Cost:** gcp-cost: no attachment SKU under Apigee `1C2D-8C78-EC58`.
/// billing-behavior: binding metadata — environment usage bills the
/// never_apply [GoogleApigeeEnvironment]. Deferred with the org Wave.
final class GoogleApigeeEnvgroupAttachment extends Resource {
  static const String tfType = 'google_apigee_envgroup_attachment';

  GoogleApigeeEnvgroupAttachment({
    required super.localName,
    required TfArg<String> envgroupId,
    required TfArg<String> environment,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'envgroup_id': envgroupId,
           'environment': environment,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvgroupAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute (attachment resource name).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
