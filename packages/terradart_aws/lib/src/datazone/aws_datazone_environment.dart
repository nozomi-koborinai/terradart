// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_environment`.
const Set<String> _awsDatazoneEnvironmentSensitive = <String>{};

/// Typed helper for the `user_parameters` block of
/// `aws_datazone_environment` (derived from provider schema).
@immutable
final class DatazoneEnvironmentUserParameters {
  const DatazoneEnvironmentUserParameters({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `aws_datazone_environment`.
final class AwsDatazoneEnvironment extends Resource {
  static const String tfType = 'aws_datazone_environment';

  AwsDatazoneEnvironment({
    required super.localName,
    TfArg<String>? accountIdentifier,
    TfArg<String>? accountRegion,
    TfArg<String>? blueprintIdentifier,
    TfArg<String>? description,
    required TfArg<String> domainIdentifier,
    TfArg<List<String>>? glossaryTerms,
    required TfArg<String> name,
    required TfArg<String> profileIdentifier,
    required TfArg<String> projectIdentifier,
    TfArg<String>? region,
    List<DatazoneEnvironmentUserParameters>? userParameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountIdentifier != null)
             'account_identifier': accountIdentifier,
           if (accountRegion != null) 'account_region': accountRegion,
           if (blueprintIdentifier != null)
             'blueprint_identifier': blueprintIdentifier,
           if (description != null) 'description': description,
           'domain_identifier': domainIdentifier,
           if (glossaryTerms != null) 'glossary_terms': glossaryTerms,
           'name': name,
           'profile_identifier': profileIdentifier,
           'project_identifier': projectIdentifier,
           if (region != null) 'region': region,
           if (userParameters != null)
             'user_parameters': TfArg.literal([
               for (final e in userParameters) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneEnvironmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `last_deployment` attribute.
  TfRef<List<Map<String, Object?>>> get lastDeployment =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'last_deployment');

  /// Reference to `provider_environment` attribute.
  TfRef<String> get providerEnvironment =>
      TfRef.attribute<String>(this, 'provider_environment');

  /// Reference to `provisioned_resources` attribute.
  TfRef<List<Map<String, Object?>>> get provisionedResources =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'provisioned_resources',
      );
}
