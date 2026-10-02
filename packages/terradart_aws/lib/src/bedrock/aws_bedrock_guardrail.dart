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

  @internal
  Map<String, Object?> encode() => {
    'tier_config': ?tierConfig?.toTfJson(),
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

  final BedrockGuardrailFiltersConfigInputAction? inputAction;

  final TfArg<bool>? inputEnabled;

  final List<BedrockGuardrailInputModalities>? inputModalities;

  final BedrockGuardrailInputStrength inputStrength;

  final BedrockGuardrailFiltersConfigOutputAction? outputAction;

  final TfArg<bool>? outputEnabled;

  final List<BedrockGuardrailOutputModalities>? outputModalities;

  final BedrockGuardrailOutputStrength outputStrength;

  final BedrockGuardrailContentPolicyConfigType type;

  @internal
  Map<String, Object?> encode() => {
    'input_action': ?inputAction?.toTfJson(),
    'input_enabled': ?inputEnabled?.toTfJson(),
    if (inputModalities != null)
      'input_modalities': [for (final e in inputModalities!) e.toTfJson()],
    'input_strength': inputStrength.toTfJson(),
    'output_action': ?outputAction?.toTfJson(),
    'output_enabled': ?outputEnabled?.toTfJson(),
    if (outputModalities != null)
      'output_modalities': [for (final e in outputModalities!) e.toTfJson()],
    'output_strength': outputStrength.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `input_action` — derived from the provider schema description.
extension type const BedrockGuardrailFiltersConfigInputAction._(TfArg<String> _)
    implements TfArg<String> {
  BedrockGuardrailFiltersConfigInputAction.variable(String name)
    : this._(TfArg.variable(name));
  BedrockGuardrailFiltersConfigInputAction.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockGuardrailFiltersConfigInputAction.arg(TfArg<String> arg)
    : this._(arg);

  static const block = BedrockGuardrailFiltersConfigInputAction._(
    TfArgLiteral('BLOCK'),
  );
  static const none = BedrockGuardrailFiltersConfigInputAction._(
    TfArgLiteral('NONE'),
  );

  static const List<BedrockGuardrailFiltersConfigInputAction> values = [
    block,
    none,
  ];
}

/// `input_modalities` — derived from the provider schema description.
extension type const BedrockGuardrailInputModalities._(TfArg<String> _)
    implements TfArg<String> {
  BedrockGuardrailInputModalities.variable(String name)
    : this._(TfArg.variable(name));
  BedrockGuardrailInputModalities.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockGuardrailInputModalities.arg(TfArg<String> arg) : this._(arg);

  static const text = BedrockGuardrailInputModalities._(TfArgLiteral('TEXT'));
  static const image = BedrockGuardrailInputModalities._(TfArgLiteral('IMAGE'));

  static const List<BedrockGuardrailInputModalities> values = [text, image];
}

/// `input_strength` — derived from the provider schema description.
extension type const BedrockGuardrailInputStrength._(TfArg<String> _)
    implements TfArg<String> {
  BedrockGuardrailInputStrength.variable(String name)
    : this._(TfArg.variable(name));
  BedrockGuardrailInputStrength.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockGuardrailInputStrength.arg(TfArg<String> arg) : this._(arg);

  static const none = BedrockGuardrailInputStrength._(TfArgLiteral('NONE'));
  static const low = BedrockGuardrailInputStrength._(TfArgLiteral('LOW'));
  static const medium = BedrockGuardrailInputStrength._(TfArgLiteral('MEDIUM'));
  static const high = BedrockGuardrailInputStrength._(TfArgLiteral('HIGH'));

  static const List<BedrockGuardrailInputStrength> values = [
    none,
    low,
    medium,
    high,
  ];
}

/// `output_action` — derived from the provider schema description.
extension type const BedrockGuardrailFiltersConfigOutputAction._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockGuardrailFiltersConfigOutputAction.variable(String name)
    : this._(TfArg.variable(name));
  BedrockGuardrailFiltersConfigOutputAction.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockGuardrailFiltersConfigOutputAction.arg(TfArg<String> arg)
    : this._(arg);

  static const block = BedrockGuardrailFiltersConfigOutputAction._(
    TfArgLiteral('BLOCK'),
  );
  static const none = BedrockGuardrailFiltersConfigOutputAction._(
    TfArgLiteral('NONE'),
  );

  static const List<BedrockGuardrailFiltersConfigOutputAction> values = [
    block,
    none,
  ];
}

/// `output_modalities` — derived from the provider schema description.
extension type const BedrockGuardrailOutputModalities._(TfArg<String> _)
    implements TfArg<String> {
  BedrockGuardrailOutputModalities.variable(String name)
    : this._(TfArg.variable(name));
  BedrockGuardrailOutputModalities.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockGuardrailOutputModalities.arg(TfArg<String> arg) : this._(arg);

  static const text = BedrockGuardrailOutputModalities._(TfArgLiteral('TEXT'));
  static const image = BedrockGuardrailOutputModalities._(
    TfArgLiteral('IMAGE'),
  );

  static const List<BedrockGuardrailOutputModalities> values = [text, image];
}

/// `output_strength` — derived from the provider schema description.
extension type const BedrockGuardrailOutputStrength._(TfArg<String> _)
    implements TfArg<String> {
  BedrockGuardrailOutputStrength.variable(String name)
    : this._(TfArg.variable(name));
  BedrockGuardrailOutputStrength.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockGuardrailOutputStrength.arg(TfArg<String> arg) : this._(arg);

  static const none = BedrockGuardrailOutputStrength._(TfArgLiteral('NONE'));
  static const low = BedrockGuardrailOutputStrength._(TfArgLiteral('LOW'));
  static const medium = BedrockGuardrailOutputStrength._(
    TfArgLiteral('MEDIUM'),
  );
  static const high = BedrockGuardrailOutputStrength._(TfArgLiteral('HIGH'));

  static const List<BedrockGuardrailOutputStrength> values = [
    none,
    low,
    medium,
    high,
  ];
}

/// `type` — derived from the provider schema description.
extension type const BedrockGuardrailContentPolicyConfigType._(TfArg<String> _)
    implements TfArg<String> {
  BedrockGuardrailContentPolicyConfigType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockGuardrailContentPolicyConfigType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockGuardrailContentPolicyConfigType.arg(TfArg<String> arg)
    : this._(arg);

  static const sexual = BedrockGuardrailContentPolicyConfigType._(
    TfArgLiteral('SEXUAL'),
  );
  static const violence = BedrockGuardrailContentPolicyConfigType._(
    TfArgLiteral('VIOLENCE'),
  );
  static const hate = BedrockGuardrailContentPolicyConfigType._(
    TfArgLiteral('HATE'),
  );
  static const insults = BedrockGuardrailContentPolicyConfigType._(
    TfArgLiteral('INSULTS'),
  );
  static const misconduct = BedrockGuardrailContentPolicyConfigType._(
    TfArgLiteral('MISCONDUCT'),
  );
  static const promptAttack = BedrockGuardrailContentPolicyConfigType._(
    TfArgLiteral('PROMPT_ATTACK'),
  );

  static const List<BedrockGuardrailContentPolicyConfigType> values = [
    sexual,
    violence,
    hate,
    insults,
    misconduct,
    promptAttack,
  ];
}

/// Typed helper for the `contextual_grounding_policy_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailContextualGroundingPolicyConfig {
  const BedrockGuardrailContextualGroundingPolicyConfig({this.filtersConfig});

  final List<BedrockGuardrailContextualGroundingPolicyConfigFiltersConfig>?
  filtersConfig;

  @internal
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

  final BedrockGuardrailContextualGroundingPolicyConfigType type;

  @internal
  Map<String, Object?> encode() => {
    'threshold': threshold.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const BedrockGuardrailContextualGroundingPolicyConfigType._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockGuardrailContextualGroundingPolicyConfigType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockGuardrailContextualGroundingPolicyConfigType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockGuardrailContextualGroundingPolicyConfigType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const grounding =
      BedrockGuardrailContextualGroundingPolicyConfigType._(
        TfArgLiteral('GROUNDING'),
      );
  static const relevance =
      BedrockGuardrailContextualGroundingPolicyConfigType._(
        TfArgLiteral('RELEVANCE'),
      );

  static const List<BedrockGuardrailContextualGroundingPolicyConfigType>
  values = [grounding, relevance];
}

/// Typed helper for the `cross_region_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailCrossRegionConfig {
  const BedrockGuardrailCrossRegionConfig({
    required this.guardrailProfileIdentifier,
  });

  final TfArg<String> guardrailProfileIdentifier;

  @internal
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

  final List<BedrockGuardrailPiiEntitiesConfig>? piiEntitiesConfig;

  final List<BedrockGuardrailRegexesConfig>? regexesConfig;

  @internal
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
final class BedrockGuardrailPiiEntitiesConfig {
  const BedrockGuardrailPiiEntitiesConfig({
    required this.action,
    this.inputAction,
    this.inputEnabled,
    this.outputAction,
    this.outputEnabled,
    required this.type,
  });

  final BedrockGuardrailAction action;

  final BedrockGuardrailPiiEntitiesConfigInputAction? inputAction;

  final TfArg<bool>? inputEnabled;

  final BedrockGuardrailPiiEntitiesConfigOutputAction? outputAction;

  final TfArg<bool>? outputEnabled;

  final BedrockGuardrailPiiEntitiesConfigType type;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'input_action': ?inputAction?.toTfJson(),
    'input_enabled': ?inputEnabled?.toTfJson(),
    'output_action': ?outputAction?.toTfJson(),
    'output_enabled': ?outputEnabled?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const BedrockGuardrailAction._(TfArg<String> _)
    implements TfArg<String> {
  BedrockGuardrailAction.variable(String name) : this._(TfArg.variable(name));
  BedrockGuardrailAction.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockGuardrailAction.arg(TfArg<String> arg) : this._(arg);

  static const block = BedrockGuardrailAction._(TfArgLiteral('BLOCK'));
  static const anonymize = BedrockGuardrailAction._(TfArgLiteral('ANONYMIZE'));
  static const none = BedrockGuardrailAction._(TfArgLiteral('NONE'));

  static const List<BedrockGuardrailAction> values = [block, anonymize, none];
}

/// `input_action` — derived from the provider schema description.
extension type const BedrockGuardrailPiiEntitiesConfigInputAction._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockGuardrailPiiEntitiesConfigInputAction.variable(String name)
    : this._(TfArg.variable(name));
  BedrockGuardrailPiiEntitiesConfigInputAction.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockGuardrailPiiEntitiesConfigInputAction.arg(TfArg<String> arg)
    : this._(arg);

  static const block = BedrockGuardrailPiiEntitiesConfigInputAction._(
    TfArgLiteral('BLOCK'),
  );
  static const anonymize = BedrockGuardrailPiiEntitiesConfigInputAction._(
    TfArgLiteral('ANONYMIZE'),
  );
  static const none = BedrockGuardrailPiiEntitiesConfigInputAction._(
    TfArgLiteral('NONE'),
  );

  static const List<BedrockGuardrailPiiEntitiesConfigInputAction> values = [
    block,
    anonymize,
    none,
  ];
}

/// `output_action` — derived from the provider schema description.
extension type const BedrockGuardrailPiiEntitiesConfigOutputAction._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockGuardrailPiiEntitiesConfigOutputAction.variable(String name)
    : this._(TfArg.variable(name));
  BedrockGuardrailPiiEntitiesConfigOutputAction.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockGuardrailPiiEntitiesConfigOutputAction.arg(TfArg<String> arg)
    : this._(arg);

  static const block = BedrockGuardrailPiiEntitiesConfigOutputAction._(
    TfArgLiteral('BLOCK'),
  );
  static const anonymize = BedrockGuardrailPiiEntitiesConfigOutputAction._(
    TfArgLiteral('ANONYMIZE'),
  );
  static const none = BedrockGuardrailPiiEntitiesConfigOutputAction._(
    TfArgLiteral('NONE'),
  );

  static const List<BedrockGuardrailPiiEntitiesConfigOutputAction> values = [
    block,
    anonymize,
    none,
  ];
}

/// `type` — derived from the provider schema description.
extension type const BedrockGuardrailPiiEntitiesConfigType._(TfArg<String> _)
    implements TfArg<String> {
  BedrockGuardrailPiiEntitiesConfigType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockGuardrailPiiEntitiesConfigType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockGuardrailPiiEntitiesConfigType.arg(TfArg<String> arg)
    : this._(arg);

  static const address = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('ADDRESS'),
  );
  static const age = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('AGE'),
  );
  static const awsAccessKey = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('AWS_ACCESS_KEY'),
  );
  static const awsSecretKey = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('AWS_SECRET_KEY'),
  );
  static const caHealthNumber = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('CA_HEALTH_NUMBER'),
  );
  static const caSocialInsuranceNumber =
      BedrockGuardrailPiiEntitiesConfigType._(
        TfArgLiteral('CA_SOCIAL_INSURANCE_NUMBER'),
      );
  static const creditDebitCardCvv = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('CREDIT_DEBIT_CARD_CVV'),
  );
  static const creditDebitCardExpiry = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('CREDIT_DEBIT_CARD_EXPIRY'),
  );
  static const creditDebitCardNumber = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('CREDIT_DEBIT_CARD_NUMBER'),
  );
  static const driverId = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('DRIVER_ID'),
  );
  static const email = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('EMAIL'),
  );
  static const internationalBankAccountNumber =
      BedrockGuardrailPiiEntitiesConfigType._(
        TfArgLiteral('INTERNATIONAL_BANK_ACCOUNT_NUMBER'),
      );
  static const ipAddress = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('IP_ADDRESS'),
  );
  static const licensePlate = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('LICENSE_PLATE'),
  );
  static const macAddress = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('MAC_ADDRESS'),
  );
  static const name = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('NAME'),
  );
  static const password = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('PASSWORD'),
  );
  static const phone = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('PHONE'),
  );
  static const pin = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('PIN'),
  );
  static const swiftCode = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('SWIFT_CODE'),
  );
  static const ukNationalHealthServiceNumber =
      BedrockGuardrailPiiEntitiesConfigType._(
        TfArgLiteral('UK_NATIONAL_HEALTH_SERVICE_NUMBER'),
      );
  static const ukNationalInsuranceNumber =
      BedrockGuardrailPiiEntitiesConfigType._(
        TfArgLiteral('UK_NATIONAL_INSURANCE_NUMBER'),
      );
  static const ukUniqueTaxpayerReferenceNumber =
      BedrockGuardrailPiiEntitiesConfigType._(
        TfArgLiteral('UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER'),
      );
  static const url = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('URL'),
  );
  static const username = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('USERNAME'),
  );
  static const usBankAccountNumber = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('US_BANK_ACCOUNT_NUMBER'),
  );
  static const usBankRoutingNumber = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('US_BANK_ROUTING_NUMBER'),
  );
  static const usIndividualTaxIdentificationNumber =
      BedrockGuardrailPiiEntitiesConfigType._(
        TfArgLiteral('US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER'),
      );
  static const usPassportNumber = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('US_PASSPORT_NUMBER'),
  );
  static const usSocialSecurityNumber = BedrockGuardrailPiiEntitiesConfigType._(
    TfArgLiteral('US_SOCIAL_SECURITY_NUMBER'),
  );
  static const vehicleIdentificationNumber =
      BedrockGuardrailPiiEntitiesConfigType._(
        TfArgLiteral('VEHICLE_IDENTIFICATION_NUMBER'),
      );

  static const List<BedrockGuardrailPiiEntitiesConfigType> values = [
    address,
    age,
    awsAccessKey,
    awsSecretKey,
    caHealthNumber,
    caSocialInsuranceNumber,
    creditDebitCardCvv,
    creditDebitCardExpiry,
    creditDebitCardNumber,
    driverId,
    email,
    internationalBankAccountNumber,
    ipAddress,
    licensePlate,
    macAddress,
    name,
    password,
    phone,
    pin,
    swiftCode,
    ukNationalHealthServiceNumber,
    ukNationalInsuranceNumber,
    ukUniqueTaxpayerReferenceNumber,
    url,
    username,
    usBankAccountNumber,
    usBankRoutingNumber,
    usIndividualTaxIdentificationNumber,
    usPassportNumber,
    usSocialSecurityNumber,
    vehicleIdentificationNumber,
  ];
}

/// Typed helper for the `sensitive_information_policy_config.regexes_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailRegexesConfig {
  const BedrockGuardrailRegexesConfig({
    required this.action,
    this.description,
    this.inputAction,
    this.inputEnabled,
    required this.name,
    this.outputAction,
    this.outputEnabled,
    required this.pattern,
  });

  final BedrockGuardrailAction action;

  final TfArg<String>? description;

  final BedrockGuardrailPiiEntitiesConfigInputAction? inputAction;

  final TfArg<bool>? inputEnabled;

  final TfArg<String> name;

  final BedrockGuardrailPiiEntitiesConfigOutputAction? outputAction;

  final TfArg<bool>? outputEnabled;

  final TfArg<String> pattern;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'description': ?description?.toTfJson(),
    'input_action': ?inputAction?.toTfJson(),
    'input_enabled': ?inputEnabled?.toTfJson(),
    'name': name.toTfJson(),
    'output_action': ?outputAction?.toTfJson(),
    'output_enabled': ?outputEnabled?.toTfJson(),
    'pattern': pattern.toTfJson(),
  };
}

/// Typed helper for the `topic_policy_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailTopicPolicyConfig {
  const BedrockGuardrailTopicPolicyConfig({this.tierConfig, this.topicsConfig});

  final TfArg<List<Object?>>? tierConfig;

  final List<BedrockGuardrailTopicsConfig>? topicsConfig;

  @internal
  Map<String, Object?> encode() => {
    'tier_config': ?tierConfig?.toTfJson(),
    if (topicsConfig != null)
      'topics_config': [for (final e in topicsConfig!) e.encode()],
  };
}

/// Typed helper for the `topic_policy_config.topics_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailTopicsConfig {
  const BedrockGuardrailTopicsConfig({
    required this.definition,
    this.examples,
    required this.name,
    required this.type,
  });

  final TfArg<String> definition;

  final TfArg<List<String>>? examples;

  final TfArg<String> name;

  final BedrockGuardrailTopicsConfigType type;

  @internal
  Map<String, Object?> encode() => {
    'definition': definition.toTfJson(),
    'examples': ?examples?.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const BedrockGuardrailTopicsConfigType._(TfArg<String> _)
    implements TfArg<String> {
  BedrockGuardrailTopicsConfigType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockGuardrailTopicsConfigType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockGuardrailTopicsConfigType.arg(TfArg<String> arg) : this._(arg);

  static const deny = BedrockGuardrailTopicsConfigType._(TfArgLiteral('DENY'));

  static const List<BedrockGuardrailTopicsConfigType> values = [deny];
}

/// Typed helper for the `word_policy_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailWordPolicyConfig {
  const BedrockGuardrailWordPolicyConfig({
    this.managedWordListsConfig,
    this.wordsConfig,
  });

  final List<BedrockGuardrailManagedWordListsConfig>? managedWordListsConfig;

  final List<BedrockGuardrailWordsConfig>? wordsConfig;

  @internal
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
final class BedrockGuardrailManagedWordListsConfig {
  const BedrockGuardrailManagedWordListsConfig({
    this.inputAction,
    this.inputEnabled,
    this.outputAction,
    this.outputEnabled,
    required this.type,
  });

  final BedrockGuardrailFiltersConfigInputAction? inputAction;

  final TfArg<bool>? inputEnabled;

  final BedrockGuardrailFiltersConfigOutputAction? outputAction;

  final TfArg<bool>? outputEnabled;

  final BedrockGuardrailManagedWordListsConfigType type;

  @internal
  Map<String, Object?> encode() => {
    'input_action': ?inputAction?.toTfJson(),
    'input_enabled': ?inputEnabled?.toTfJson(),
    'output_action': ?outputAction?.toTfJson(),
    'output_enabled': ?outputEnabled?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const BedrockGuardrailManagedWordListsConfigType._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockGuardrailManagedWordListsConfigType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockGuardrailManagedWordListsConfigType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockGuardrailManagedWordListsConfigType.arg(TfArg<String> arg)
    : this._(arg);

  static const profanity = BedrockGuardrailManagedWordListsConfigType._(
    TfArgLiteral('PROFANITY'),
  );

  static const List<BedrockGuardrailManagedWordListsConfigType> values = [
    profanity,
  ];
}

/// Typed helper for the `word_policy_config.words_config` block of
/// `aws_bedrock_guardrail` (derived from provider schema).
@immutable
final class BedrockGuardrailWordsConfig {
  const BedrockGuardrailWordsConfig({
    this.inputAction,
    this.inputEnabled,
    this.outputAction,
    this.outputEnabled,
    required this.text,
  });

  final BedrockGuardrailFiltersConfigInputAction? inputAction;

  final TfArg<bool>? inputEnabled;

  final BedrockGuardrailFiltersConfigOutputAction? outputAction;

  final TfArg<bool>? outputEnabled;

  final TfArg<String> text;

  @internal
  Map<String, Object?> encode() => {
    'input_action': ?inputAction?.toTfJson(),
    'input_enabled': ?inputEnabled?.toTfJson(),
    'output_action': ?outputAction?.toTfJson(),
    'output_enabled': ?outputEnabled?.toTfJson(),
    'text': text.toTfJson(),
  };
}

/// Factory wrapper for `aws_bedrock_guardrail`.
final class AwsBedrockGuardrail extends Resource {
  static const String tfType = 'aws_bedrock_guardrail';

  AwsBedrockGuardrail(
    super.localName, {
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
           'description': ?description,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'tags': ?tags,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `blocked_input_messaging` attribute.
  TfRef<String> get blockedInputMessaging =>
      TfRef.attribute<String>(this, 'blocked_input_messaging');

  /// Reference to `blocked_outputs_messaging` attribute.
  TfRef<String> get blockedOutputsMessaging =>
      TfRef.attribute<String>(this, 'blocked_outputs_messaging');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
