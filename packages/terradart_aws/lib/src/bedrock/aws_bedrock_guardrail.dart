// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_bedrock_guardrail`.
const Set<String> _awsBedrockGuardrailSensitive = <String>{};

/// Typed helper for the `content_policy_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailContentPolicyConfig {
  const BedrockGuardrailContentPolicyConfig({
    this.tierConfig,
    this.filtersConfig,
  });

  final TfArg<List<Object?>>? tierConfig;

  final List<BedrockGuardrailContentPolicyConfigFiltersConfig>? filtersConfig;

  Map<String, Object?> encode() => {
    if (tierConfig != null) 'tier_config': tierConfig!.toTfJson(),
    if (filtersConfig != null)
      'filters_config': [for (final e in filtersConfig!) e.encode()],
  };
}

/// Typed helper for the `content_policy_config.filters_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailContentPolicyConfigFiltersConfig {
  const BedrockGuardrailContentPolicyConfigFiltersConfig({
    this.inputAction,
    this.inputEnabled,
    this.inputModalities,
    required this.inputStrength,
    this.outputAction,
    this.outputEnabled,
    this.outputModalities,
    required this.outputStrength,
    required this.type,
  });

  final TfArg<BedrockGuardrailContentPolicyConfigFiltersConfigInputAction>?
  inputAction;

  final TfArg<bool>? inputEnabled;

  final List<
    TfArg<BedrockGuardrailContentPolicyConfigFiltersConfigInputModalities>
  >?
  inputModalities;

  final TfArg<BedrockGuardrailContentPolicyConfigFiltersConfigInputStrength>
  inputStrength;

  final TfArg<BedrockGuardrailContentPolicyConfigFiltersConfigOutputAction>?
  outputAction;

  final TfArg<bool>? outputEnabled;

  final List<
    TfArg<BedrockGuardrailContentPolicyConfigFiltersConfigOutputModalities>
  >?
  outputModalities;

  final TfArg<BedrockGuardrailContentPolicyConfigFiltersConfigOutputStrength>
  outputStrength;

  final TfArg<BedrockGuardrailContentPolicyConfigFiltersConfigType> type;

  Map<String, Object?> encode() => {
    if (inputAction != null) 'input_action': inputAction!.toTfJson(),
    if (inputEnabled != null) 'input_enabled': inputEnabled!.toTfJson(),
    if (inputModalities != null)
      'input_modalities': [for (final e in inputModalities!) e.toTfJson()],
    'input_strength': inputStrength.toTfJson(),
    if (outputAction != null) 'output_action': outputAction!.toTfJson(),
    if (outputEnabled != null) 'output_enabled': outputEnabled!.toTfJson(),
    if (outputModalities != null)
      'output_modalities': [for (final e in outputModalities!) e.toTfJson()],
    'output_strength': outputStrength.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `input_action` — derived from the provider schema description.
enum BedrockGuardrailContentPolicyConfigFiltersConfigInputAction
    implements TerraformEnum {
  block('BLOCK'),
  none('NONE');

  const BedrockGuardrailContentPolicyConfigFiltersConfigInputAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `input_modalities` — derived from the provider schema description.
enum BedrockGuardrailContentPolicyConfigFiltersConfigInputModalities
    implements TerraformEnum {
  text('TEXT'),
  image('IMAGE');

  const BedrockGuardrailContentPolicyConfigFiltersConfigInputModalities(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `input_strength` — derived from the provider schema description.
enum BedrockGuardrailContentPolicyConfigFiltersConfigInputStrength
    implements TerraformEnum {
  none('NONE'),
  low('LOW'),
  medium('MEDIUM'),
  high('HIGH');

  const BedrockGuardrailContentPolicyConfigFiltersConfigInputStrength(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `output_action` — derived from the provider schema description.
enum BedrockGuardrailContentPolicyConfigFiltersConfigOutputAction
    implements TerraformEnum {
  block('BLOCK'),
  none('NONE');

  const BedrockGuardrailContentPolicyConfigFiltersConfigOutputAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `output_modalities` — derived from the provider schema description.
enum BedrockGuardrailContentPolicyConfigFiltersConfigOutputModalities
    implements TerraformEnum {
  text('TEXT'),
  image('IMAGE');

  const BedrockGuardrailContentPolicyConfigFiltersConfigOutputModalities(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `output_strength` — derived from the provider schema description.
enum BedrockGuardrailContentPolicyConfigFiltersConfigOutputStrength
    implements TerraformEnum {
  none('NONE'),
  low('LOW'),
  medium('MEDIUM'),
  high('HIGH');

  const BedrockGuardrailContentPolicyConfigFiltersConfigOutputStrength(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum BedrockGuardrailContentPolicyConfigFiltersConfigType
    implements TerraformEnum {
  sexual('SEXUAL'),
  violence('VIOLENCE'),
  hate('HATE'),
  insults('INSULTS'),
  misconduct('MISCONDUCT'),
  promptAttack('PROMPT_ATTACK');

  const BedrockGuardrailContentPolicyConfigFiltersConfigType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `contextual_grounding_policy_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailContextualGroundingPolicyConfig {
  const BedrockGuardrailContextualGroundingPolicyConfig({this.filtersConfig});

  final List<BedrockGuardrailContextualGroundingPolicyConfigFiltersConfig>?
  filtersConfig;

  Map<String, Object?> encode() => {
    if (filtersConfig != null)
      'filters_config': [for (final e in filtersConfig!) e.encode()],
  };
}

/// Typed helper for the `contextual_grounding_policy_config.filters_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailContextualGroundingPolicyConfigFiltersConfig {
  const BedrockGuardrailContextualGroundingPolicyConfigFiltersConfig({
    required this.threshold,
    required this.type,
  });

  final TfArg<num> threshold;

  final TfArg<BedrockGuardrailContextualGroundingPolicyConfigFiltersConfigType>
  type;

  Map<String, Object?> encode() => {
    'threshold': threshold.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum BedrockGuardrailContextualGroundingPolicyConfigFiltersConfigType
    implements TerraformEnum {
  grounding('GROUNDING'),
  relevance('RELEVANCE');

  const BedrockGuardrailContextualGroundingPolicyConfigFiltersConfigType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `cross_region_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailCrossRegionConfig {
  const BedrockGuardrailCrossRegionConfig({
    required this.guardrailProfileIdentifier,
  });

  final TfArg<String> guardrailProfileIdentifier;

  Map<String, Object?> encode() => {
    'guardrail_profile_identifier': guardrailProfileIdentifier.toTfJson(),
  };
}

/// Typed helper for the `sensitive_information_policy_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailSensitiveInformationPolicyConfig {
  const BedrockGuardrailSensitiveInformationPolicyConfig({
    this.piiEntitiesConfig,
    this.regexesConfig,
  });

  final List<BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig>?
  piiEntitiesConfig;

  final List<BedrockGuardrailSensitiveInformationPolicyConfigRegexesConfig>?
  regexesConfig;

  Map<String, Object?> encode() => {
    if (piiEntitiesConfig != null)
      'pii_entities_config': [for (final e in piiEntitiesConfig!) e.encode()],
    if (regexesConfig != null)
      'regexes_config': [for (final e in regexesConfig!) e.encode()],
  };
}

/// Typed helper for the `sensitive_information_policy_config.pii_entities_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig {
  const BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig({
    required this.action,
    this.inputAction,
    this.inputEnabled,
    this.outputAction,
    this.outputEnabled,
    required this.type,
  });

  final TfArg<
    BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigAction
  >
  action;

  final TfArg<
    BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigInputAction
  >?
  inputAction;

  final TfArg<bool>? inputEnabled;

  final TfArg<
    BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigOutputAction
  >?
  outputAction;

  final TfArg<bool>? outputEnabled;

  final TfArg<
    BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigType
  >
  type;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (inputAction != null) 'input_action': inputAction!.toTfJson(),
    if (inputEnabled != null) 'input_enabled': inputEnabled!.toTfJson(),
    if (outputAction != null) 'output_action': outputAction!.toTfJson(),
    if (outputEnabled != null) 'output_enabled': outputEnabled!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
enum BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigAction
    implements TerraformEnum {
  block('BLOCK'),
  anonymize('ANONYMIZE'),
  none('NONE');

  const BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `input_action` — derived from the provider schema description.
enum BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigInputAction
    implements TerraformEnum {
  block('BLOCK'),
  anonymize('ANONYMIZE'),
  none('NONE');

  const BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigInputAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `output_action` — derived from the provider schema description.
enum BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigOutputAction
    implements TerraformEnum {
  block('BLOCK'),
  anonymize('ANONYMIZE'),
  none('NONE');

  const BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigOutputAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigType
    implements TerraformEnum {
  address('ADDRESS'),
  age('AGE'),
  awsAccessKey('AWS_ACCESS_KEY'),
  awsSecretKey('AWS_SECRET_KEY'),
  caHealthNumber('CA_HEALTH_NUMBER'),
  caSocialInsuranceNumber('CA_SOCIAL_INSURANCE_NUMBER'),
  creditDebitCardCvv('CREDIT_DEBIT_CARD_CVV'),
  creditDebitCardExpiry('CREDIT_DEBIT_CARD_EXPIRY'),
  creditDebitCardNumber('CREDIT_DEBIT_CARD_NUMBER'),
  driverId('DRIVER_ID'),
  email('EMAIL'),
  internationalBankAccountNumber('INTERNATIONAL_BANK_ACCOUNT_NUMBER'),
  ipAddress('IP_ADDRESS'),
  licensePlate('LICENSE_PLATE'),
  macAddress('MAC_ADDRESS'),
  name('NAME'),
  password('PASSWORD'),
  phone('PHONE'),
  pin('PIN'),
  swiftCode('SWIFT_CODE'),
  ukNationalHealthServiceNumber('UK_NATIONAL_HEALTH_SERVICE_NUMBER'),
  ukNationalInsuranceNumber('UK_NATIONAL_INSURANCE_NUMBER'),
  ukUniqueTaxpayerReferenceNumber('UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER'),
  url('URL'),
  username('USERNAME'),
  usBankAccountNumber('US_BANK_ACCOUNT_NUMBER'),
  usBankRoutingNumber('US_BANK_ROUTING_NUMBER'),
  usIndividualTaxIdentificationNumber(
    'US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER',
  ),
  usPassportNumber('US_PASSPORT_NUMBER'),
  usSocialSecurityNumber('US_SOCIAL_SECURITY_NUMBER'),
  vehicleIdentificationNumber('VEHICLE_IDENTIFICATION_NUMBER');

  const BedrockGuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `sensitive_information_policy_config.regexes_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailSensitiveInformationPolicyConfigRegexesConfig {
  const BedrockGuardrailSensitiveInformationPolicyConfigRegexesConfig({
    required this.action,
    this.description,
    this.inputAction,
    this.inputEnabled,
    required this.name,
    this.outputAction,
    this.outputEnabled,
    required this.pattern,
  });

  final TfArg<
    BedrockGuardrailSensitiveInformationPolicyConfigRegexesConfigAction
  >
  action;

  final TfArg<String>? description;

  final TfArg<
    BedrockGuardrailSensitiveInformationPolicyConfigRegexesConfigInputAction
  >?
  inputAction;

  final TfArg<bool>? inputEnabled;

  final TfArg<String> name;

  final TfArg<
    BedrockGuardrailSensitiveInformationPolicyConfigRegexesConfigOutputAction
  >?
  outputAction;

  final TfArg<bool>? outputEnabled;

  final TfArg<String> pattern;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    if (inputAction != null) 'input_action': inputAction!.toTfJson(),
    if (inputEnabled != null) 'input_enabled': inputEnabled!.toTfJson(),
    'name': name.toTfJson(),
    if (outputAction != null) 'output_action': outputAction!.toTfJson(),
    if (outputEnabled != null) 'output_enabled': outputEnabled!.toTfJson(),
    'pattern': pattern.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
enum BedrockGuardrailSensitiveInformationPolicyConfigRegexesConfigAction
    implements TerraformEnum {
  block('BLOCK'),
  anonymize('ANONYMIZE'),
  none('NONE');

  const BedrockGuardrailSensitiveInformationPolicyConfigRegexesConfigAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `input_action` — derived from the provider schema description.
enum BedrockGuardrailSensitiveInformationPolicyConfigRegexesConfigInputAction
    implements TerraformEnum {
  block('BLOCK'),
  anonymize('ANONYMIZE'),
  none('NONE');

  const BedrockGuardrailSensitiveInformationPolicyConfigRegexesConfigInputAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `output_action` — derived from the provider schema description.
enum BedrockGuardrailSensitiveInformationPolicyConfigRegexesConfigOutputAction
    implements TerraformEnum {
  block('BLOCK'),
  anonymize('ANONYMIZE'),
  none('NONE');

  const BedrockGuardrailSensitiveInformationPolicyConfigRegexesConfigOutputAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `topic_policy_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailTopicPolicyConfig {
  const BedrockGuardrailTopicPolicyConfig({this.tierConfig, this.topicsConfig});

  final TfArg<List<Object?>>? tierConfig;

  final List<BedrockGuardrailTopicPolicyConfigTopicsConfig>? topicsConfig;

  Map<String, Object?> encode() => {
    if (tierConfig != null) 'tier_config': tierConfig!.toTfJson(),
    if (topicsConfig != null)
      'topics_config': [for (final e in topicsConfig!) e.encode()],
  };
}

/// Typed helper for the `topic_policy_config.topics_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailTopicPolicyConfigTopicsConfig {
  const BedrockGuardrailTopicPolicyConfigTopicsConfig({
    required this.definition,
    this.examples,
    required this.name,
    required this.type,
  });

  final TfArg<String> definition;

  final TfArg<List<Object?>>? examples;

  final TfArg<String> name;

  final TfArg<BedrockGuardrailTopicPolicyConfigTopicsConfigType> type;

  Map<String, Object?> encode() => {
    'definition': definition.toTfJson(),
    if (examples != null) 'examples': examples!.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum BedrockGuardrailTopicPolicyConfigTopicsConfigType
    implements TerraformEnum {
  deny('DENY');

  const BedrockGuardrailTopicPolicyConfigTopicsConfigType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `word_policy_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailWordPolicyConfig {
  const BedrockGuardrailWordPolicyConfig({
    this.managedWordListsConfig,
    this.wordsConfig,
  });

  final List<BedrockGuardrailWordPolicyConfigManagedWordListsConfig>?
  managedWordListsConfig;

  final List<BedrockGuardrailWordPolicyConfigWordsConfig>? wordsConfig;

  Map<String, Object?> encode() => {
    if (managedWordListsConfig != null)
      'managed_word_lists_config': [
        for (final e in managedWordListsConfig!) e.encode(),
      ],
    if (wordsConfig != null)
      'words_config': [for (final e in wordsConfig!) e.encode()],
  };
}

/// Typed helper for the `word_policy_config.managed_word_lists_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailWordPolicyConfigManagedWordListsConfig {
  const BedrockGuardrailWordPolicyConfigManagedWordListsConfig({
    this.inputAction,
    this.inputEnabled,
    this.outputAction,
    this.outputEnabled,
    required this.type,
  });

  final TfArg<
    BedrockGuardrailWordPolicyConfigManagedWordListsConfigInputAction
  >?
  inputAction;

  final TfArg<bool>? inputEnabled;

  final TfArg<
    BedrockGuardrailWordPolicyConfigManagedWordListsConfigOutputAction
  >?
  outputAction;

  final TfArg<bool>? outputEnabled;

  final TfArg<BedrockGuardrailWordPolicyConfigManagedWordListsConfigType> type;

  Map<String, Object?> encode() => {
    if (inputAction != null) 'input_action': inputAction!.toTfJson(),
    if (inputEnabled != null) 'input_enabled': inputEnabled!.toTfJson(),
    if (outputAction != null) 'output_action': outputAction!.toTfJson(),
    if (outputEnabled != null) 'output_enabled': outputEnabled!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `input_action` — derived from the provider schema description.
enum BedrockGuardrailWordPolicyConfigManagedWordListsConfigInputAction
    implements TerraformEnum {
  block('BLOCK'),
  none('NONE');

  const BedrockGuardrailWordPolicyConfigManagedWordListsConfigInputAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `output_action` — derived from the provider schema description.
enum BedrockGuardrailWordPolicyConfigManagedWordListsConfigOutputAction
    implements TerraformEnum {
  block('BLOCK'),
  none('NONE');

  const BedrockGuardrailWordPolicyConfigManagedWordListsConfigOutputAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum BedrockGuardrailWordPolicyConfigManagedWordListsConfigType
    implements TerraformEnum {
  profanity('PROFANITY');

  const BedrockGuardrailWordPolicyConfigManagedWordListsConfigType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `word_policy_config.words_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailWordPolicyConfigWordsConfig {
  const BedrockGuardrailWordPolicyConfigWordsConfig({
    this.inputAction,
    this.inputEnabled,
    this.outputAction,
    this.outputEnabled,
    required this.text,
  });

  final TfArg<BedrockGuardrailWordPolicyConfigWordsConfigInputAction>?
  inputAction;

  final TfArg<bool>? inputEnabled;

  final TfArg<BedrockGuardrailWordPolicyConfigWordsConfigOutputAction>?
  outputAction;

  final TfArg<bool>? outputEnabled;

  final TfArg<String> text;

  Map<String, Object?> encode() => {
    if (inputAction != null) 'input_action': inputAction!.toTfJson(),
    if (inputEnabled != null) 'input_enabled': inputEnabled!.toTfJson(),
    if (outputAction != null) 'output_action': outputAction!.toTfJson(),
    if (outputEnabled != null) 'output_enabled': outputEnabled!.toTfJson(),
    'text': text.toTfJson(),
  };
}

/// `input_action` — derived from the provider schema description.
enum BedrockGuardrailWordPolicyConfigWordsConfigInputAction
    implements TerraformEnum {
  block('BLOCK'),
  none('NONE');

  const BedrockGuardrailWordPolicyConfigWordsConfigInputAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `output_action` — derived from the provider schema description.
enum BedrockGuardrailWordPolicyConfigWordsConfigOutputAction
    implements TerraformEnum {
  block('BLOCK'),
  none('NONE');

  const BedrockGuardrailWordPolicyConfigWordsConfigOutputAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_bedrock_guardrail`.
final class AwsBedrockGuardrail extends Resource {
  static const String tfType = 'aws_bedrock_guardrail';

  AwsBedrockGuardrail({
    required super.localName,
    required TfArg<String> blockedInputMessaging,
    required TfArg<String> blockedOutputsMessaging,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? kmsKeyArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<BedrockGuardrailContentPolicyConfig>? contentPolicyConfig,
    List<BedrockGuardrailContextualGroundingPolicyConfig>?
    contextualGroundingPolicyConfig,
    List<BedrockGuardrailCrossRegionConfig>? crossRegionConfig,
    List<BedrockGuardrailSensitiveInformationPolicyConfig>?
    sensitiveInformationPolicyConfig,
    List<BedrockGuardrailTopicPolicyConfig>? topicPolicyConfig,
    List<BedrockGuardrailWordPolicyConfig>? wordPolicyConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'blocked_input_messaging': blockedInputMessaging,
           'blocked_outputs_messaging': blockedOutputsMessaging,
           if (description != null) 'description': description,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn.encodeAs('arn'),
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (contentPolicyConfig != null)
             'content_policy_config': TfArg.literal([
               for (final e in contentPolicyConfig) e.encode(),
             ]),
           if (contextualGroundingPolicyConfig != null)
             'contextual_grounding_policy_config': TfArg.literal([
               for (final e in contextualGroundingPolicyConfig) e.encode(),
             ]),
           if (crossRegionConfig != null)
             'cross_region_config': TfArg.literal([
               for (final e in crossRegionConfig) e.encode(),
             ]),
           if (sensitiveInformationPolicyConfig != null)
             'sensitive_information_policy_config': TfArg.literal([
               for (final e in sensitiveInformationPolicyConfig) e.encode(),
             ]),
           if (topicPolicyConfig != null)
             'topic_policy_config': TfArg.literal([
               for (final e in topicPolicyConfig) e.encode(),
             ]),
           if (wordPolicyConfig != null)
             'word_policy_config': TfArg.literal([
               for (final e in wordPolicyConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBedrockGuardrailSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockGuardrail>`.
  RefTo<AwsBedrockGuardrail> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `guardrail_arn` attribute.
  TfRef<String> get guardrailArn =>
      TfRef.attribute<String>(this, 'guardrail_arn');

  /// Reference to `guardrail_id` attribute.
  TfRef<String> get guardrailId =>
      TfRef.attribute<String>(this, 'guardrail_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
