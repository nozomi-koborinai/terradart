// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_user`.
const Set<String> _awsQuicksightUserSensitive = <String>{};

/// Quicksight User Identity enum for `identity_type`.
extension type const QuicksightUserIdentityType._(TfArg<String> _)
    implements TfArg<String> {
  QuicksightUserIdentityType.variable(String name)
    : this._(TfArg.variable(name));
  QuicksightUserIdentityType.expression(String template)
    : this._(TfArg.expression(template));
  const QuicksightUserIdentityType.arg(TfArg<String> arg) : this._(arg);

  static const iam = QuicksightUserIdentityType._(TfArgLiteral('IAM'));
  static const quicksight = QuicksightUserIdentityType._(
    TfArgLiteral('QUICKSIGHT'),
  );
  static const iamIdentityCenter = QuicksightUserIdentityType._(
    TfArgLiteral('IAM_IDENTITY_CENTER'),
  );

  static const List<QuicksightUserIdentityType> values = [
    iam,
    quicksight,
    iamIdentityCenter,
  ];
}

/// Quicksight User enum for `user_role`.
extension type const QuicksightUserRole._(TfArg<String> _)
    implements TfArg<String> {
  QuicksightUserRole.variable(String name) : this._(TfArg.variable(name));
  QuicksightUserRole.expression(String template)
    : this._(TfArg.expression(template));
  const QuicksightUserRole.arg(TfArg<String> arg) : this._(arg);

  static const admin = QuicksightUserRole._(TfArgLiteral('ADMIN'));
  static const author = QuicksightUserRole._(TfArgLiteral('AUTHOR'));
  static const reader = QuicksightUserRole._(TfArgLiteral('READER'));
  static const restrictedAuthor = QuicksightUserRole._(
    TfArgLiteral('RESTRICTED_AUTHOR'),
  );
  static const restrictedReader = QuicksightUserRole._(
    TfArgLiteral('RESTRICTED_READER'),
  );
  static const adminPro = QuicksightUserRole._(TfArgLiteral('ADMIN_PRO'));
  static const authorPro = QuicksightUserRole._(TfArgLiteral('AUTHOR_PRO'));
  static const readerPro = QuicksightUserRole._(TfArgLiteral('READER_PRO'));

  static const List<QuicksightUserRole> values = [
    admin,
    author,
    reader,
    restrictedAuthor,
    restrictedReader,
    adminPro,
    authorPro,
    readerPro,
  ];
}

/// Factory wrapper for `aws_quicksight_user`.
final class AwsQuicksightUser extends Resource {
  static const String tfType = 'aws_quicksight_user';

  AwsQuicksightUser(
    super.localName, {
    TfArg<String>? awsAccountId,
    required TfArg<String> email,
    TfArg<String>? iamArn,
    required QuicksightUserIdentityType identityType,
    TfArg<String>? namespace,
    TfArg<String>? region,
    TfArg<String>? sessionName,
    TfArg<String>? userName,
    required QuicksightUserRole userRole,
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
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `iam_arn` attribute.
  TfRef<String> get iamArn => TfRef.attribute<String>(this, 'iam_arn');

  /// Reference to `identity_type` attribute.
  TfRef<String> get identityType =>
      TfRef.attribute<String>(this, 'identity_type');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `session_name` attribute.
  TfRef<String> get sessionName =>
      TfRef.attribute<String>(this, 'session_name');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');

  /// Reference to `user_role` attribute.
  TfRef<String> get userRole => TfRef.attribute<String>(this, 'user_role');
}
