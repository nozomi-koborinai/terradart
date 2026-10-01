// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_role_custom_permission`.
const Set<String> _awsQuicksightRoleCustomPermissionSensitive = <String>{};

/// Quicksight Role Custom Permission enum for `role`.
extension type const QuicksightRoleCustomPermissionRole._(TfArg<String> _)
    implements TfArg<String> {
  QuicksightRoleCustomPermissionRole.variable(String name)
    : this._(TfArg.variable(name));
  QuicksightRoleCustomPermissionRole.expression(String template)
    : this._(TfArg.expression(template));
  const QuicksightRoleCustomPermissionRole.arg(TfArg<String> arg) : this._(arg);

  static const admin = QuicksightRoleCustomPermissionRole._(
    TfArgLiteral('ADMIN'),
  );
  static const author = QuicksightRoleCustomPermissionRole._(
    TfArgLiteral('AUTHOR'),
  );
  static const reader = QuicksightRoleCustomPermissionRole._(
    TfArgLiteral('READER'),
  );
  static const adminPro = QuicksightRoleCustomPermissionRole._(
    TfArgLiteral('ADMIN_PRO'),
  );
  static const authorPro = QuicksightRoleCustomPermissionRole._(
    TfArgLiteral('AUTHOR_PRO'),
  );
  static const readerPro = QuicksightRoleCustomPermissionRole._(
    TfArgLiteral('READER_PRO'),
  );

  static const List<QuicksightRoleCustomPermissionRole> values = [
    admin,
    author,
    reader,
    adminPro,
    authorPro,
    readerPro,
  ];
}

/// Factory wrapper for `aws_quicksight_role_custom_permission`.
final class AwsQuicksightRoleCustomPermission extends Resource {
  static const String tfType = 'aws_quicksight_role_custom_permission';

  AwsQuicksightRoleCustomPermission(
    super.localName, {
    TfArg<String>? awsAccountId,
    required TfArg<String> customPermissionsName,
    TfArg<String>? namespace,
    TfArg<String>? region,
    required QuicksightRoleCustomPermissionRole role,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'custom_permissions_name': customPermissionsName,
           'namespace': ?namespace,
           'region': ?region,
           'role': role,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsQuicksightRoleCustomPermissionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightRoleCustomPermission>`.
  RefTo<AwsQuicksightRoleCustomPermission> get ref => RefTo.of(this);

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `custom_permissions_name` attribute.
  TfRef<String> get customPermissionsName =>
      TfRef.attribute<String>(this, 'custom_permissions_name');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
