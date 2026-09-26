// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lexv2models_bot_locale`.
const Set<String> _awsLexv2modelsBotLocaleSensitive = <String>{};

/// Typed helper for the `voice_settings` block of
/// `aws_lexv2models_bot_locale` (derived from provider schema).
@immutable
final class Lexv2modelsBotLocaleVoiceSettings {
  const Lexv2modelsBotLocaleVoiceSettings({this.engine, required this.voiceId});

  final TfArg<String>? engine;

  final TfArg<String> voiceId;

  Map<String, Object?> encode() => {
    if (engine != null) 'engine': engine!.toTfJson(),
    'voice_id': voiceId.toTfJson(),
  };
}

/// Factory wrapper for `aws_lexv2models_bot_locale`.
final class AwsLexv2modelsBotLocale extends Resource {
  static const String tfType = 'aws_lexv2models_bot_locale';

  AwsLexv2modelsBotLocale({
    required super.localName,
    required TfArg<String> botId,
    required TfArg<String> botVersion,
    TfArg<String>? description,
    required TfArg<String> localeId,
    required TfArg<num> nLuIntentConfidenceThreshold,
    TfArg<String>? name,
    TfArg<String>? region,
    List<Lexv2modelsBotLocaleVoiceSettings>? voiceSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bot_id': botId,
           'bot_version': botVersion,
           if (description != null) 'description': description,
           'locale_id': localeId,
           'n_lu_intent_confidence_threshold': nLuIntentConfidenceThreshold,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (voiceSettings != null)
             'voice_settings': TfArg.literal([
               for (final e in voiceSettings) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLexv2modelsBotLocaleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
