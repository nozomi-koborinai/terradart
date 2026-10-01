// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_role_membership`.
const Set<String> _awsQuicksightRoleMembershipSensitive = <String>{};

/// Quicksight Role Membership enum for `role`.
extension type const QuicksightRoleMembershipRole._(TfArg<String> _)
    implements TfArg<String> {
  QuicksightRoleMembershipRole.variable(String name)
    : this._(TfArg.variable(name));
  QuicksightRoleMembershipRole.expression(String template)
    : this._(TfArg.expression(template));
  const QuicksightRoleMembershipRole.arg(TfArg<String> arg) : this._(arg);

  static const admin = QuicksightRoleMembershipRole._(TfArgLiteral('ADMIN'));
  static const author = QuicksightRoleMembershipRole._(TfArgLiteral('AUTHOR'));
  static const reader = QuicksightRoleMembershipRole._(TfArgLiteral('READER'));
  static const adminPro = QuicksightRoleMembershipRole._(
    TfArgLiteral('ADMIN_PRO'),
  );
  static const authorPro = QuicksightRoleMembershipRole._(
    TfArgLiteral('AUTHOR_PRO'),
  );
  static const readerPro = QuicksightRoleMembershipRole._(
    TfArgLiteral('READER_PRO'),
  );

  static const List<QuicksightRoleMembershipRole> values = [
    admin,
    author,
    reader,
    adminPro,
    authorPro,
    readerPro,
  ];
}

/// Factory wrapper for `aws_quicksight_role_membership`.
final class AwsQuicksightRoleMembership extends Resource {
  static const String tfType = 'aws_quicksight_role_membership';

  AwsQuicksightRoleMembership(
    super.localName, {
    TfArg<String>? awsAccountId,
    required TfArg<String> memberName,
    TfArg<String>? namespace,
    TfArg<String>? region,
    required QuicksightRoleMembershipRole role,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'member_name': memberName,
           'namespace': ?namespace,
           'region': ?region,
           'role': role,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightRoleMembershipSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightRoleMembership>`.
  RefTo<AwsQuicksightRoleMembership> get ref => RefTo.of(this);

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `member_name` attribute.
  TfRef<String> get memberName => TfRef.attribute<String>(this, 'member_name');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
