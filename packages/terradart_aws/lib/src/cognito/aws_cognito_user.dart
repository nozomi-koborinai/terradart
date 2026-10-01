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
extension type const CognitoUserDesiredDeliveryMediums._(TfArg<String> _)
    implements TfArg<String> {
  CognitoUserDesiredDeliveryMediums.variable(String name)
    : this._(TfArg.variable(name));
  CognitoUserDesiredDeliveryMediums.expression(String template)
    : this._(TfArg.expression(template));
  const CognitoUserDesiredDeliveryMediums.arg(TfArg<String> arg) : this._(arg);

  static const sms = CognitoUserDesiredDeliveryMediums._(TfArgLiteral('SMS'));
  static const email = CognitoUserDesiredDeliveryMediums._(
    TfArgLiteral('EMAIL'),
  );

  static const List<CognitoUserDesiredDeliveryMediums> values = [sms, email];
}

/// Cognito User Message enum for `message_action`.
extension type const CognitoUserMessageAction._(TfArg<String> _)
    implements TfArg<String> {
  CognitoUserMessageAction.variable(String name) : this._(TfArg.variable(name));
  CognitoUserMessageAction.expression(String template)
    : this._(TfArg.expression(template));
  const CognitoUserMessageAction.arg(TfArg<String> arg) : this._(arg);

  static const resend = CognitoUserMessageAction._(TfArgLiteral('RESEND'));
  static const suppress = CognitoUserMessageAction._(TfArgLiteral('SUPPRESS'));

  static const List<CognitoUserMessageAction> values = [resend, suppress];
}

/// At most one of `password`, `temporary_password` on `aws_cognito_user`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.password(...)`.
sealed class CognitoUserPassword {
  const CognitoUserPassword();

  /// Sets `password`.
  const factory CognitoUserPassword.password(Sensitive<String> password) =
      CognitoUserPasswordChoice;

  /// Sets `temporary_password`.
  const factory CognitoUserPassword.temporaryPassword(
    Sensitive<String> temporaryPassword,
  ) = CognitoUserTemporaryPassword;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CognitoUserPassword.password] choice: sets `password`.
final class CognitoUserPasswordChoice extends CognitoUserPassword {
  const CognitoUserPasswordChoice(this.password);

  final Sensitive<String> password;

  @override
  String get blockKey => 'password';

  @override
  Map<String, Object?> encode() => {'password': password.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'password': password};
}

/// The [CognitoUserPassword.temporaryPassword] choice: sets `temporary_password`.
final class CognitoUserTemporaryPassword extends CognitoUserPassword {
  const CognitoUserTemporaryPassword(this.temporaryPassword);

  final Sensitive<String> temporaryPassword;

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

  AwsCognitoUser(
    super.localName, {
    TfArg<Map<String, String>>? attributes,
    TfArg<Map<String, String>>? clientMetadata,
    List<CognitoUserDesiredDeliveryMediums>? desiredDeliveryMediums,
    TfArg<bool>? enabled,
    TfArg<bool>? forceAliasCreation,
    CognitoUserMessageAction? messageAction,
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
           'attributes': ?attributes,
           'client_metadata': ?clientMetadata,
           if (desiredDeliveryMediums != null)
             'desired_delivery_mediums': TfArg.literal([
               for (final e in desiredDeliveryMediums) e.toTfJson(),
             ]),
           'enabled': ?enabled,
           'force_alias_creation': ?forceAliasCreation,
           'message_action': ?messageAction,
           ...?password?.argMap,
           'region': ?region,
           'user_pool_id': userPoolId,
           'username': username,
           'validation_data': ?validationData,
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

  /// Reference to `attributes` attribute.
  TfRef<Map<String, String>> get attributes =>
      TfRef.attribute<Map<String, String>>(this, 'attributes');

  /// Reference to `client_metadata` attribute.
  TfRef<Map<String, String>> get clientMetadata =>
      TfRef.attribute<Map<String, String>>(this, 'client_metadata');

  /// Reference to `desired_delivery_mediums` attribute.
  TfRef<List<String>> get desiredDeliveryMediums =>
      TfRef.attribute<List<String>>(this, 'desired_delivery_mediums');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `force_alias_creation` attribute.
  TfRef<bool> get forceAliasCreation =>
      TfRef.attribute<bool>(this, 'force_alias_creation');

  /// Reference to `message_action` attribute.
  TfRef<String> get messageAction =>
      TfRef.attribute<String>(this, 'message_action');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `temporary_password` attribute.
  TfRef<String> get temporaryPassword =>
      TfRef.attribute<String>(this, 'temporary_password');

  /// Reference to `user_pool_id` attribute.
  TfRef<String> get userPoolId => TfRef.attribute<String>(this, 'user_pool_id');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');

  /// Reference to `validation_data` attribute.
  TfRef<Map<String, String>> get validationData =>
      TfRef.attribute<Map<String, String>>(this, 'validation_data');
}
