// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_aspect_type`.
const Set<String> _googleDataplexAspectTypeSensitive = <String>{};

/// Data-classification level a [GoogleDataplexAspectType] applies to the
/// aspects (metadata) it governs.
extension type const DataplexAspectTypeDataClassification._(TfArg<String> _)
    implements TfArg<String> {
  DataplexAspectTypeDataClassification.variable(String name)
    : this._(TfArg.variable(name));
  DataplexAspectTypeDataClassification.expression(String template)
    : this._(TfArg.expression(template));
  const DataplexAspectTypeDataClassification.arg(TfArg<String> arg)
    : this._(arg);

  /// Unspecified — no explicit classification.
  static const unspecified = DataplexAspectTypeDataClassification._(
    TfArgLiteral('DATA_CLASSIFICATION_UNSPECIFIED'),
  );

  /// Classification applies to both the metadata and the underlying data.
  static const metadataAndData = DataplexAspectTypeDataClassification._(
    TfArgLiteral('METADATA_AND_DATA'),
  );

  static const List<DataplexAspectTypeDataClassification> values = [
    unspecified,
    metadataAndData,
  ];
}

/// Factory wrapper for `google_dataplex_aspect_type`.
///
/// An Aspect Type is a template for creating Aspects.
final class GoogleDataplexAspectType extends Resource {
  static const String tfType = 'google_dataplex_aspect_type';

  GoogleDataplexAspectType(
    super.localName, {
    TfArg<String>? aspectTypeId,
    TfArg<String>? location,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? metadataTemplate,
    DataplexAspectTypeDataClassification? dataClassification,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get aspectTypeId =>
      TfRef.attribute<String>(this, 'aspect_type_id');

  /// Reference to `data_classification` attribute.
  TfRef<String> get dataClassification =>
      TfRef.attribute<String>(this, 'data_classification');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `metadata_template` attribute.
  TfRef<String> get metadataTemplate =>
      TfRef.attribute<String>(this, 'metadata_template');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
