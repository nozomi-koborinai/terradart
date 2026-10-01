// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_ai_logic_config`.
const Set<String> _googleFirebaseAiLogicConfigSensitive = <String>{
  'generative_language_config.api_key',
};

/// Typed helper for the `generative_language_config` block of
/// `google_firebase_ai_logic_config` (derived from provider schema).
@immutable
final class FirebaseAiLogicConfigGenerativeLanguageConfig {
  const FirebaseAiLogicConfigGenerativeLanguageConfig({
    this.apiKey,
    this.apiKeyWoVersion,
  });

  final FirebaseAiLogicConfigApiKey? apiKey;

  final TfArg<String>? apiKeyWoVersion;

  Map<String, Object?> encode() => {
    ...?apiKey?.encode(),
    'api_key_wo_version': ?apiKeyWoVersion?.toTfJson(),
  };
}

/// At most one of `api_key`, `api_key_wo` on the `generative_language_config` block of `google_firebase_ai_logic_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.apiKey(...)`.
sealed class FirebaseAiLogicConfigApiKey {
  const FirebaseAiLogicConfigApiKey();

  /// Sets `api_key`.
  const factory FirebaseAiLogicConfigApiKey.apiKey(TfArg<String> apiKey) =
      FirebaseAiLogicConfigApiKeyChoice;

  /// Sets `api_key_wo`.
  const factory FirebaseAiLogicConfigApiKey.apiKeyWo(TfArg<String> apiKeyWo) =
      FirebaseAiLogicConfigApiKeyWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [FirebaseAiLogicConfigApiKey.apiKey] choice: sets `api_key`.
final class FirebaseAiLogicConfigApiKeyChoice
    extends FirebaseAiLogicConfigApiKey {
  const FirebaseAiLogicConfigApiKeyChoice(this.apiKey);

  final TfArg<String> apiKey;

  @override
  String get blockKey => 'api_key';

  @override
  Map<String, Object?> encode() => {'api_key': apiKey.toTfJson()};
}

/// The [FirebaseAiLogicConfigApiKey.apiKeyWo] choice: sets `api_key_wo`.
final class FirebaseAiLogicConfigApiKeyWo extends FirebaseAiLogicConfigApiKey {
  const FirebaseAiLogicConfigApiKeyWo(this.apiKeyWo);

  final TfArg<String> apiKeyWo;

  @override
  String get blockKey => 'api_key_wo';

  @override
  Map<String, Object?> encode() => {'api_key_wo': apiKeyWo.toTfJson()};
}

/// Typed helper for the `telemetry_config` block of
/// `google_firebase_ai_logic_config` (derived from provider schema).
@immutable
final class FirebaseAiLogicConfigTelemetryConfig {
  const FirebaseAiLogicConfigTelemetryConfig({this.mode, this.samplingRate});

  final TfArg<String>? mode;

  final TfArg<num>? samplingRate;

  Map<String, Object?> encode() => {
    'mode': ?mode?.toTfJson(),
    'sampling_rate': ?samplingRate?.toTfJson(),
  };
}

/// Typed helper for the `traffic_filter` block of
/// `google_firebase_ai_logic_config` (derived from provider schema).
@immutable
final class FirebaseAiLogicConfigTrafficFilter {
  const FirebaseAiLogicConfigTrafficFilter({this.templateOnly});

  final TfArg<bool>? templateOnly;

  Map<String, Object?> encode() => {'template_only': ?templateOnly?.toTfJson()};
}

/// Factory wrapper for `google_firebase_ai_logic_config`.
///
/// Configuration for Firebase AI Logic.
final class GoogleFirebaseAiLogicConfig extends Resource {
  static const String tfType = 'google_firebase_ai_logic_config';

  GoogleFirebaseAiLogicConfig(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<String>? location,
    TfArg<String>? project,
    FirebaseAiLogicConfigGenerativeLanguageConfig? generativeLanguageConfig,
    FirebaseAiLogicConfigTelemetryConfig? telemetryConfig,
    FirebaseAiLogicConfigTrafficFilter? trafficFilter,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'location': ?location,
           'project': ?project,
           if (generativeLanguageConfig != null)
             'generative_language_config': TfArg.literal(
               generativeLanguageConfig.encode(),
             ),
           if (telemetryConfig != null)
             'telemetry_config': TfArg.literal(telemetryConfig.encode()),
           if (trafficFilter != null)
             'traffic_filter': TfArg.literal(trafficFilter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseAiLogicConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseAiLogicConfig>`.
  RefTo<GoogleFirebaseAiLogicConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
