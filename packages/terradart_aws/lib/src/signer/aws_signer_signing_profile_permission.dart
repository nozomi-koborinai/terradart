// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_signer_signing_profile_permission`.
const Set<String> _awsSignerSigningProfilePermissionSensitive = <String>{};

/// Signer Signing Profile Permission enum for `action`.
enum SignerSigningProfilePermissionAction implements TerraformEnum {
  signerStartsigningjob('signer:StartSigningJob'),
  signerGetsigningprofile('signer:GetSigningProfile'),
  signerRevokesignature('signer:RevokeSignature'),
  signerSignpayload('signer:SignPayload');

  const SignerSigningProfilePermissionAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_signer_signing_profile_permission`.
final class AwsSignerSigningProfilePermission extends Resource {
  static const String tfType = 'aws_signer_signing_profile_permission';

  AwsSignerSigningProfilePermission({
    required super.localName,
    required TfArg<SignerSigningProfilePermissionAction> action,
    required TfArg<String> principal,
    required TfArg<String> profileName,
    TfArg<String>? profileVersion,
    TfArg<String>? region,
    TfArg<String>? statementId,
    TfArg<String>? statementIdPrefix,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'principal': principal,
           'profile_name': profileName,
           if (profileVersion != null) 'profile_version': profileVersion,
           if (region != null) 'region': region,
           if (statementId != null) 'statement_id': statementId,
           if (statementIdPrefix != null)
             'statement_id_prefix': statementIdPrefix,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSignerSigningProfilePermissionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
