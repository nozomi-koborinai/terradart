// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_acmpca_permission`.
const Set<String> _awsAcmpcaPermissionSensitive = <String>{};

/// Acmpca Permission enum for `actions`.
enum AcmpcaPermissionActions implements TerraformEnum {
  issuecertificate('IssueCertificate'),
  getcertificate('GetCertificate'),
  listpermissions('ListPermissions');

  const AcmpcaPermissionActions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Acmpca Permission enum for `principal`.
enum AcmpcaPermissionPrincipal implements TerraformEnum {
  acmAmazonawsCom('acm.amazonaws.com');

  const AcmpcaPermissionPrincipal(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_acmpca_permission`.
final class AwsAcmpcaPermission extends Resource {
  static const String tfType = 'aws_acmpca_permission';

  AwsAcmpcaPermission({
    required super.localName,
    required List<TfArg<AcmpcaPermissionActions>> actions,
    required TfArg<String> certificateAuthorityArn,
    required TfArg<AcmpcaPermissionPrincipal> principal,
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
