// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_loss_prevention_deidentify_template`.
const Set<String>
_googleDataLossPreventionDeidentifyTemplateSensitive = <String>{
  'deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_deterministic_config.crypto_key.unwrapped.key',
  'deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_hash_config.crypto_key.unwrapped.key',
  'deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.crypto_replace_ffx_fpe_config.crypto_key.unwrapped.key',
  'deidentify_config.record_transformations.field_transformations.info_type_transformations.transformations.primitive_transformation.date_shift_config.crypto_key.unwrapped.key',
};

/// Factory wrapper for `google_data_loss_prevention_deidentify_template`.
///
/// Allows creation of templates to de-identify content.
///
/// DLP de-identify template — reusable transforms that redact or replace
/// sensitive findings.
///
/// Enable `dlp.googleapis.com` via [GoogleProjectService] before apply.
/// [parent] is `projects/{project}` or
/// `projects/{project}/locations/{location}`.
final class GoogleDataLossPreventionDeidentifyTemplate extends Resource {
  static const String tfType =
      'google_data_loss_prevention_deidentify_template';

  GoogleDataLossPreventionDeidentifyTemplate({
    required super.localName,
    required TfArg<String> parent,
    TfArg<String>? templateId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    required TfArg<Map<String, dynamic>> deidentifyConfig,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           if (templateId != null) 'template_id': templateId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           'deidentify_config': deidentifyConfig,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataLossPreventionDeidentifyTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
