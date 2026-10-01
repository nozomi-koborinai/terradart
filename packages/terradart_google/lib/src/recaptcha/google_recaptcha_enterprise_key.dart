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

  final TfArg<List<String>>? allowedPackageNames;

  Map<String, Object?> encode() => {
    'allow_all_package_names': ?allowAllPackageNames?.toTfJson(),
    'allowed_package_names': ?allowedPackageNames?.toTfJson(),
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

  final TfArg<List<String>>? allowedBundleIds;

  Map<String, Object?> encode() => {
    'allow_all_bundle_ids': ?allowAllBundleIds?.toTfJson(),
    'allowed_bundle_ids': ?allowedBundleIds?.toTfJson(),
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

  final TfArg<RecaptchaEnterpriseKeyTestingChallenge>? testingChallenge;

  final TfArg<num>? testingScore;

  Map<String, Object?> encode() => {
    'testing_challenge': ?testingChallenge?.toTfJson(),
    'testing_score': ?testingScore?.toTfJson(),
  };
}

/// `testing_challenge` — derived from the provider schema description.
enum RecaptchaEnterpriseKeyTestingChallenge implements TerraformEnum {
  testingChallengeUnspecified('TESTING_CHALLENGE_UNSPECIFIED'),
  nocaptcha('NOCAPTCHA'),
  unsolvableChallenge('UNSOLVABLE_CHALLENGE');

  const RecaptchaEnterpriseKeyTestingChallenge(this.terraformValue);
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

  final TfArg<RecaptchaEnterpriseKeyWafFeature> wafFeature;

  final TfArg<RecaptchaEnterpriseKeyWafService> wafService;

  Map<String, Object?> encode() => {
    'waf_feature': wafFeature.toTfJson(),
    'waf_service': wafService.toTfJson(),
  };
}

/// `waf_feature` — derived from the provider schema description.
enum RecaptchaEnterpriseKeyWafFeature implements TerraformEnum {
  challengePage('CHALLENGE_PAGE'),
  sessionToken('SESSION_TOKEN'),
  actionToken('ACTION_TOKEN'),
  express('EXPRESS');

  const RecaptchaEnterpriseKeyWafFeature(this.terraformValue);
  @override
  final String terraformValue;
}

/// `waf_service` — derived from the provider schema description.
enum RecaptchaEnterpriseKeyWafService implements TerraformEnum {
  ca('CA'),
  fastly('FASTLY');

  const RecaptchaEnterpriseKeyWafService(this.terraformValue);
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

  final TfArg<List<String>>? allowedDomains;

  final TfArg<RecaptchaEnterpriseKeyChallengeSecurityPreference>?
  challengeSecurityPreference;

  final TfArg<RecaptchaEnterpriseKeyIntegrationType> integrationType;

  final RecaptchaEnterpriseKeyChallengeSettings? challengeSettings;

  Map<String, Object?> encode() => {
    'allow_all_domains': ?allowAllDomains?.toTfJson(),
    'allow_amp_traffic': ?allowAmpTraffic?.toTfJson(),
    'allowed_domains': ?allowedDomains?.toTfJson(),
    'challenge_security_preference': ?challengeSecurityPreference?.toTfJson(),
    'integration_type': integrationType.toTfJson(),
    'challenge_settings': ?challengeSettings?.encode(),
  };
}

/// `challenge_security_preference` — derived from the provider schema description.
enum RecaptchaEnterpriseKeyChallengeSecurityPreference
    implements TerraformEnum {
  challengeSecurityPreferenceUnspecified(
    'CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED',
  ),
  usability('USABILITY'),
  balance('BALANCE'),
  security('SECURITY');

  const RecaptchaEnterpriseKeyChallengeSecurityPreference(this.terraformValue);
  @override
  final String terraformValue;
}

/// `integration_type` — derived from the provider schema description.
enum RecaptchaEnterpriseKeyIntegrationType implements TerraformEnum {
  score('SCORE'),
  checkbox('CHECKBOX'),
  invisible('INVISIBLE'),
  policyBasedChallenge('POLICY_BASED_CHALLENGE');

  const RecaptchaEnterpriseKeyIntegrationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `web_settings.challenge_settings` block of
/// `google_recaptcha_enterprise_key` (derived from provider schema).
@immutable
final class RecaptchaEnterpriseKeyChallengeSettings {
  const RecaptchaEnterpriseKeyChallengeSettings({
    this.actionSettings,
    required this.defaultSettings,
  });

  final List<RecaptchaEnterpriseKeyActionSettings>? actionSettings;

  final RecaptchaEnterpriseKeyDefaultSettings defaultSettings;

  Map<String, Object?> encode() => {
    if (actionSettings != null)
      'action_settings': [for (final e in actionSettings!) e.encode()],
    'default_settings': defaultSettings.encode(),
  };
}

/// Typed helper for the `web_settings.challenge_settings.action_settings` block of
/// `google_recaptcha_enterprise_key` (derived from provider schema).
@immutable
final class RecaptchaEnterpriseKeyActionSettings {
  const RecaptchaEnterpriseKeyActionSettings({
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
final class RecaptchaEnterpriseKeyDefaultSettings {
  const RecaptchaEnterpriseKeyDefaultSettings({required this.scoreThreshold});

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
///   webSettings: RecaptchaEnterpriseKeyWebSettings(
///     integrationType: TfArg.literal(
///       RecaptchaEnterpriseKeyIntegrationType.score,
///     ),
///     allowAllDomains: TfArg.literal(true),
///   ),
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
    super.provider,
    super.timeouts,
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
           'labels': ?labels,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRecaptchaEnterpriseKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleRecaptchaEnterpriseKey>`.
  RefTo<GoogleRecaptchaEnterpriseKey> get ref => RefTo.of(this);

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
