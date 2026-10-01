// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_acmpca_permission`.
const Set<String> _awsAcmpcaPermissionSensitive = <String>{};

/// Acmpca Permission enum for `actions`.
extension type const AcmpcaPermissionActions._(TfArg<String> _)
    implements TfArg<String> {
  AcmpcaPermissionActions.variable(String name) : this._(TfArg.variable(name));
  AcmpcaPermissionActions.expression(String template)
    : this._(TfArg.expression(template));
  const AcmpcaPermissionActions.arg(TfArg<String> arg) : this._(arg);

  static const issuecertificate = AcmpcaPermissionActions._(
    TfArgLiteral('IssueCertificate'),
  );
  static const getcertificate = AcmpcaPermissionActions._(
    TfArgLiteral('GetCertificate'),
  );
  static const listpermissions = AcmpcaPermissionActions._(
    TfArgLiteral('ListPermissions'),
  );

  static const List<AcmpcaPermissionActions> values = [
    issuecertificate,
    getcertificate,
    listpermissions,
  ];
}

/// Acmpca Permission enum for `principal`.
extension type const AcmpcaPermissionPrincipal._(TfArg<String> _)
    implements TfArg<String> {
  AcmpcaPermissionPrincipal.variable(String name)
    : this._(TfArg.variable(name));
  AcmpcaPermissionPrincipal.expression(String template)
    : this._(TfArg.expression(template));
  const AcmpcaPermissionPrincipal.arg(TfArg<String> arg) : this._(arg);

  static const acmAmazonawsCom = AcmpcaPermissionPrincipal._(
    TfArgLiteral('acm.amazonaws.com'),
  );

  static const List<AcmpcaPermissionPrincipal> values = [acmAmazonawsCom];
}

/// Factory wrapper for `aws_acmpca_permission`.
final class AwsAcmpcaPermission extends Resource {
  static const String tfType = 'aws_acmpca_permission';

  AwsAcmpcaPermission(
    super.localName, {
    required List<AcmpcaPermissionActions> actions,
    required TfArg<String> certificateAuthorityArn,
    required AcmpcaPermissionPrincipal principal,
    TfArg<String>? region,
    TfArg<String>? sourceAccount,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'actions': TfArg.literal([for (final e in actions) e.toTfJson()]),
           'certificate_authority_arn': certificateAuthorityArn,
           'principal': principal,
           'region': ?region,
           'source_account': ?sourceAccount,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAcmpcaPermissionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAcmpcaPermission>`.
  RefTo<AwsAcmpcaPermission> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `actions` attribute.
  TfRef<List<String>> get actions =>
      TfRef.attribute<List<String>>(this, 'actions');

  /// Reference to `certificate_authority_arn` attribute.
  TfRef<String> get certificateAuthorityArn =>
      TfRef.attribute<String>(this, 'certificate_authority_arn');

  /// Reference to `principal` attribute.
  TfRef<String> get principal => TfRef.attribute<String>(this, 'principal');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `source_account` attribute.
  TfRef<String> get sourceAccount =>
      TfRef.attribute<String>(this, 'source_account');
}
