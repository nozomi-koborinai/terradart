// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_user_profile`.
const Set<String> _awsDatazoneUserProfileSensitive = <String>{};

/// Datazone User Profile enum for `status`.
enum DatazoneUserProfileStatus implements TerraformEnum {
  assigned('ASSIGNED'),
  notAssigned('NOT_ASSIGNED'),
  activated('ACTIVATED'),
  deactivated('DEACTIVATED');

  const DatazoneUserProfileStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Datazone User Profile User enum for `user_type`.
enum DatazoneUserProfileUserType implements TerraformEnum {
  iamUser('IAM_USER'),
  iamRole('IAM_ROLE'),
  ssoUser('SSO_USER'),
  iamRoleSession('IAM_ROLE_SESSION');

  const DatazoneUserProfileUserType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_datazone_user_profile`.
final class AwsDatazoneUserProfile extends Resource {
  static const String tfType = 'aws_datazone_user_profile';

  AwsDatazoneUserProfile({
    required super.localName,
    required TfArg<String> domainIdentifier,
    TfArg<String>? region,
    TfArg<DatazoneUserProfileStatus>? status,
    required TfArg<String> userIdentifier,
    TfArg<DatazoneUserProfileUserType>? userType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_identifier': domainIdentifier,
           'region': ?region,
           'status': ?status,
           'user_identifier': userIdentifier,
           'user_type': ?userType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatazoneUserProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatazoneUserProfile>`.
  RefTo<AwsDatazoneUserProfile> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `details` attribute.
  TfRef<List<Map<String, Object?>>> get details =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'details');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `domain_identifier` attribute.
  TfRef<String> get domainIdentifierRef =>
      TfRef.attribute<String>(this, 'domain_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');

  /// Reference to `user_identifier` attribute.
  TfRef<String> get userIdentifierRef =>
      TfRef.attribute<String>(this, 'user_identifier');

  /// Reference to `user_type` attribute.
  TfRef<String> get userTypeRef => TfRef.attribute<String>(this, 'user_type');
}
