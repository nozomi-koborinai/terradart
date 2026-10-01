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

  final Lexv2modelsBotLocaleEngine? engine;

  final TfArg<String> voiceId;

  Map<String, Object?> encode() => {
    'engine': ?engine?.toTfJson(),
    'voice_id': voiceId.toTfJson(),
  };
}

/// `engine` — derived from the provider schema description.
extension type const Lexv2modelsBotLocaleEngine._(TfArg<String> _)
    implements TfArg<String> {
  Lexv2modelsBotLocaleEngine.variable(String name)
    : this._(TfArg.variable(name));
  Lexv2modelsBotLocaleEngine.expression(String template)
    : this._(TfArg.expression(template));
  const Lexv2modelsBotLocaleEngine.arg(TfArg<String> arg) : this._(arg);

  static const standard = Lexv2modelsBotLocaleEngine._(
    TfArgLiteral('standard'),
  );
  static const neural = Lexv2modelsBotLocaleEngine._(TfArgLiteral('neural'));
  static const longForm = Lexv2modelsBotLocaleEngine._(
    TfArgLiteral('long-form'),
  );
  static const generative = Lexv2modelsBotLocaleEngine._(
    TfArgLiteral('generative'),
  );

  static const List<Lexv2modelsBotLocaleEngine> values = [
    standard,
    neural,
    longForm,
    generative,
  ];
}

/// Factory wrapper for `aws_lexv2models_bot_locale`.
final class AwsLexv2modelsBotLocale extends Resource {
  static const String tfType = 'aws_lexv2models_bot_locale';

  AwsLexv2modelsBotLocale(
    super.localName, {
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
           'description': ?description,
           'locale_id': localeId,
           'n_lu_intent_confidence_threshold': nLuIntentConfidenceThreshold,
           'name': ?name,
           'region': ?region,
           if (voiceSettings != null)
             'voice_settings': TfArg.literal([
               for (final e in voiceSettings) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLexv2modelsBotLocaleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLexv2modelsBotLocale>`.
  RefTo<AwsLexv2modelsBotLocale> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bot_id` attribute.
  TfRef<String> get botId => TfRef.attribute<String>(this, 'bot_id');

  /// Reference to `bot_version` attribute.
  TfRef<String> get botVersion => TfRef.attribute<String>(this, 'bot_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `locale_id` attribute.
  TfRef<String> get localeId => TfRef.attribute<String>(this, 'locale_id');

  /// Reference to `n_lu_intent_confidence_threshold` attribute.
  TfRef<num> get nLuIntentConfidenceThreshold =>
      TfRef.attribute<num>(this, 'n_lu_intent_confidence_threshold');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
