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
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
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
           'account_identifier': ?accountIdentifier,
           'account_region': ?accountRegion,
           'blueprint_identifier': ?blueprintIdentifier,
           'description': ?description,
           'domain_identifier': domainIdentifier,
           'glossary_terms': ?glossaryTerms,
           'name': name,
           'profile_identifier': profileIdentifier,
           'project_identifier': projectIdentifier,
           'region': ?region,
           if (userParameters != null)
             'user_parameters': TfArg.literal([
               for (final e in userParameters) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneEnvironmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatazoneEnvironment>`.
  RefTo<AwsDatazoneEnvironment> get ref => RefTo.of(this);

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

  /// Reference to `account_identifier` attribute.
  TfRef<String> get accountIdentifierRef =>
      TfRef.attribute<String>(this, 'account_identifier');

  /// Reference to `account_region` attribute.
  TfRef<String> get accountRegionRef =>
      TfRef.attribute<String>(this, 'account_region');

  /// Reference to `blueprint_identifier` attribute.
  TfRef<String> get blueprintIdentifierRef =>
      TfRef.attribute<String>(this, 'blueprint_identifier');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `domain_identifier` attribute.
  TfRef<String> get domainIdentifierRef =>
      TfRef.attribute<String>(this, 'domain_identifier');

  /// Reference to `glossary_terms` attribute.
  TfRef<List<String>> get glossaryTermsRef =>
      TfRef.attribute<List<String>>(this, 'glossary_terms');

  /// Reference to `profile_identifier` attribute.
  TfRef<String> get profileIdentifierRef =>
      TfRef.attribute<String>(this, 'profile_identifier');

  /// Reference to `project_identifier` attribute.
  TfRef<String> get projectIdentifierRef =>
      TfRef.attribute<String>(this, 'project_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
