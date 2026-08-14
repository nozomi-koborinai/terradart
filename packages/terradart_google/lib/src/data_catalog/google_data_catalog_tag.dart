// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_tag`.
const Set<String> _googleDataCatalogTagSensitive = <String>{};

/// Value stored on one [DataCatalogTagField]. Exactly one variant.
sealed class DataCatalogTagFieldValue {
  const DataCatalogTagFieldValue();
  Map<String, Object?> encode();
}

/// `string_value` variant.
@immutable
final class DataCatalogTagStringValue extends DataCatalogTagFieldValue {
  const DataCatalogTagStringValue(this.stringValue);
  final TfArg<String> stringValue;

  @override
  Map<String, Object?> encode() => {'string_value': stringValue.toTfJson()};
}

/// `bool_value` variant.
@immutable
final class DataCatalogTagBoolValue extends DataCatalogTagFieldValue {
  const DataCatalogTagBoolValue(this.boolValue);
  final TfArg<bool> boolValue;

  @override
  Map<String, Object?> encode() => {'bool_value': boolValue.toTfJson()};
}

/// `double_value` variant.
@immutable
final class DataCatalogTagDoubleValue extends DataCatalogTagFieldValue {
  const DataCatalogTagDoubleValue(this.doubleValue);
  final TfArg<num> doubleValue;

  @override
  Map<String, Object?> encode() => {'double_value': doubleValue.toTfJson()};
}

/// `timestamp_value` variant (RFC3339).
@immutable
final class DataCatalogTagTimestampValue extends DataCatalogTagFieldValue {
  const DataCatalogTagTimestampValue(this.timestampValue);
  final TfArg<String> timestampValue;

  @override
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
  Map<String, Object?> encode() => {'enum_value': enumValue.toTfJson()};
}

/// One entry in the tag `fields` set.
@immutable
final class DataCatalogTagField {
  const DataCatalogTagField({required this.fieldName, required this.value});

  final TfArg<String> fieldName;
  final DataCatalogTagFieldValue value;

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
///   localName: 'entry_source',
///   parent: TfArg.ref(entry.id),
///   template: TfArg.ref(template.id),
///   fields: [
///     DataCatalogTagField(
///       fieldName: TfArg.literal('source'),
///       value: DataCatalogTagStringValue(
///         TfArg.literal('terradart-smoke'),
///       ),
///     ),
///   ],
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleDataCatalogTag extends Resource {
  static const String tfType = 'google_data_catalog_tag';

  GoogleDataCatalogTag({
    required super.localName,
    required TfArg<String> template,
    TfArg<String>? parent,
    required List<DataCatalogTagField> fields,
    TfArg<String>? column,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'template': template,
           if (parent != null) 'parent': parent,
           'fields': TfArg.literal([for (final f in fields) f.encode()]),
           if (column != null) 'column': column,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataCatalogTagSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `template_displayname` attribute.
  TfRef<String> get templateDisplayname =>
      TfRef.attribute<String>(this, 'template_displayname');
}
