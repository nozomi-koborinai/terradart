// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datazone_user_profile`.
const Set<String> _awsDatazoneUserProfileSensitive = <String>{};

/// Datazone User Profile enum for `status`.
extension type const DatazoneUserProfileStatus._(TfArg<String> _)
    implements TfArg<String> {
  DatazoneUserProfileStatus.variable(String name)
    : this._(TfArg.variable(name));
  DatazoneUserProfileStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DatazoneUserProfileStatus.arg(TfArg<String> arg) : this._(arg);

  static const assigned = DatazoneUserProfileStatus._(TfArgLiteral('ASSIGNED'));
  static const notAssigned = DatazoneUserProfileStatus._(
    TfArgLiteral('NOT_ASSIGNED'),
  );
  static const activated = DatazoneUserProfileStatus._(
    TfArgLiteral('ACTIVATED'),
  );
  static const deactivated = DatazoneUserProfileStatus._(
    TfArgLiteral('DEACTIVATED'),
  );

  static const List<DatazoneUserProfileStatus> values = [
    assigned,
    notAssigned,
    activated,
    deactivated,
  ];
}

/// Datazone User Profile User enum for `user_type`.
extension type const DatazoneUserProfileUserType._(TfArg<String> _)
    implements TfArg<String> {
  DatazoneUserProfileUserType.variable(String name)
    : this._(TfArg.variable(name));
  DatazoneUserProfileUserType.expression(String template)
    : this._(TfArg.expression(template));
  const DatazoneUserProfileUserType.arg(TfArg<String> arg) : this._(arg);

  static const iamUser = DatazoneUserProfileUserType._(
    TfArgLiteral('IAM_USER'),
  );
  static const iamRole = DatazoneUserProfileUserType._(
    TfArgLiteral('IAM_ROLE'),
  );
  static const ssoUser = DatazoneUserProfileUserType._(
    TfArgLiteral('SSO_USER'),
  );
  static const iamRoleSession = DatazoneUserProfileUserType._(
    TfArgLiteral('IAM_ROLE_SESSION'),
  );

  static const List<DatazoneUserProfileUserType> values = [
    iamUser,
    iamRole,
    ssoUser,
    iamRoleSession,
  ];
}

/// Factory wrapper for `aws_datazone_user_profile`.
final class AwsDatazoneUserProfile extends Resource {
  static const String tfType = 'aws_datazone_user_profile';

  AwsDatazoneUserProfile(
    super.localName, {
    required TfArg<String> domainIdentifier,
    TfArg<String>? region,
    DatazoneUserProfileStatus? status,
    required TfArg<String> userIdentifier,
    DatazoneUserProfileUserType? userType,
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
  TfRef<String> get domainIdentifier =>
      TfRef.attribute<String>(this, 'domain_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `user_identifier` attribute.
  TfRef<String> get userIdentifier =>
      TfRef.attribute<String>(this, 'user_identifier');

  /// Reference to `user_type` attribute.
  TfRef<String> get userType => TfRef.attribute<String>(this, 'user_type');
}
