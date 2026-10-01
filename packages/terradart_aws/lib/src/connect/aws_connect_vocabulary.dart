// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_vocabulary`.
const Set<String> _awsConnectVocabularySensitive = <String>{};

/// Connect Vocabulary Language enum for `language_code`.
enum ConnectVocabularyLanguageCode implements TerraformEnum {
  arAe('ar-AE'),
  deCh('de-CH'),
  deDe('de-DE'),
  enAb('en-AB'),
  enAu('en-AU'),
  enGb('en-GB'),
  enIe('en-IE'),
  enIn('en-IN'),
  enUs('en-US'),
  enWl('en-WL'),
  esEs('es-ES'),
  esUs('es-US'),
  frCa('fr-CA'),
  frFr('fr-FR'),
  hiIn('hi-IN'),
  itIt('it-IT'),
  jaJp('ja-JP'),
  koKr('ko-KR'),
  ptBr('pt-BR'),
  ptPt('pt-PT'),
  zhCn('zh-CN'),
  enNz('en-NZ'),
  enZa('en-ZA'),
  caEs('ca-ES'),
  daDk('da-DK'),
  fiFi('fi-FI'),
  idId('id-ID'),
  msMy('ms-MY'),
  nlNl('nl-NL'),
  noNo('no-NO'),
  plPl('pl-PL'),
  svSe('sv-SE'),
  tlPh('tl-PH');

  const ConnectVocabularyLanguageCode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_connect_vocabulary`.
final class AwsConnectVocabulary extends Resource {
  static const String tfType = 'aws_connect_vocabulary';

  AwsConnectVocabulary({
    required super.localName,
    required TfArg<String> content,
    required TfArg<String> instanceId,
    required TfArg<ConnectVocabularyLanguageCode> languageCode,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content': content,
           'instance_id': instanceId,
           'language_code': languageCode,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectVocabularySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConnectVocabulary>`.
  RefTo<AwsConnectVocabulary> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `last_modified_time` attribute.
  TfRef<String> get lastModifiedTime =>
      TfRef.attribute<String>(this, 'last_modified_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `vocabulary_id` attribute.
  TfRef<String> get vocabularyId =>
      TfRef.attribute<String>(this, 'vocabulary_id');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `language_code` attribute.
  TfRef<String> get languageCode =>
      TfRef.attribute<String>(this, 'language_code');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
