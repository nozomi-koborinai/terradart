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
///
/// An Aspect Type is a template for creating Aspects.
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aspect_type_id': ?aspectTypeId,
           'location': ?location,
           'display_name': ?displayName,
           'description': ?description,
           'metadata_template': ?metadataTemplate,
           'data_classification': ?dataClassification,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexAspectTypeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexAspectType>`.
  RefTo<GoogleDataplexAspectType> get ref => RefTo.of(this);

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

  /// Reference to `aspect_type_id` attribute.
  TfRef<String> get aspectTypeIdRef =>
      TfRef.attribute<String>(this, 'aspect_type_id');

  /// Reference to `data_classification` attribute.
  TfRef<String> get dataClassificationRef =>
      TfRef.attribute<String>(this, 'data_classification');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `metadata_template` attribute.
  TfRef<String> get metadataTemplateRef =>
      TfRef.attribute<String>(this, 'metadata_template');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
