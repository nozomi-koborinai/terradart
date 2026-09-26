// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_project`.
const Set<String> _awsDatazoneProjectSensitive = <String>{};

/// Factory wrapper for `aws_datazone_project`.
final class AwsDatazoneProject extends Resource {
  static const String tfType = 'aws_datazone_project';

  AwsDatazoneProject({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> domainIdentifier,
    TfArg<List<String>>? glossaryTerms,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? skipDeletionCheck,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'domain_identifier': domainIdentifier,
           if (glossaryTerms != null) 'glossary_terms': glossaryTerms,
           'name': name,
           if (region != null) 'region': region,
           if (skipDeletionCheck != null)
             'skip_deletion_check': skipDeletionCheck,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneProjectSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `failure_reasons` attribute.
  TfRef<List<Map<String, Object?>>> get failureReasons =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'failure_reasons');

  /// Reference to `last_updated_at` attribute.
  TfRef<String> get lastUpdatedAt =>
      TfRef.attribute<String>(this, 'last_updated_at');

  /// Reference to `project_status` attribute.
  TfRef<String> get projectStatus =>
      TfRef.attribute<String>(this, 'project_status');
}
