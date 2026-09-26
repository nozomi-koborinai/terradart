// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_user_pool`.
const Set<String> _awsCognitoUserPoolSensitive = <String>{};

/// Typed helper for the `account_recovery_setting` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolAccountRecoverySetting {
  const CognitoUserPoolAccountRecoverySetting({this.recoveryMechanism});

  final List<CognitoUserPoolAccountRecoverySettingRecoveryMechanism>?
  recoveryMechanism;

  Map<String, Object?> encode() => {
    if (recoveryMechanism != null)
      'recovery_mechanism': [for (final e in recoveryMechanism!) e.encode()],
  };
}

/// Typed helper for the `account_recovery_setting.recovery_mechanism` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolAccountRecoverySettingRecoveryMechanism {
  const CognitoUserPoolAccountRecoverySettingRecoveryMechanism({
    required this.name,
    required this.priority,
  });

  final TfArg<String> name;

  final TfArg<num> priority;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'priority': priority.toTfJson(),
  };
}

/// Typed helper for the `admin_create_user_config` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolAdminCreateUserConfig {
  const CognitoUserPoolAdminCreateUserConfig({
    this.allowAdminCreateUserOnly,
    this.inviteMessageTemplate,
  });

  final TfArg<bool>? allowAdminCreateUserOnly;

  final CognitoUserPoolAdminCreateUserConfigInviteMessageTemplate?
  inviteMessageTemplate;

  Map<String, Object?> encode() => {
    if (allowAdminCreateUserOnly != null)
      'allow_admin_create_user_only': allowAdminCreateUserOnly!.toTfJson(),
    if (inviteMessageTemplate != null)
      'invite_message_template': inviteMessageTemplate!.encode(),
  };
}

/// Typed helper for the `admin_create_user_config.invite_message_template` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolAdminCreateUserConfigInviteMessageTemplate {
  const CognitoUserPoolAdminCreateUserConfigInviteMessageTemplate({
    this.emailMessage,
    this.emailSubject,
    this.smsMessage,
  });

  final TfArg<String>? emailMessage;

  final TfArg<String>? emailSubject;

  final TfArg<String>? smsMessage;

  Map<String, Object?> encode() => {
    if (emailMessage != null) 'email_message': emailMessage!.toTfJson(),
    if (emailSubject != null) 'email_subject': emailSubject!.toTfJson(),
    if (smsMessage != null) 'sms_message': smsMessage!.toTfJson(),
  };
}

/// Typed helper for the `device_configuration` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolDeviceConfiguration {
  const CognitoUserPoolDeviceConfiguration({
    this.challengeRequiredOnNewDevice,
    this.deviceOnlyRememberedOnUserPrompt,
  });

  final TfArg<bool>? challengeRequiredOnNewDevice;

  final TfArg<bool>? deviceOnlyRememberedOnUserPrompt;

  Map<String, Object?> encode() => {
    if (challengeRequiredOnNewDevice != null)
      'challenge_required_on_new_device': challengeRequiredOnNewDevice!
          .toTfJson(),
    if (deviceOnlyRememberedOnUserPrompt != null)
      'device_only_remembered_on_user_prompt': deviceOnlyRememberedOnUserPrompt!
          .toTfJson(),
  };
}

/// Typed helper for the `email_configuration` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolEmailConfiguration {
  const CognitoUserPoolEmailConfiguration({
    this.configurationSet,
    this.emailSendingAccount,
    this.fromEmailAddress,
    this.replyToEmailAddress,
    this.sourceArn,
  });

  final TfArg<String>? configurationSet;

  final TfArg<String>? emailSendingAccount;

  final TfArg<String>? fromEmailAddress;

  final TfArg<String>? replyToEmailAddress;

  final TfArg<String>? sourceArn;

  Map<String, Object?> encode() => {
    if (configurationSet != null)
      'configuration_set': configurationSet!.toTfJson(),
    if (emailSendingAccount != null)
      'email_sending_account': emailSendingAccount!.toTfJson(),
    if (fromEmailAddress != null)
      'from_email_address': fromEmailAddress!.toTfJson(),
    if (replyToEmailAddress != null)
      'reply_to_email_address': replyToEmailAddress!.toTfJson(),
    if (sourceArn != null) 'source_arn': sourceArn!.toTfJson(),
  };
}

/// Typed helper for the `email_mfa_configuration` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolEmailMfaConfiguration {
  const CognitoUserPoolEmailMfaConfiguration({this.message, this.subject});

  final TfArg<String>? message;

  final TfArg<String>? subject;

  Map<String, Object?> encode() => {
    if (message != null) 'message': message!.toTfJson(),
    if (subject != null) 'subject': subject!.toTfJson(),
  };
}

/// Typed helper for the `lambda_config` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolLambdaConfig {
  const CognitoUserPoolLambdaConfig({
    this.createAuthChallenge,
    this.customMessage,
    this.defineAuthChallenge,
    this.kmsKeyId,
    this.postAuthentication,
    this.postConfirmation,
    this.preAuthentication,
    this.preSignUp,
    this.preTokenGeneration,
    this.userMigration,
    this.verifyAuthChallengeResponse,
    this.customEmailSender,
    this.customSmsSender,
    this.preTokenGenerationConfig,
  });

  final TfArg<String>? createAuthChallenge;

  final TfArg<String>? customMessage;

  final TfArg<String>? defineAuthChallenge;

  final TfArg<String>? kmsKeyId;

  final TfArg<String>? postAuthentication;

  final TfArg<String>? postConfirmation;

  final TfArg<String>? preAuthentication;

  final TfArg<String>? preSignUp;

  final TfArg<String>? preTokenGeneration;

  final TfArg<String>? userMigration;

  final TfArg<String>? verifyAuthChallengeResponse;

  final CognitoUserPoolLambdaConfigCustomEmailSender? customEmailSender;

  final CognitoUserPoolLambdaConfigCustomSmsSender? customSmsSender;

  final CognitoUserPoolLambdaConfigPreTokenGenerationConfig?
  preTokenGenerationConfig;

  Map<String, Object?> encode() => {
    if (createAuthChallenge != null)
      'create_auth_challenge': createAuthChallenge!.toTfJson(),
    if (customMessage != null) 'custom_message': customMessage!.toTfJson(),
    if (defineAuthChallenge != null)
      'define_auth_challenge': defineAuthChallenge!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (postAuthentication != null)
      'post_authentication': postAuthentication!.toTfJson(),
    if (postConfirmation != null)
      'post_confirmation': postConfirmation!.toTfJson(),
    if (preAuthentication != null)
      'pre_authentication': preAuthentication!.toTfJson(),
    if (preSignUp != null) 'pre_sign_up': preSignUp!.toTfJson(),
    if (preTokenGeneration != null)
      'pre_token_generation': preTokenGeneration!.toTfJson(),
    if (userMigration != null) 'user_migration': userMigration!.toTfJson(),
    if (verifyAuthChallengeResponse != null)
      'verify_auth_challenge_response': verifyAuthChallengeResponse!.toTfJson(),
    if (customEmailSender != null)
      'custom_email_sender': customEmailSender!.encode(),
    if (customSmsSender != null) 'custom_sms_sender': customSmsSender!.encode(),
    if (preTokenGenerationConfig != null)
      'pre_token_generation_config': preTokenGenerationConfig!.encode(),
  };
}

/// Typed helper for the `lambda_config.custom_email_sender` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolLambdaConfigCustomEmailSender {
  const CognitoUserPoolLambdaConfigCustomEmailSender({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  final TfArg<String> lambdaArn;

  final TfArg<String> lambdaVersion;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.toTfJson(),
    'lambda_version': lambdaVersion.toTfJson(),
  };
}

/// Typed helper for the `lambda_config.custom_sms_sender` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolLambdaConfigCustomSmsSender {
  const CognitoUserPoolLambdaConfigCustomSmsSender({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  final TfArg<String> lambdaArn;

  final TfArg<String> lambdaVersion;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.toTfJson(),
    'lambda_version': lambdaVersion.toTfJson(),
  };
}

/// Typed helper for the `lambda_config.pre_token_generation_config` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolLambdaConfigPreTokenGenerationConfig {
  const CognitoUserPoolLambdaConfigPreTokenGenerationConfig({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  final TfArg<String> lambdaArn;

  final TfArg<String> lambdaVersion;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.toTfJson(),
    'lambda_version': lambdaVersion.toTfJson(),
  };
}

/// Typed helper for the `password_policy` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolPasswordPolicy {
  const CognitoUserPoolPasswordPolicy({
    this.minimumLength,
    this.passwordHistorySize,
    this.requireLowercase,
    this.requireNumbers,
    this.requireSymbols,
    this.requireUppercase,
    this.temporaryPasswordValidityDays,
  });

  final TfArg<num>? minimumLength;

  final TfArg<num>? passwordHistorySize;

  final TfArg<bool>? requireLowercase;

  final TfArg<bool>? requireNumbers;

  final TfArg<bool>? requireSymbols;

  final TfArg<bool>? requireUppercase;

  final TfArg<num>? temporaryPasswordValidityDays;

  Map<String, Object?> encode() => {
    if (minimumLength != null) 'minimum_length': minimumLength!.toTfJson(),
    if (passwordHistorySize != null)
      'password_history_size': passwordHistorySize!.toTfJson(),
    if (requireLowercase != null)
      'require_lowercase': requireLowercase!.toTfJson(),
    if (requireNumbers != null) 'require_numbers': requireNumbers!.toTfJson(),
    if (requireSymbols != null) 'require_symbols': requireSymbols!.toTfJson(),
    if (requireUppercase != null)
      'require_uppercase': requireUppercase!.toTfJson(),
    if (temporaryPasswordValidityDays != null)
      'temporary_password_validity_days': temporaryPasswordValidityDays!
          .toTfJson(),
  };
}

/// Typed helper for the `schema` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolSchema {
  const CognitoUserPoolSchema({
    required this.attributeDataType,
    this.developerOnlyAttribute,
    this.mutable,
    required this.name,
    this.required,
    this.numberAttributeConstraints,
    this.stringAttributeConstraints,
  });

  final TfArg<String> attributeDataType;

  final TfArg<bool>? developerOnlyAttribute;

  final TfArg<bool>? mutable;

  final TfArg<String> name;

  final TfArg<bool>? required;

  final CognitoUserPoolSchemaNumberAttributeConstraints?
  numberAttributeConstraints;

  final CognitoUserPoolSchemaStringAttributeConstraints?
  stringAttributeConstraints;

  Map<String, Object?> encode() => {
    'attribute_data_type': attributeDataType.toTfJson(),
    if (developerOnlyAttribute != null)
      'developer_only_attribute': developerOnlyAttribute!.toTfJson(),
    if (mutable != null) 'mutable': mutable!.toTfJson(),
    'name': name.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    if (numberAttributeConstraints != null)
      'number_attribute_constraints': numberAttributeConstraints!.encode(),
    if (stringAttributeConstraints != null)
      'string_attribute_constraints': stringAttributeConstraints!.encode(),
  };
}

/// Typed helper for the `schema.number_attribute_constraints` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolSchemaNumberAttributeConstraints {
  const CognitoUserPoolSchemaNumberAttributeConstraints({
    this.maxValue,
    this.minValue,
  });

  final TfArg<String>? maxValue;

  final TfArg<String>? minValue;

  Map<String, Object?> encode() => {
    if (maxValue != null) 'max_value': maxValue!.toTfJson(),
    if (minValue != null) 'min_value': minValue!.toTfJson(),
  };
}

/// Typed helper for the `schema.string_attribute_constraints` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolSchemaStringAttributeConstraints {
  const CognitoUserPoolSchemaStringAttributeConstraints({
    this.maxLength,
    this.minLength,
  });

  final TfArg<String>? maxLength;

  final TfArg<String>? minLength;

  Map<String, Object?> encode() => {
    if (maxLength != null) 'max_length': maxLength!.toTfJson(),
    if (minLength != null) 'min_length': minLength!.toTfJson(),
  };
}

/// Typed helper for the `sign_in_policy` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolSignInPolicy {
  const CognitoUserPoolSignInPolicy({this.allowedFirstAuthFactors});

  final TfArg<List<Object?>>? allowedFirstAuthFactors;

  Map<String, Object?> encode() => {
    if (allowedFirstAuthFactors != null)
      'allowed_first_auth_factors': allowedFirstAuthFactors!.toTfJson(),
  };
}

/// Typed helper for the `sms_configuration` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolSmsConfiguration {
  const CognitoUserPoolSmsConfiguration({
    required this.externalId,
    required this.snsCallerArn,
    this.snsRegion,
  });

  final TfArg<String> externalId;

  final TfArg<String> snsCallerArn;

  final TfArg<String>? snsRegion;

  Map<String, Object?> encode() => {
    'external_id': externalId.toTfJson(),
    'sns_caller_arn': snsCallerArn.toTfJson(),
    if (snsRegion != null) 'sns_region': snsRegion!.toTfJson(),
  };
}

/// Typed helper for the `software_token_mfa_configuration` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolSoftwareTokenMfaConfiguration {
  const CognitoUserPoolSoftwareTokenMfaConfiguration({required this.enabled});

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Typed helper for the `user_attribute_update_settings` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolUserAttributeUpdateSettings {
  const CognitoUserPoolUserAttributeUpdateSettings({
    required this.attributesRequireVerificationBeforeUpdate,
  });

  final TfArg<List<Object?>> attributesRequireVerificationBeforeUpdate;

  Map<String, Object?> encode() => {
    'attributes_require_verification_before_update':
        attributesRequireVerificationBeforeUpdate.toTfJson(),
  };
}

/// Typed helper for the `user_pool_add_ons` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolUserPoolAddOns {
  const CognitoUserPoolUserPoolAddOns({
    required this.advancedSecurityMode,
    this.advancedSecurityAdditionalFlows,
  });

  final TfArg<String> advancedSecurityMode;

  final CognitoUserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows?
  advancedSecurityAdditionalFlows;

  Map<String, Object?> encode() => {
    'advanced_security_mode': advancedSecurityMode.toTfJson(),
    if (advancedSecurityAdditionalFlows != null)
      'advanced_security_additional_flows': advancedSecurityAdditionalFlows!
          .encode(),
  };
}

/// Typed helper for the `user_pool_add_ons.advanced_security_additional_flows` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows {
  const CognitoUserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows({
    this.customAuthMode,
  });

  final TfArg<String>? customAuthMode;

  Map<String, Object?> encode() => {
    if (customAuthMode != null) 'custom_auth_mode': customAuthMode!.toTfJson(),
  };
}

/// Typed helper for the `username_configuration` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolUsernameConfiguration {
  const CognitoUserPoolUsernameConfiguration({this.caseSensitive});

  final TfArg<bool>? caseSensitive;

  Map<String, Object?> encode() => {
    if (caseSensitive != null) 'case_sensitive': caseSensitive!.toTfJson(),
  };
}

/// Typed helper for the `verification_message_template` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolVerificationMessageTemplate {
  const CognitoUserPoolVerificationMessageTemplate({
    this.defaultEmailOption,
    this.emailMessage,
    this.emailMessageByLink,
    this.emailSubject,
    this.emailSubjectByLink,
    this.smsMessage,
  });

  final TfArg<String>? defaultEmailOption;

  final TfArg<String>? emailMessage;

  final TfArg<String>? emailMessageByLink;

  final TfArg<String>? emailSubject;

  final TfArg<String>? emailSubjectByLink;

  final TfArg<String>? smsMessage;

  Map<String, Object?> encode() => {
    if (defaultEmailOption != null)
      'default_email_option': defaultEmailOption!.toTfJson(),
    if (emailMessage != null) 'email_message': emailMessage!.toTfJson(),
    if (emailMessageByLink != null)
      'email_message_by_link': emailMessageByLink!.toTfJson(),
    if (emailSubject != null) 'email_subject': emailSubject!.toTfJson(),
    if (emailSubjectByLink != null)
      'email_subject_by_link': emailSubjectByLink!.toTfJson(),
    if (smsMessage != null) 'sms_message': smsMessage!.toTfJson(),
  };
}

/// Typed helper for the `web_authn_configuration` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolWebAuthnConfiguration {
  const CognitoUserPoolWebAuthnConfiguration({
    this.relyingPartyId,
    this.userVerification,
  });

  final TfArg<String>? relyingPartyId;

  final TfArg<String>? userVerification;

  Map<String, Object?> encode() => {
    if (relyingPartyId != null) 'relying_party_id': relyingPartyId!.toTfJson(),
    if (userVerification != null)
      'user_verification': userVerification!.toTfJson(),
  };
}

/// Factory wrapper for `aws_cognito_user_pool`.
final class AwsCognitoUserPool extends Resource {
  static const String tfType = 'aws_cognito_user_pool';

  AwsCognitoUserPool({
    required super.localName,
    TfArg<List<String>>? aliasAttributes,
    TfArg<List<String>>? autoVerifiedAttributes,
    TfArg<String>? deletionProtection,
    TfArg<String>? emailVerificationMessage,
    TfArg<String>? emailVerificationSubject,
    TfArg<String>? mfaConfiguration,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? smsAuthenticationMessage,
    TfArg<String>? smsVerificationMessage,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? userPoolTier,
    TfArg<List<String>>? usernameAttributes,
    CognitoUserPoolAccountRecoverySetting? accountRecoverySetting,
    CognitoUserPoolAdminCreateUserConfig? adminCreateUserConfig,
    CognitoUserPoolDeviceConfiguration? deviceConfiguration,
    CognitoUserPoolEmailConfiguration? emailConfiguration,
    CognitoUserPoolEmailMfaConfiguration? emailMfaConfiguration,
    CognitoUserPoolLambdaConfig? lambdaConfig,
    CognitoUserPoolPasswordPolicy? passwordPolicy,
    List<CognitoUserPoolSchema>? schema,
    CognitoUserPoolSignInPolicy? signInPolicy,
    CognitoUserPoolSmsConfiguration? smsConfiguration,
    CognitoUserPoolSoftwareTokenMfaConfiguration? softwareTokenMfaConfiguration,
    CognitoUserPoolUserAttributeUpdateSettings? userAttributeUpdateSettings,
    CognitoUserPoolUserPoolAddOns? userPoolAddOns,
    CognitoUserPoolUsernameConfiguration? usernameConfiguration,
    CognitoUserPoolVerificationMessageTemplate? verificationMessageTemplate,
    CognitoUserPoolWebAuthnConfiguration? webAuthnConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (aliasAttributes != null) 'alias_attributes': aliasAttributes,
           if (autoVerifiedAttributes != null)
             'auto_verified_attributes': autoVerifiedAttributes,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (emailVerificationMessage != null)
             'email_verification_message': emailVerificationMessage,
           if (emailVerificationSubject != null)
             'email_verification_subject': emailVerificationSubject,
           if (mfaConfiguration != null) 'mfa_configuration': mfaConfiguration,
           'name': name,
           if (region != null) 'region': region,
           if (smsAuthenticationMessage != null)
             'sms_authentication_message': smsAuthenticationMessage,
           if (smsVerificationMessage != null)
             'sms_verification_message': smsVerificationMessage,
           if (tags != null) 'tags': tags,
           if (userPoolTier != null) 'user_pool_tier': userPoolTier,
           if (usernameAttributes != null)
             'username_attributes': usernameAttributes,
           if (accountRecoverySetting != null)
             'account_recovery_setting': TfArg.literal(
               accountRecoverySetting.encode(),
             ),
           if (adminCreateUserConfig != null)
             'admin_create_user_config': TfArg.literal(
               adminCreateUserConfig.encode(),
             ),
           if (deviceConfiguration != null)
             'device_configuration': TfArg.literal(
               deviceConfiguration.encode(),
             ),
           if (emailConfiguration != null)
             'email_configuration': TfArg.literal(emailConfiguration.encode()),
           if (emailMfaConfiguration != null)
             'email_mfa_configuration': TfArg.literal(
               emailMfaConfiguration.encode(),
             ),
           if (lambdaConfig != null)
             'lambda_config': TfArg.literal(lambdaConfig.encode()),
           if (passwordPolicy != null)
             'password_policy': TfArg.literal(passwordPolicy.encode()),
           if (schema != null)
             'schema': TfArg.literal([for (final e in schema) e.encode()]),
           if (signInPolicy != null)
             'sign_in_policy': TfArg.literal(signInPolicy.encode()),
           if (smsConfiguration != null)
             'sms_configuration': TfArg.literal(smsConfiguration.encode()),
           if (softwareTokenMfaConfiguration != null)
             'software_token_mfa_configuration': TfArg.literal(
               softwareTokenMfaConfiguration.encode(),
             ),
           if (userAttributeUpdateSettings != null)
             'user_attribute_update_settings': TfArg.literal(
               userAttributeUpdateSettings.encode(),
             ),
           if (userPoolAddOns != null)
             'user_pool_add_ons': TfArg.literal(userPoolAddOns.encode()),
           if (usernameConfiguration != null)
             'username_configuration': TfArg.literal(
               usernameConfiguration.encode(),
             ),
           if (verificationMessageTemplate != null)
             'verification_message_template': TfArg.literal(
               verificationMessageTemplate.encode(),
             ),
           if (webAuthnConfiguration != null)
             'web_authn_configuration': TfArg.literal(
               webAuthnConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserPoolSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `custom_domain` attribute.
  TfRef<String> get customDomain =>
      TfRef.attribute<String>(this, 'custom_domain');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `estimated_number_of_users` attribute.
  TfRef<num> get estimatedNumberOfUsers =>
      TfRef.attribute<num>(this, 'estimated_number_of_users');

  /// Reference to `last_modified_date` attribute.
  TfRef<String> get lastModifiedDate =>
      TfRef.attribute<String>(this, 'last_modified_date');
}
