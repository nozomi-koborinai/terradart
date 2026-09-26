// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_asset_type`.
const Set<String> _awsDatazoneAssetTypeSensitive = <String>{};

/// Typed helper for the `forms_input` block of
/// `aws_datazone_asset_type` (derived from provider schema).
@immutable
final class DatazoneAssetTypeFormsInput {
  const DatazoneAssetTypeFormsInput({
    required this.mapBlockKey,
    this.required,
    required this.typeIdentifier,
    required this.typeRevision,
  });

  final TfArg<String> mapBlockKey;

  final TfArg<bool>? required;

  final TfArg<String> typeIdentifier;

  final TfArg<String> typeRevision;

  Map<String, Object?> encode() => {
    'map_block_key': mapBlockKey.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    'type_identifier': typeIdentifier.toTfJson(),
    'type_revision': typeRevision.toTfJson(),
  };
}

/// Factory wrapper for `aws_datazone_asset_type`.
final class AwsDatazoneAssetType extends Resource {
  static const String tfType = 'aws_datazone_asset_type';

  AwsDatazoneAssetType({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> domainIdentifier,
    required TfArg<String> name,
    required TfArg<String> owningProjectIdentifier,
    TfArg<String>? region,
    List<DatazoneAssetTypeFormsInput>? formsInput,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'domain_identifier': domainIdentifier,
           'name': name,
           'owning_project_identifier': owningProjectIdentifier,
           if (region != null) 'region': region,
           if (formsInput != null)
             'forms_input': TfArg.literal([
               for (final e in formsInput) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneAssetTypeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `revision` attribute.
  TfRef<String> get revision => TfRef.attribute<String>(this, 'revision');
}
