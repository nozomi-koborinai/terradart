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

  AwsSignerSigningProfilePermission(
    super.localName, {
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
           'profile_version': ?profileVersion,
           'region': ?region,
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

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `principal` attribute.
  TfRef<String> get principal => TfRef.attribute<String>(this, 'principal');

  /// Reference to `profile_name` attribute.
  TfRef<String> get profileName =>
      TfRef.attribute<String>(this, 'profile_name');

  /// Reference to `profile_version` attribute.
  TfRef<String> get profileVersion =>
      TfRef.attribute<String>(this, 'profile_version');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `statement_id` attribute.
  TfRef<String> get statementId =>
      TfRef.attribute<String>(this, 'statement_id');

  /// Reference to `statement_id_prefix` attribute.
  TfRef<String> get statementIdPrefix =>
      TfRef.attribute<String>(this, 'statement_id_prefix');
}
