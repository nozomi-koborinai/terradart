// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_recaptcha_enterprise_key`.
const Set<String> _googleRecaptchaEnterpriseKeySensitive = <String>{};

/// Typed helper for the `android_settings` block of
/// `google_recaptcha_enterprise_key` (derived from provider schema).
@immutable
final class RecaptchaEnterpriseKeyAndroidSettings {
  const RecaptchaEnterpriseKeyAndroidSettings({
    this.allowAllPackageNames,
    this.allowedPackageNames,
  });

  final TfArg<bool>? allowAllPackageNames;

  final TfArg<List<Object?>>? allowedPackageNames;

  Map<String, Object?> encode() => {
    if (allowAllPackageNames != null)
      'allow_all_package_names': allowAllPackageNames!.toTfJson(),
    if (allowedPackageNames != null)
      'allowed_package_names': allowedPackageNames!.toTfJson(),
  };
}

/// Typed helper for the `ios_settings` block of
/// `google_recaptcha_enterprise_key` (derived from provider schema).
@immutable
final class RecaptchaEnterpriseKeyIosSettings {
  const RecaptchaEnterpriseKeyIosSettings({
    this.allowAllBundleIds,
    this.allowedBundleIds,
  });

  final TfArg<bool>? allowAllBundleIds;

  final TfArg<List<Object?>>? allowedBundleIds;

  Map<String, Object?> encode() => {
    if (allowAllBundleIds != null)
      'allow_all_bundle_ids': allowAllBundleIds!.toTfJson(),
    if (allowedBundleIds != null)
      'allowed_bundle_ids': allowedBundleIds!.toTfJson(),
  };
}

/// Typed helper for the `testing_options` block of
/// `google_recaptcha_enterprise_key` (derived from provider schema).
@immutable
final class RecaptchaEnterpriseKeyTestingOptions {
  const RecaptchaEnterpriseKeyTestingOptions({
    this.testingChallenge,
    this.testingScore,
  });

  final TfArg<RecaptchaEnterpriseKeyTestingOptionsTestingChallenge>?
  testingChallenge;

  final TfArg<num>? testingScore;

  Map<String, Object?> encode() => {
    if (testingChallenge != null)
      'testing_challenge': testingChallenge!.toTfJson(),
    if (testingScore != null) 'testing_score': testingScore!.toTfJson(),
  };
}

/// `testing_challenge` — derived from the provider schema description.
enum RecaptchaEnterpriseKeyTestingOptionsTestingChallenge
    implements TerraformEnum {
  testingChallengeUnspecified('TESTING_CHALLENGE_UNSPECIFIED'),
  nocaptcha('NOCAPTCHA'),
  unsolvableChallenge('UNSOLVABLE_CHALLENGE');

  const RecaptchaEnterpriseKeyTestingOptionsTestingChallenge(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `waf_settings` block of
/// `google_recaptcha_enterprise_key` (derived from provider schema).
@immutable
final class RecaptchaEnterpriseKeyWafSettings {
  const RecaptchaEnterpriseKeyWafSettings({
    required this.wafFeature,
    required this.wafService,
  });

  final TfArg<RecaptchaEnterpriseKeyWafSettingsWafFeature> wafFeature;

  final TfArg<RecaptchaEnterpriseKeyWafSettingsWafService> wafService;

  Map<String, Object?> encode() => {
    'waf_feature': wafFeature.toTfJson(),
    'waf_service': wafService.toTfJson(),
  };
}

/// `waf_feature` — derived from the provider schema description.
enum RecaptchaEnterpriseKeyWafSettingsWafFeature implements TerraformEnum {
  challengePage('CHALLENGE_PAGE'),
  sessionToken('SESSION_TOKEN'),
  actionToken('ACTION_TOKEN'),
  express('EXPRESS');

  const RecaptchaEnterpriseKeyWafSettingsWafFeature(this.terraformValue);
  @override
  final String terraformValue;
}

/// `waf_service` — derived from the provider schema description.
enum RecaptchaEnterpriseKeyWafSettingsWafService implements TerraformEnum {
  ca('CA'),
  fastly('FASTLY');

  const RecaptchaEnterpriseKeyWafSettingsWafService(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `web_settings` block of
/// `google_recaptcha_enterprise_key` (derived from provider schema).
@immutable
final class RecaptchaEnterpriseKeyWebSettings {
  const RecaptchaEnterpriseKeyWebSettings({
    this.allowAllDomains,
    this.allowAmpTraffic,
    this.allowedDomains,
    this.challengeSecurityPreference,
    required this.integrationType,
    this.challengeSettings,
  });

  final TfArg<bool>? allowAllDomains;

  final TfArg<bool>? allowAmpTraffic;

  final TfArg<List<Object?>>? allowedDomains;

  final TfArg<RecaptchaEnterpriseKeyWebSettingsChallengeSecurityPreference>?
  challengeSecurityPreference;

  final TfArg<RecaptchaEnterpriseKeyWebSettingsIntegrationType> integrationType;

  final RecaptchaEnterpriseKeyWebSettingsChallengeSettings? challengeSettings;

  Map<String, Object?> encode() => {
    if (allowAllDomains != null)
      'allow_all_domains': allowAllDomains!.toTfJson(),
    if (allowAmpTraffic != null)
      'allow_amp_traffic': allowAmpTraffic!.toTfJson(),
    if (allowedDomains != null) 'allowed_domains': allowedDomains!.toTfJson(),
    if (challengeSecurityPreference != null)
      'challenge_security_preference': challengeSecurityPreference!.toTfJson(),
    'integration_type': integrationType.toTfJson(),
    if (challengeSettings != null)
      'challenge_settings': challengeSettings!.encode(),
  };
}

/// `challenge_security_preference` — derived from the provider schema description.
enum RecaptchaEnterpriseKeyWebSettingsChallengeSecurityPreference
    implements TerraformEnum {
  challengeSecurityPreferenceUnspecified(
    'CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED',
  ),
  usability('USABILITY'),
  balance('BALANCE'),
  security('SECURITY');

  const RecaptchaEnterpriseKeyWebSettingsChallengeSecurityPreference(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `integration_type` — derived from the provider schema description.
enum RecaptchaEnterpriseKeyWebSettingsIntegrationType implements TerraformEnum {
  score('SCORE'),
  checkbox('CHECKBOX'),
  invisible('INVISIBLE'),
  policyBasedChallenge('POLICY_BASED_CHALLENGE');

  const RecaptchaEnterpriseKeyWebSettingsIntegrationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `web_settings.challenge_settings` block of
/// `google_recaptcha_enterprise_key` (derived from provider schema).
@immutable
final class RecaptchaEnterpriseKeyWebSettingsChallengeSettings {
  const RecaptchaEnterpriseKeyWebSettingsChallengeSettings({
    this.actionSettings,
    required this.defaultSettings,
  });

  final List<RecaptchaEnterpriseKeyWebSettingsChallengeSettingsActionSettings>?
  actionSettings;

  final RecaptchaEnterpriseKeyWebSettingsChallengeSettingsDefaultSettings
  defaultSettings;

  Map<String, Object?> encode() => {
    if (actionSettings != null)
      'action_settings': [for (final e in actionSettings!) e.encode()],
    'default_settings': defaultSettings.encode(),
  };
}

/// Typed helper for the `web_settings.challenge_settings.action_settings` block of
/// `google_recaptcha_enterprise_key` (derived from provider schema).
@immutable
final class RecaptchaEnterpriseKeyWebSettingsChallengeSettingsActionSettings {
  const RecaptchaEnterpriseKeyWebSettingsChallengeSettingsActionSettings({
    required this.action,
    required this.scoreThreshold,
  });

  final TfArg<String> action;

  final TfArg<num> scoreThreshold;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'score_threshold': scoreThreshold.toTfJson(),
  };
}

/// Typed helper for the `web_settings.challenge_settings.default_settings` block of
/// `google_recaptcha_enterprise_key` (derived from provider schema).
@immutable
final class RecaptchaEnterpriseKeyWebSettingsChallengeSettingsDefaultSettings {
  const RecaptchaEnterpriseKeyWebSettingsChallengeSettingsDefaultSettings({
    required this.scoreThreshold,
  });

  final TfArg<num> scoreThreshold;

  Map<String, Object?> encode() => {
    'score_threshold': scoreThreshold.toTfJson(),
  };
}

/// Factory wrapper for `google_recaptcha_enterprise_key`.
///
/// reCAPTCHA Enterprise key for web, Android, or iOS clients.
///
/// Enable `recaptchaenterprise.googleapis.com` before apply. Provide exactly
/// one platform settings block (`web_settings`, `android_settings`, or
/// `ios_settings`).
///
/// Example:
/// ```dart
/// GoogleRecaptchaEnterpriseKey(
///   localName: 'web_login',
///   displayName: TfArg.literal('Login page'),
///   webSettings: TfArg.literal({
///     'integration_type': 'SCORE',
///     'allow_all_domains': true,
///   }),
/// );
/// ```
final class GoogleRecaptchaEnterpriseKey extends Resource {
  static const String tfType = 'google_recaptcha_enterprise_key';

  GoogleRecaptchaEnterpriseKey({
    required super.localName,
    required TfArg<String> displayName,
    RecaptchaEnterpriseKeyWebSettings? webSettings,
    RecaptchaEnterpriseKeyAndroidSettings? androidSettings,
    RecaptchaEnterpriseKeyIosSettings? iosSettings,
    RecaptchaEnterpriseKeyWafSettings? wafSettings,
    RecaptchaEnterpriseKeyTestingOptions? testingOptions,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (webSettings != null)
             'web_settings': TfArg.literal(webSettings.encode()),
           if (androidSettings != null)
             'android_settings': TfArg.literal(androidSettings.encode()),
           if (iosSettings != null)
             'ios_settings': TfArg.literal(iosSettings.encode()),
           if (wafSettings != null)
             'waf_settings': TfArg.literal(wafSettings.encode()),
           if (testingOptions != null)
             'testing_options': TfArg.literal(testingOptions.encode()),
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRecaptchaEnterpriseKeySensitive;

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
