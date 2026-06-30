// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_aspect_type`.
const Set<String> _googleDataplexAspectTypeSensitive = <String>{};

/// Data-classification level a [GoogleDataplexAspectType] applies to the
/// aspects (metadata) it governs.
enum DataplexAspectTypeDataClassification implements TerraformEnum {
  /// Unspecified — no explicit classification.
  unspecified('DATA_CLASSIFICATION_UNSPECIFIED'),

  /// Classification applies to both the metadata and the underlying data.
  metadataAndData('METADATA_AND_DATA');

  const DataplexAspectTypeDataClassification(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_dataplex_aspect_type`.
final class GoogleDataplexAspectType extends Resource {
  static const String tfType = 'google_dataplex_aspect_type';

  GoogleDataplexAspectType({
    required super.localName,
    TfArg<String>? aspectTypeId,
    TfArg<String>? location,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? metadataTemplate,
    TfArg<DataplexAspectTypeDataClassification>? dataClassification,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (aspectTypeId != null) 'aspect_type_id': aspectTypeId,
           if (location != null) 'location': location,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (metadataTemplate != null) 'metadata_template': metadataTemplate,
           if (dataClassification != null)
             'data_classification': dataClassification,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexAspectTypeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `transfer_status` attribute.
  TfRef<String> get transferStatus =>
      TfRef.attribute<String>(this, 'transfer_status');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
