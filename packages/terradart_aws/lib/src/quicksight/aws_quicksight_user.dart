// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_user`.
const Set<String> _awsQuicksightUserSensitive = <String>{};

/// Quicksight User Identity enum for `identity_type`.
enum QuicksightUserIdentityType implements TerraformEnum {
  iam('IAM'),
  quicksight('QUICKSIGHT'),
  iamIdentityCenter('IAM_IDENTITY_CENTER');

  const QuicksightUserIdentityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Quicksight User User enum for `user_role`.
enum QuicksightUserUserRole implements TerraformEnum {
  admin('ADMIN'),
  author('AUTHOR'),
  reader('READER'),
  restrictedAuthor('RESTRICTED_AUTHOR'),
  restrictedReader('RESTRICTED_READER'),
  adminPro('ADMIN_PRO'),
  authorPro('AUTHOR_PRO'),
  readerPro('READER_PRO');

  const QuicksightUserUserRole(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_quicksight_user`.
final class AwsQuicksightUser extends Resource {
  static const String tfType = 'aws_quicksight_user';

  AwsQuicksightUser({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> email,
    TfArg<String>? iamArn,
    required TfArg<QuicksightUserIdentityType> identityType,
    TfArg<String>? namespace,
    TfArg<String>? region,
    TfArg<String>? sessionName,
    TfArg<String>? userName,
    required TfArg<QuicksightUserUserRole> userRole,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'email': email,
           'iam_arn': ?iamArn,
           'identity_type': identityType,
           'namespace': ?namespace,
           'region': ?region,
           'session_name': ?sessionName,
           'user_name': ?userName,
           'user_role': userRole,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightUser>`.
  RefTo<AwsQuicksightUser> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `user_invitation_url` attribute.
  TfRef<String> get userInvitationUrl =>
      TfRef.attribute<String>(this, 'user_invitation_url');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountIdRef =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `email` attribute.
  TfRef<String> get emailRef => TfRef.attribute<String>(this, 'email');

  /// Reference to `iam_arn` attribute.
  TfRef<String> get iamArnRef => TfRef.attribute<String>(this, 'iam_arn');

  /// Reference to `identity_type` attribute.
  TfRef<String> get identityTypeRef =>
      TfRef.attribute<String>(this, 'identity_type');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespaceRef => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `session_name` attribute.
  TfRef<String> get sessionNameRef =>
      TfRef.attribute<String>(this, 'session_name');

  /// Reference to `user_name` attribute.
  TfRef<String> get userNameRef => TfRef.attribute<String>(this, 'user_name');

  /// Reference to `user_role` attribute.
  TfRef<String> get userRoleRef => TfRef.attribute<String>(this, 'user_role');
}
