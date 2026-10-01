// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_glossary_category`.
const Set<String> _googleDataplexGlossaryCategorySensitive = <String>{};

/// Factory wrapper for `google_dataplex_glossary_category`.
///
/// Represents a collection of categories and terms within a Glossary that are
/// related to each other.
final class GoogleDataplexGlossaryCategory extends Resource {
  static const String tfType = 'google_dataplex_glossary_category';

  GoogleDataplexGlossaryCategory(
    super.localName, {
    TfArg<String>? categoryId,
    TfArg<String>? glossaryId,
    required TfArg<String> parent,
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'category_id': ?categoryId,
           'glossary_id': ?glossaryId,
           'parent': parent,
           'location': location,
           'display_name': ?displayName,
           'description': ?description,
           'labels': ?labels,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexGlossaryCategorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexGlossaryCategory>`.
  RefTo<GoogleDataplexGlossaryCategory> get ref => RefTo.of(this);

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

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `category_id` attribute.
  TfRef<String> get categoryId => TfRef.attribute<String>(this, 'category_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `glossary_id` attribute.
  TfRef<String> get glossaryId => TfRef.attribute<String>(this, 'glossary_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
