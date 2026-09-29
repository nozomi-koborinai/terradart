// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_user`.
const Set<String> _awsCognitoUserSensitive = <String>{
  'password',
  'temporary_password',
};

/// Cognito User Desired Delivery enum for `desired_delivery_mediums`.
enum CognitoUserDesiredDeliveryMediums implements TerraformEnum {
  sms('SMS'),
  email('EMAIL');

  const CognitoUserDesiredDeliveryMediums(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cognito User Message enum for `message_action`.
enum CognitoUserMessageAction implements TerraformEnum {
  resend('RESEND'),
  suppress('SUPPRESS');

  const CognitoUserMessageAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `password`, `temporary_password` on `aws_cognito_user`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.password(...)`.
sealed class CognitoUserPassword {
  const CognitoUserPassword();

  /// Sets `password`.
  const factory CognitoUserPassword.password(TfArg<String> password) =
      CognitoUserPasswordPassword;

  /// Sets `temporary_password`.
  const factory CognitoUserPassword.temporaryPassword(
    TfArg<String> temporaryPassword,
  ) = CognitoUserPasswordTemporaryPassword;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CognitoUserPassword.password] choice: sets `password`.
final class CognitoUserPasswordPassword extends CognitoUserPassword {
  const CognitoUserPasswordPassword(this.password);

  final TfArg<String> password;

  @override
  String get blockKey => 'password';

  @override
  Map<String, Object?> encode() => {'password': password.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'password': password};
}

/// The [CognitoUserPassword.temporaryPassword] choice: sets `temporary_password`.
final class CognitoUserPasswordTemporaryPassword extends CognitoUserPassword {
  const CognitoUserPasswordTemporaryPassword(this.temporaryPassword);

  final TfArg<String> temporaryPassword;

  @override
  String get blockKey => 'temporary_password';

  @override
  Map<String, Object?> encode() => {
    'temporary_password': temporaryPassword.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'temporary_password': temporaryPassword,
  };
}

/// Factory wrapper for `aws_cognito_user`.
final class AwsCognitoUser extends Resource {
  static const String tfType = 'aws_cognito_user';

  AwsCognitoUser({
    required super.localName,
    TfArg<Map<String, String>>? attributes,
    TfArg<Map<String, String>>? clientMetadata,
    List<TfArg<CognitoUserDesiredDeliveryMediums>>? desiredDeliveryMediums,
    TfArg<bool>? enabled,
    TfArg<bool>? forceAliasCreation,
    TfArg<CognitoUserMessageAction>? messageAction,
    CognitoUserPassword? password,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    required TfArg<String> username,
    TfArg<Map<String, String>>? validationData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (attributes != null) 'attributes': attributes,
           if (clientMetadata != null) 'client_metadata': clientMetadata,
           if (desiredDeliveryMediums != null)
             'desired_delivery_mediums': TfArg.literal([
               for (final e in desiredDeliveryMediums) e.toTfJson(),
             ]),
           if (enabled != null) 'enabled': enabled,
           if (forceAliasCreation != null)
             'force_alias_creation': forceAliasCreation,
           if (messageAction != null) 'message_action': messageAction,
           ...?password?.argMap,
           if (region != null) 'region': region,
           'user_pool_id': userPoolId,
           'username': username,
           if (validationData != null) 'validation_data': validationData,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoUser>`.
  RefTo<AwsCognitoUser> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `last_modified_date` attribute.
  TfRef<String> get lastModifiedDate =>
      TfRef.attribute<String>(this, 'last_modified_date');

  /// Reference to `mfa_setting_list` attribute.
  TfRef<List<String>> get mfaSettingList =>
      TfRef.attribute<List<String>>(this, 'mfa_setting_list');

  /// Reference to `preferred_mfa_setting` attribute.
  TfRef<String> get preferredMfaSetting =>
      TfRef.attribute<String>(this, 'preferred_mfa_setting');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `sub` attribute.
  TfRef<String> get sub => TfRef.attribute<String>(this, 'sub');
}
