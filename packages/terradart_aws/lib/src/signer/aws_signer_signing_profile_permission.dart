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

/// At most one of `statement_id`, `statement_id_prefix` on `aws_signer_signing_profile_permission`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.statementId(...)`.
sealed class SignerSigningProfilePermissionStatementId {
  const SignerSigningProfilePermissionStatementId();

  /// Sets `statement_id`.
  const factory SignerSigningProfilePermissionStatementId.statementId(
    TfArg<String> statementId,
  ) = SignerSigningProfilePermissionStatementIdChoice;

  /// Sets `statement_id_prefix`.
  const factory SignerSigningProfilePermissionStatementId.statementIdPrefix(
    TfArg<String> statementIdPrefix,
  ) = SignerSigningProfilePermissionStatementIdPrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SignerSigningProfilePermissionStatementId.statementId] choice: sets `statement_id`.
final class SignerSigningProfilePermissionStatementIdChoice
    extends SignerSigningProfilePermissionStatementId {
  const SignerSigningProfilePermissionStatementIdChoice(this.statementId);

  final TfArg<String> statementId;

  @override
  String get blockKey => 'statement_id';

  @override
  Map<String, Object?> encode() => {'statement_id': statementId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'statement_id': statementId};
}

/// The [SignerSigningProfilePermissionStatementId.statementIdPrefix] choice: sets `statement_id_prefix`.
final class SignerSigningProfilePermissionStatementIdPrefix
    extends SignerSigningProfilePermissionStatementId {
  const SignerSigningProfilePermissionStatementIdPrefix(this.statementIdPrefix);

  final TfArg<String> statementIdPrefix;

  @override
  String get blockKey => 'statement_id_prefix';

  @override
  Map<String, Object?> encode() => {
    'statement_id_prefix': statementIdPrefix.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'statement_id_prefix': statementIdPrefix,
  };
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
    SignerSigningProfilePermissionStatementId? statementId,
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
           ...?statementId?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSignerSigningProfilePermissionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSignerSigningProfilePermission>`.
  RefTo<AwsSignerSigningProfilePermission> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
