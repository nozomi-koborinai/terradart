// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_tag_template`.
const Set<String> _googleDataCatalogTagTemplateSensitive = <String>{};

/// Primitive field types for [DataCatalogTagTemplatePrimitiveFieldType].
enum DataCatalogTagTemplatePrimitiveType implements TerraformEnum {
  doubleType('DOUBLE'),
  string('STRING'),
  boolType('BOOL'),
  timestamp('TIMESTAMP'),
  richtext('RICHTEXT');

  const DataCatalogTagTemplatePrimitiveType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Field value type — exactly one of primitive / enum.
sealed class DataCatalogTagTemplateFieldType {
  const DataCatalogTagTemplateFieldType();
  Map<String, Object?> encode();
}

/// `type.primitive_type` variant.
@immutable
final class DataCatalogTagTemplatePrimitiveFieldType
    extends DataCatalogTagTemplateFieldType {
  const DataCatalogTagTemplatePrimitiveFieldType(this.primitiveType);
  final DataCatalogTagTemplatePrimitiveType primitiveType;

  @override
  Map<String, Object?> encode() => {
    'primitive_type': primitiveType.terraformValue,
  };
}

/// One allowed value inside an enum field type.
@immutable
final class DataCatalogTagTemplateEnumAllowedValue {
  const DataCatalogTagTemplateEnumAllowedValue({required this.displayName});
  final TfArg<String> displayName;

  Map<String, Object?> encode() => {'display_name': displayName.toTfJson()};
}

/// `type.enum_type` variant.
@immutable
final class DataCatalogTagTemplateEnumFieldType
    extends DataCatalogTagTemplateFieldType {
  const DataCatalogTagTemplateEnumFieldType({required this.allowedValues});
  final List<DataCatalogTagTemplateEnumAllowedValue> allowedValues;

  @override
  Map<String, Object?> encode() => {
    'enum_type': [
      {
        'allowed_values': [for (final v in allowedValues) v.encode()],
      },
    ],
  };
}

/// One entry in the tag template `fields` set.
@immutable
final class DataCatalogTagTemplateField {
  const DataCatalogTagTemplateField({
    required this.fieldId,
    required this.type,
    this.displayName,
    this.description,
    this.isRequired,
    this.order,
  });

  final TfArg<String> fieldId;
  final DataCatalogTagTemplateFieldType type;
  final TfArg<String>? displayName;
  final TfArg<String>? description;
  final TfArg<bool>? isRequired;
  final TfArg<num>? order;

  Map<String, Object?> encode() => {
    'field_id': fieldId.toTfJson(),
    'type': [type.encode()],
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (isRequired != null) 'is_required': isRequired!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
  };
}

/// Factory wrapper for `google_data_catalog_tag_template`.
///
/// A tag template defines a tag, which can have one or more typed fields. The
/// template is used to create and attach the tag to GCP resources.
///
/// Data Catalog **tag template** — defines typed fields that
/// `google_data_catalog_tag` instances fill in (legacy Data Catalog API).
/// Supply at least one [fields] entry; each field picks exactly one
/// [DataCatalogTagTemplateFieldType] (primitive or enum).
///
/// Example:
/// ```dart
/// GoogleDataCatalogTagTemplate(
///   localName: 'demo',
///   tagTemplateId: TfArg.literal('terradart_template'),
///   region: TfArg.literal('us-central1'),
///   displayName: TfArg.literal('Demo Tag Template'),
///   fields: [
///     DataCatalogTagTemplateField(
///       fieldId: TfArg.literal('source'),
///       displayName: TfArg.literal('Source of data asset'),
///       isRequired: TfArg.literal(true),
///       type: const DataCatalogTagTemplatePrimitiveFieldType(
///         DataCatalogTagTemplatePrimitiveType.string,
///       ),
///     ),
///   ],
///   forceDelete: TfArg.literal(true),
/// );
/// ```
final class GoogleDataCatalogTagTemplate extends Resource {
  static const String tfType = 'google_data_catalog_tag_template';

  GoogleDataCatalogTagTemplate({
    required super.localName,
    required TfArg<String> tagTemplateId,
    required List<DataCatalogTagTemplateField> fields,
    TfArg<String>? displayName,
    TfArg<String>? region,
    TfArg<String>? project,
    TfArg<bool>? forceDelete,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tag_template_id': tagTemplateId,
           'fields': TfArg.literal([for (final f in fields) f.encode()]),
           if (displayName != null) 'display_name': displayName,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
           if (forceDelete != null) 'force_delete': forceDelete,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataCatalogTagTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
