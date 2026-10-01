// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_environment_profile`.
const Set<String> _awsDatazoneEnvironmentProfileSensitive = <String>{};

/// Typed helper for the `user_parameters` block of
/// `aws_datazone_environment_profile` (derived from provider schema).
@immutable
final class DatazoneEnvironmentProfileUserParameters {
  const DatazoneEnvironmentProfileUserParameters({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `aws_datazone_environment_profile`.
final class AwsDatazoneEnvironmentProfile extends Resource {
  static const String tfType = 'aws_datazone_environment_profile';

  AwsDatazoneEnvironmentProfile({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> awsAccountRegion,
    TfArg<String>? description,
    required TfArg<String> domainIdentifier,
    required TfArg<String> environmentBlueprintIdentifier,
    required TfArg<String> name,
    required TfArg<String> projectIdentifier,
    TfArg<String>? region,
    List<DatazoneEnvironmentProfileUserParameters>? userParameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'aws_account_region': awsAccountRegion,
           'description': ?description,
           'domain_identifier': domainIdentifier,
           'environment_blueprint_identifier': environmentBlueprintIdentifier,
           'name': name,
           'project_identifier': projectIdentifier,
           'region': ?region,
           if (userParameters != null)
             'user_parameters': TfArg.literal([
               for (final e in userParameters) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneEnvironmentProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatazoneEnvironmentProfile>`.
  RefTo<AwsDatazoneEnvironmentProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `aws_account_region` attribute.
  TfRef<String> get awsAccountRegion =>
      TfRef.attribute<String>(this, 'aws_account_region');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `domain_identifier` attribute.
  TfRef<String> get domainIdentifier =>
      TfRef.attribute<String>(this, 'domain_identifier');

  /// Reference to `environment_blueprint_identifier` attribute.
  TfRef<String> get environmentBlueprintIdentifier =>
      TfRef.attribute<String>(this, 'environment_blueprint_identifier');

  /// Reference to `project_identifier` attribute.
  TfRef<String> get projectIdentifier =>
      TfRef.attribute<String>(this, 'project_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
