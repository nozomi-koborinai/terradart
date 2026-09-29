// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_cognito_user_pool`.
const Set<String> _awsCognitoUserPoolSensitive = <String>{};

/// Cognito User Pool Alias enum for `alias_attributes`.
enum CognitoUserPoolAliasAttributes implements TerraformEnum {
  phoneNumber('phone_number'),
  email('email'),
  preferredUsername('preferred_username');

  const CognitoUserPoolAliasAttributes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cognito User Pool Auto Verified enum for `auto_verified_attributes`.
enum CognitoUserPoolAutoVerifiedAttributes implements TerraformEnum {
  phoneNumber('phone_number'),
  email('email');

  const CognitoUserPoolAutoVerifiedAttributes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cognito User Pool Deletion enum for `deletion_protection`.
enum CognitoUserPoolDeletionProtection implements TerraformEnum {
  active('ACTIVE'),
  inactive('INACTIVE');

  const CognitoUserPoolDeletionProtection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cognito User Pool Mfa enum for `mfa_configuration`.
enum CognitoUserPoolMfaConfiguration implements TerraformEnum {
  off('OFF'),
  on('ON'),
  optional('OPTIONAL');

  const CognitoUserPoolMfaConfiguration(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cognito User Pool User Pool enum for `user_pool_tier`.
enum CognitoUserPoolUserPoolTier implements TerraformEnum {
  lite('LITE'),
  essentials('ESSENTIALS'),
  plus('PLUS');

  const CognitoUserPoolUserPoolTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cognito User Pool Username enum for `username_attributes`.
enum CognitoUserPoolUsernameAttributes implements TerraformEnum {
  phoneNumber('phone_number'),
  email('email');

  const CognitoUserPoolUsernameAttributes(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `alias_attributes`, `username_attributes` on `aws_cognito_user_pool`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.aliasAttributes(...)`.
sealed class CognitoUserPoolSignInAttributes {
  const CognitoUserPoolSignInAttributes();

  /// Sets `alias_attributes`.
  const factory CognitoUserPoolSignInAttributes.aliasAttributes(
    List<TfArg<CognitoUserPoolAliasAttributes>> aliasAttributes,
  ) = CognitoUserPoolSignInAttributesAliasAttributes;

  /// Sets `username_attributes`.
  const factory CognitoUserPoolSignInAttributes.usernameAttributes(
    List<TfArg<CognitoUserPoolUsernameAttributes>> usernameAttributes,
  ) = CognitoUserPoolSignInAttributesUsernameAttributes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CognitoUserPoolSignInAttributes.aliasAttributes] choice: sets `alias_attributes`.
final class CognitoUserPoolSignInAttributesAliasAttributes
    extends CognitoUserPoolSignInAttributes {
  const CognitoUserPoolSignInAttributesAliasAttributes(this.aliasAttributes);

  final List<TfArg<CognitoUserPoolAliasAttributes>> aliasAttributes;

  @override
  String get blockKey => 'alias_attributes';

  @override
  Map<String, Object?> encode() => {
    'alias_attributes': [for (final e in aliasAttributes) e.toTfJson()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'alias_attributes': TfArg.literal([
      for (final e in aliasAttributes) e.toTfJson(),
    ]),
  };
}

/// The [CognitoUserPoolSignInAttributes.usernameAttributes] choice: sets `username_attributes`.
final class CognitoUserPoolSignInAttributesUsernameAttributes
    extends CognitoUserPoolSignInAttributes {
  const CognitoUserPoolSignInAttributesUsernameAttributes(
    this.usernameAttributes,
  );

  final List<TfArg<CognitoUserPoolUsernameAttributes>> usernameAttributes;

  @override
  String get blockKey => 'username_attributes';

  @override
  Map<String, Object?> encode() => {
    'username_attributes': [for (final e in usernameAttributes) e.toTfJson()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'username_attributes': TfArg.literal([
      for (final e in usernameAttributes) e.toTfJson(),
    ]),
  };
}

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

  final TfArg<CognitoUserPoolAccountRecoverySettingRecoveryMechanismName> name;

  final TfArg<num> priority;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'priority': priority.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
enum CognitoUserPoolAccountRecoverySettingRecoveryMechanismName
    implements TerraformEnum {
  verifiedEmail('verified_email'),
  verifiedPhoneNumber('verified_phone_number'),
  adminOnly('admin_only');

  const CognitoUserPoolAccountRecoverySettingRecoveryMechanismName(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'allow_admin_create_user_only': ?allowAdminCreateUserOnly?.toTfJson(),
    'invite_message_template': ?inviteMessageTemplate?.encode(),
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
    'email_message': ?emailMessage?.toTfJson(),
    'email_subject': ?emailSubject?.toTfJson(),
    'sms_message': ?smsMessage?.toTfJson(),
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
    'challenge_required_on_new_device': ?challengeRequiredOnNewDevice
        ?.toTfJson(),
    'device_only_remembered_on_user_prompt': ?deviceOnlyRememberedOnUserPrompt
        ?.toTfJson(),
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

  final TfArg<CognitoUserPoolEmailConfigurationEmailSendingAccount>?
  emailSendingAccount;

  final TfArg<String>? fromEmailAddress;

  final TfArg<String>? replyToEmailAddress;

  final TfArg<String>? sourceArn;

  Map<String, Object?> encode() => {
    'configuration_set': ?configurationSet?.toTfJson(),
    'email_sending_account': ?emailSendingAccount?.toTfJson(),
    'from_email_address': ?fromEmailAddress?.toTfJson(),
    'reply_to_email_address': ?replyToEmailAddress?.toTfJson(),
    'source_arn': ?sourceArn?.toTfJson(),
  };
}

/// `email_sending_account` — derived from the provider schema description.
enum CognitoUserPoolEmailConfigurationEmailSendingAccount
    implements TerraformEnum {
  cognitoDefault('COGNITO_DEFAULT'),
  developer('DEVELOPER');

  const CognitoUserPoolEmailConfigurationEmailSendingAccount(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `email_mfa_configuration` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolEmailMfaConfiguration {
  const CognitoUserPoolEmailMfaConfiguration({this.message, this.subject});

  final TfArg<String>? message;

  final TfArg<String>? subject;

  Map<String, Object?> encode() => {
    'message': ?message?.toTfJson(),
    'subject': ?subject?.toTfJson(),
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

  final RefTo<AwsKmsKey>? kmsKeyId;

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
    'create_auth_challenge': ?createAuthChallenge?.toTfJson(),
    'custom_message': ?customMessage?.toTfJson(),
    'define_auth_challenge': ?defineAuthChallenge?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    'post_authentication': ?postAuthentication?.toTfJson(),
    'post_confirmation': ?postConfirmation?.toTfJson(),
    'pre_authentication': ?preAuthentication?.toTfJson(),
    'pre_sign_up': ?preSignUp?.toTfJson(),
    'pre_token_generation': ?preTokenGeneration?.toTfJson(),
    'user_migration': ?userMigration?.toTfJson(),
    'verify_auth_challenge_response': ?verifyAuthChallengeResponse?.toTfJson(),
    'custom_email_sender': ?customEmailSender?.encode(),
    'custom_sms_sender': ?customSmsSender?.encode(),
    'pre_token_generation_config': ?preTokenGenerationConfig?.encode(),
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

  final RefTo<AwsLambdaFunction> lambdaArn;

  final TfArg<CognitoUserPoolLambdaConfigCustomEmailSenderLambdaVersion>
  lambdaVersion;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.encodeAs('arn').toTfJson(),
    'lambda_version': lambdaVersion.toTfJson(),
  };
}

/// `lambda_version` — derived from the provider schema description.
enum CognitoUserPoolLambdaConfigCustomEmailSenderLambdaVersion
    implements TerraformEnum {
  v10('V1_0');

  const CognitoUserPoolLambdaConfigCustomEmailSenderLambdaVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `lambda_config.custom_sms_sender` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolLambdaConfigCustomSmsSender {
  const CognitoUserPoolLambdaConfigCustomSmsSender({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  final RefTo<AwsLambdaFunction> lambdaArn;

  final TfArg<CognitoUserPoolLambdaConfigCustomSmsSenderLambdaVersion>
  lambdaVersion;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.encodeAs('arn').toTfJson(),
    'lambda_version': lambdaVersion.toTfJson(),
  };
}

/// `lambda_version` — derived from the provider schema description.
enum CognitoUserPoolLambdaConfigCustomSmsSenderLambdaVersion
    implements TerraformEnum {
  v10('V1_0');

  const CognitoUserPoolLambdaConfigCustomSmsSenderLambdaVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `lambda_config.pre_token_generation_config` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolLambdaConfigPreTokenGenerationConfig {
  const CognitoUserPoolLambdaConfigPreTokenGenerationConfig({
    required this.lambdaArn,
    required this.lambdaVersion,
  });

  final RefTo<AwsLambdaFunction> lambdaArn;

  final TfArg<CognitoUserPoolLambdaConfigPreTokenGenerationConfigLambdaVersion>
  lambdaVersion;

  Map<String, Object?> encode() => {
    'lambda_arn': lambdaArn.encodeAs('arn').toTfJson(),
    'lambda_version': lambdaVersion.toTfJson(),
  };
}

/// `lambda_version` — derived from the provider schema description.
enum CognitoUserPoolLambdaConfigPreTokenGenerationConfigLambdaVersion
    implements TerraformEnum {
  v10('V1_0'),
  v20('V2_0'),
  v30('V3_0');

  const CognitoUserPoolLambdaConfigPreTokenGenerationConfigLambdaVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    'minimum_length': ?minimumLength?.toTfJson(),
    'password_history_size': ?passwordHistorySize?.toTfJson(),
    'require_lowercase': ?requireLowercase?.toTfJson(),
    'require_numbers': ?requireNumbers?.toTfJson(),
    'require_symbols': ?requireSymbols?.toTfJson(),
    'require_uppercase': ?requireUppercase?.toTfJson(),
    'temporary_password_validity_days': ?temporaryPasswordValidityDays
        ?.toTfJson(),
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

  final TfArg<CognitoUserPoolSchemaAttributeDataType> attributeDataType;

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
    'developer_only_attribute': ?developerOnlyAttribute?.toTfJson(),
    'mutable': ?mutable?.toTfJson(),
    'name': name.toTfJson(),
    'required': ?required?.toTfJson(),
    'number_attribute_constraints': ?numberAttributeConstraints?.encode(),
    'string_attribute_constraints': ?stringAttributeConstraints?.encode(),
  };
}

/// `attribute_data_type` — derived from the provider schema description.
enum CognitoUserPoolSchemaAttributeDataType implements TerraformEnum {
  string('String'),
  number('Number'),
  datetime('DateTime'),
  boolean('Boolean');

  const CognitoUserPoolSchemaAttributeDataType(this.terraformValue);
  @override
  final String terraformValue;
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
    'max_value': ?maxValue?.toTfJson(),
    'min_value': ?minValue?.toTfJson(),
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
    'max_length': ?maxLength?.toTfJson(),
    'min_length': ?minLength?.toTfJson(),
  };
}

/// Typed helper for the `sign_in_policy` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolSignInPolicy {
  const CognitoUserPoolSignInPolicy({this.allowedFirstAuthFactors});

  final List<TfArg<CognitoUserPoolSignInPolicyAllowedFirstAuthFactors>>?
  allowedFirstAuthFactors;

  Map<String, Object?> encode() => {
    if (allowedFirstAuthFactors != null)
      'allowed_first_auth_factors': [
        for (final e in allowedFirstAuthFactors!) e.toTfJson(),
      ],
  };
}

/// `allowed_first_auth_factors` — derived from the provider schema description.
enum CognitoUserPoolSignInPolicyAllowedFirstAuthFactors
    implements TerraformEnum {
  password('PASSWORD'),
  emailOtp('EMAIL_OTP'),
  smsOtp('SMS_OTP'),
  webAuthn('WEB_AUTHN'),
  softwareToken('SOFTWARE_TOKEN');

  const CognitoUserPoolSignInPolicyAllowedFirstAuthFactors(this.terraformValue);
  @override
  final String terraformValue;
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
    'sns_region': ?snsRegion?.toTfJson(),
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

  final List<
    TfArg<
      CognitoUserPoolUserAttributeUpdateSettingsAttributesRequireVerificationBeforeUpdate
    >
  >
  attributesRequireVerificationBeforeUpdate;

  Map<String, Object?> encode() => {
    'attributes_require_verification_before_update': [
      for (final e in attributesRequireVerificationBeforeUpdate) e.toTfJson(),
    ],
  };
}

/// `attributes_require_verification_before_update` — derived from the provider schema description.
enum CognitoUserPoolUserAttributeUpdateSettingsAttributesRequireVerificationBeforeUpdate
    implements TerraformEnum {
  phoneNumber('phone_number'),
  email('email');

  const CognitoUserPoolUserAttributeUpdateSettingsAttributesRequireVerificationBeforeUpdate(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `user_pool_add_ons` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolUserPoolAddOns {
  const CognitoUserPoolUserPoolAddOns({
    required this.advancedSecurityMode,
    this.advancedSecurityAdditionalFlows,
  });

  final TfArg<CognitoUserPoolUserPoolAddOnsAdvancedSecurityMode>
  advancedSecurityMode;

  final CognitoUserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows?
  advancedSecurityAdditionalFlows;

  Map<String, Object?> encode() => {
    'advanced_security_mode': advancedSecurityMode.toTfJson(),
    'advanced_security_additional_flows': ?advancedSecurityAdditionalFlows
        ?.encode(),
  };
}

/// `advanced_security_mode` — derived from the provider schema description.
enum CognitoUserPoolUserPoolAddOnsAdvancedSecurityMode
    implements TerraformEnum {
  off('OFF'),
  audit('AUDIT'),
  enforced('ENFORCED');

  const CognitoUserPoolUserPoolAddOnsAdvancedSecurityMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `user_pool_add_ons.advanced_security_additional_flows` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows {
  const CognitoUserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows({
    this.customAuthMode,
  });

  final TfArg<
    CognitoUserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlowsCustomAuthMode
  >?
  customAuthMode;

  Map<String, Object?> encode() => {
    'custom_auth_mode': ?customAuthMode?.toTfJson(),
  };
}

/// `custom_auth_mode` — derived from the provider schema description.
enum CognitoUserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlowsCustomAuthMode
    implements TerraformEnum {
  audit('AUDIT'),
  enforced('ENFORCED');

  const CognitoUserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlowsCustomAuthMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `username_configuration` block of
/// `aws_cognito_user_pool` (derived from provider schema).
@immutable
final class CognitoUserPoolUsernameConfiguration {
  const CognitoUserPoolUsernameConfiguration({this.caseSensitive});

  final TfArg<bool>? caseSensitive;

  Map<String, Object?> encode() => {
    'case_sensitive': ?caseSensitive?.toTfJson(),
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

  final TfArg<CognitoUserPoolVerificationMessageTemplateDefaultEmailOption>?
  defaultEmailOption;

  final TfArg<String>? emailMessage;

  final TfArg<String>? emailMessageByLink;

  final TfArg<String>? emailSubject;

  final TfArg<String>? emailSubjectByLink;

  final TfArg<String>? smsMessage;

  Map<String, Object?> encode() => {
    'default_email_option': ?defaultEmailOption?.toTfJson(),
    'email_message': ?emailMessage?.toTfJson(),
    'email_message_by_link': ?emailMessageByLink?.toTfJson(),
    'email_subject': ?emailSubject?.toTfJson(),
    'email_subject_by_link': ?emailSubjectByLink?.toTfJson(),
    'sms_message': ?smsMessage?.toTfJson(),
  };
}

/// `default_email_option` — derived from the provider schema description.
enum CognitoUserPoolVerificationMessageTemplateDefaultEmailOption
    implements TerraformEnum {
  confirmWithLink('CONFIRM_WITH_LINK'),
  confirmWithCode('CONFIRM_WITH_CODE');

  const CognitoUserPoolVerificationMessageTemplateDefaultEmailOption(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<CognitoUserPoolWebAuthnConfigurationUserVerification>?
  userVerification;

  Map<String, Object?> encode() => {
    'relying_party_id': ?relyingPartyId?.toTfJson(),
    'user_verification': ?userVerification?.toTfJson(),
  };
}

/// `user_verification` — derived from the provider schema description.
enum CognitoUserPoolWebAuthnConfigurationUserVerification
    implements TerraformEnum {
  required('required'),
  preferred('preferred');

  const CognitoUserPoolWebAuthnConfigurationUserVerification(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cognito_user_pool`.
final class AwsCognitoUserPool extends Resource {
  static const String tfType = 'aws_cognito_user_pool';

  AwsCognitoUserPool({
    required super.localName,
    CognitoUserPoolSignInAttributes? signInAttributes,
    List<TfArg<CognitoUserPoolAutoVerifiedAttributes>>? autoVerifiedAttributes,
    TfArg<CognitoUserPoolDeletionProtection>? deletionProtection,
    TfArg<String>? emailVerificationMessage,
    TfArg<String>? emailVerificationSubject,
    TfArg<CognitoUserPoolMfaConfiguration>? mfaConfiguration,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? smsAuthenticationMessage,
    TfArg<String>? smsVerificationMessage,
    TfArg<Map<String, String>>? tags,
    TfArg<CognitoUserPoolUserPoolTier>? userPoolTier,
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
           ...?signInAttributes?.argMap,
           if (autoVerifiedAttributes != null)
             'auto_verified_attributes': TfArg.literal([
               for (final e in autoVerifiedAttributes) e.toTfJson(),
             ]),
           'deletion_protection': ?deletionProtection,
           'email_verification_message': ?emailVerificationMessage,
           'email_verification_subject': ?emailVerificationSubject,
           'mfa_configuration': ?mfaConfiguration,
           'name': name,
           'region': ?region,
           'sms_authentication_message': ?smsAuthenticationMessage,
           'sms_verification_message': ?smsVerificationMessage,
           'tags': ?tags,
           'user_pool_tier': ?userPoolTier,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoUserPool>`.
  RefTo<AwsCognitoUserPool> get ref => RefTo.of(this);

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
