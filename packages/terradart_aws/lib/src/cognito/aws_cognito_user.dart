// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_user`.
const Set<String> _awsCognitoUserSensitive = <String>{
  'password',
  'temporary_password',
};

/// Factory wrapper for `aws_cognito_user`.
final class AwsCognitoUser extends Resource {
  static const String tfType = 'aws_cognito_user';

  AwsCognitoUser({
    required super.localName,
    TfArg<Map<String, String>>? attributes,
    TfArg<Map<String, String>>? clientMetadata,
    TfArg<List<String>>? desiredDeliveryMediums,
    TfArg<bool>? enabled,
    TfArg<bool>? forceAliasCreation,
    TfArg<String>? messageAction,
    TfArg<String>? password,
    TfArg<String>? region,
    TfArg<String>? temporaryPassword,
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
             'desired_delivery_mediums': desiredDeliveryMediums,
           if (enabled != null) 'enabled': enabled,
           if (forceAliasCreation != null)
             'force_alias_creation': forceAliasCreation,
           if (messageAction != null) 'message_action': messageAction,
           if (password != null) 'password': password,
           if (region != null) 'region': region,
           if (temporaryPassword != null)
             'temporary_password': temporaryPassword,
           'user_pool_id': userPoolId,
           'username': username,
           if (validationData != null) 'validation_data': validationData,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserSensitive;

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
