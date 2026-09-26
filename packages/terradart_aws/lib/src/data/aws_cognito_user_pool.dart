// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_user_pool`.
const Set<String> _awsCognitoUserPoolSensitive = <String>{};

/// Factory wrapper for `aws_cognito_user_pool`.
final class DataAwsCognitoUserPool extends Data {
  static const String tfType = 'aws_cognito_user_pool';

  DataAwsCognitoUserPool({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'user_pool_id': userPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserPoolSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_recovery_setting` attribute.
  TfRef<List<Map<String, Object?>>> get accountRecoverySetting =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'account_recovery_setting',
      );

  /// Reference to `admin_create_user_config` attribute.
  TfRef<List<Map<String, Object?>>> get adminCreateUserConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'admin_create_user_config',
      );

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auto_verified_attributes` attribute.
  TfRef<List<String>> get autoVerifiedAttributes =>
      TfRef.attribute<List<String>>(this, 'auto_verified_attributes');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `custom_domain` attribute.
  TfRef<String> get customDomain =>
      TfRef.attribute<String>(this, 'custom_domain');

  /// Reference to `deletion_protection` attribute.
  TfRef<String> get deletionProtection =>
      TfRef.attribute<String>(this, 'deletion_protection');

  /// Reference to `device_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get deviceConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'device_configuration');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `email_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get emailConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'email_configuration');

  /// Reference to `estimated_number_of_users` attribute.
  TfRef<num> get estimatedNumberOfUsers =>
      TfRef.attribute<num>(this, 'estimated_number_of_users');

  /// Reference to `lambda_config` attribute.
  TfRef<List<Map<String, Object?>>> get lambdaConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'lambda_config');

  /// Reference to `last_modified_date` attribute.
  TfRef<String> get lastModifiedDate =>
      TfRef.attribute<String>(this, 'last_modified_date');

  /// Reference to `mfa_configuration` attribute.
  TfRef<String> get mfaConfiguration =>
      TfRef.attribute<String>(this, 'mfa_configuration');

  /// Reference to `schema_attributes` attribute.
  TfRef<List<Map<String, Object?>>> get schemaAttributes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'schema_attributes');

  /// Reference to `sms_authentication_message` attribute.
  TfRef<String> get smsAuthenticationMessage =>
      TfRef.attribute<String>(this, 'sms_authentication_message');

  /// Reference to `sms_configuration_failure` attribute.
  TfRef<String> get smsConfigurationFailure =>
      TfRef.attribute<String>(this, 'sms_configuration_failure');

  /// Reference to `sms_verification_message` attribute.
  TfRef<String> get smsVerificationMessage =>
      TfRef.attribute<String>(this, 'sms_verification_message');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `user_pool_add_ons` attribute.
  TfRef<List<Map<String, Object?>>> get userPoolAddOns =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'user_pool_add_ons');

  /// Reference to `user_pool_tags` attribute.
  TfRef<Map<String, String>> get userPoolTags =>
      TfRef.attribute<Map<String, String>>(this, 'user_pool_tags');

  /// Reference to `username_attributes` attribute.
  TfRef<List<String>> get usernameAttributes =>
      TfRef.attribute<List<String>>(this, 'username_attributes');
}
