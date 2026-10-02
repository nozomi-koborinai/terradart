// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../data_catalog/google_data_catalog_tag_template.dart'
    show GoogleDataCatalogTagTemplate;

/// Sensitive field paths for `google_data_catalog_tag`.
const Set<String> _googleDataCatalogTagSensitive = <String>{};

/// Value stored on one [DataCatalogTagField]. Exactly one variant.
sealed class DataCatalogTagFieldValue {
  const DataCatalogTagFieldValue();

  /// `string_value` variant.
  const factory DataCatalogTagFieldValue.stringValue(
    TfArg<String> stringValue,
  ) = DataCatalogTagStringValue;

  /// `bool_value` variant.
  const factory DataCatalogTagFieldValue.boolValue(TfArg<bool> boolValue) =
      DataCatalogTagBoolValue;

  /// `double_value` variant.
  const factory DataCatalogTagFieldValue.doubleValue(TfArg<num> doubleValue) =
      DataCatalogTagDoubleValue;

  /// `timestamp_value` variant (RFC3339).
  const factory DataCatalogTagFieldValue.timestampValue(
    TfArg<String> timestampValue,
  ) = DataCatalogTagTimestampValue;

  /// `enum_value` variant — display name of an allowed template enum.
  const factory DataCatalogTagFieldValue.enumValue(TfArg<String> enumValue) =
      DataCatalogTagEnumValue;
  @internal
  Map<String, Object?> encode();
}

/// `string_value` variant.
@immutable
final class DataCatalogTagStringValue extends DataCatalogTagFieldValue {
  const DataCatalogTagStringValue(this.stringValue);
  final TfArg<String> stringValue;

  @override
  @internal
  Map<String, Object?> encode() => {'string_value': stringValue.toTfJson()};
}

/// `bool_value` variant.
@immutable
final class DataCatalogTagBoolValue extends DataCatalogTagFieldValue {
  const DataCatalogTagBoolValue(this.boolValue);
  final TfArg<bool> boolValue;

  @override
  @internal
  Map<String, Object?> encode() => {'bool_value': boolValue.toTfJson()};
}

/// `double_value` variant.
@immutable
final class DataCatalogTagDoubleValue extends DataCatalogTagFieldValue {
  const DataCatalogTagDoubleValue(this.doubleValue);
  final TfArg<num> doubleValue;

  @override
  @internal
  Map<String, Object?> encode() => {'double_value': doubleValue.toTfJson()};
}

/// `timestamp_value` variant (RFC3339).
@immutable
final class DataCatalogTagTimestampValue extends DataCatalogTagFieldValue {
  const DataCatalogTagTimestampValue(this.timestampValue);
  final TfArg<String> timestampValue;

  @override
  @internal
  Map<String, Object?> encode() => {
    'timestamp_value': timestampValue.toTfJson(),
  };
}

/// `enum_value` variant — display name of an allowed template enum.
@immutable
final class DataCatalogTagEnumValue extends DataCatalogTagFieldValue {
  const DataCatalogTagEnumValue(this.enumValue);
  final TfArg<String> enumValue;

  @override
  @internal
  Map<String, Object?> encode() => {'enum_value': enumValue.toTfJson()};
}

/// One entry in the tag `fields` set.
@immutable
final class DataCatalogTagField {
  const DataCatalogTagField({required this.fieldName, required this.value});

  final TfArg<String> fieldName;
  final DataCatalogTagFieldValue value;

  @internal
  Map<String, Object?> encode() => {
    'field_name': fieldName.toTfJson(),
    ...value.encode(),
  };
}

/// Factory wrapper for `google_data_catalog_tag`.
///
/// Tags are used to attach custom metadata to Data Catalog resources. Tags
/// conform to the specifications within their tag template.
///
/// See [Data Catalog
/// IAM](https://cloud.google.com/data-catalog/docs/concepts/iam) for
/// information on the permissions needed to create or view tags.
///
/// Data Catalog **tag** — attaches one [template]'s fields to a
/// [parent] entry or entry group (legacy Data Catalog API).
/// Creating the tag does **not** enable Dataplex Universal Catalog
/// or write outside Data Catalog metadata.
///
/// Prefer a thin smoke stack: [parent] is an in-stack
/// [GoogleDataCatalogEntry] `.id`, [template] is an in-stack
/// [GoogleDataCatalogTagTemplate] `.id`, and [fields] fills the
/// template's required STRING `source` field. Set [deletionPolicy]
/// to `DELETE`. Data Catalog writes may 400 on projects that have
/// already transitioned to Dataplex — `data_catalog_quickstart` is
/// apply-smoke skipped for that reason.
///
/// Each [DataCatalogTagField] picks exactly one
/// [DataCatalogTagFieldValue] (`string` / `bool` / `double` /
/// `timestamp` / `enum`).
///
/// Example:
/// ```dart
/// GoogleDataCatalogTag(
///   'entry_source',
///   parent: entry.id,
///   template: template.ref,
///   fields: [
///     DataCatalogTagField(
///       fieldName: TfArg.literal('source'),
///       value: .stringValue(
///         TfArg.literal('terradart-smoke'),
///       ),
///     ),
///   ],
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleDataCatalogTag extends Resource {
  static const String tfType = 'google_data_catalog_tag';

  GoogleDataCatalogTag(
    super.localName, {
    required RefTo<GoogleDataCatalogTagTemplate> template,
    TfArg<String>? parent,
    required List<DataCatalogTagField> fields,
    TfArg<String>? column,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'template': template.encodeAs('id'),
           'parent': ?parent,
           'fields': TfArg.literal([for (final f in fields) f.encode()]),
           'column': ?column,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataCatalogTagSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogTag>`.
  RefTo<GoogleDataCatalogTag> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `template_displayname` attribute.
  TfRef<String> get templateDisplayname =>
      TfRef.attribute<String>(this, 'template_displayname');

  /// Reference to `column` attribute.
  TfRef<String> get column => TfRef.attribute<String>(this, 'column');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `template` attribute.
  TfRef<String> get template => TfRef.attribute<String>(this, 'template');
}
