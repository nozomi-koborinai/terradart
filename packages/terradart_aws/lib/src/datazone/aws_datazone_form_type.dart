// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_form_type`.
const Set<String> _awsDatazoneFormTypeSensitive = <String>{};

/// Typed helper for the `model` block of
/// `aws_datazone_form_type` (derived from provider schema).
@immutable
final class DatazoneFormTypeModel {
  const DatazoneFormTypeModel({required this.smithy});

  final TfArg<String> smithy;

  Map<String, Object?> encode() => {'smithy': smithy.toTfJson()};
}

/// Factory wrapper for `aws_datazone_form_type`.
final class AwsDatazoneFormType extends Resource {
  static const String tfType = 'aws_datazone_form_type';

  AwsDatazoneFormType({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> domainIdentifier,
    required TfArg<String> name,
    required TfArg<String> owningProjectIdentifier,
    TfArg<String>? region,
    TfArg<String>? status,
    List<DatazoneFormTypeModel>? model,
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
           if (status != null) 'status': status,
           if (model != null)
             'model': TfArg.literal([for (final e in model) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneFormTypeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `imports` attribute.
  TfRef<List<Map<String, Object?>>> get imports =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'imports');

  /// Reference to `origin_domain_id` attribute.
  TfRef<String> get originDomainId =>
      TfRef.attribute<String>(this, 'origin_domain_id');

  /// Reference to `origin_project_id` attribute.
  TfRef<String> get originProjectId =>
      TfRef.attribute<String>(this, 'origin_project_id');

  /// Reference to `revision` attribute.
  TfRef<String> get revision => TfRef.attribute<String>(this, 'revision');
}
