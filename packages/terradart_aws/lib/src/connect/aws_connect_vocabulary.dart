// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_vocabulary`.
const Set<String> _awsConnectVocabularySensitive = <String>{};

/// Connect Vocabulary Language enum for `language_code`.
extension type const ConnectVocabularyLanguageCode._(TfArg<String> _)
    implements TfArg<String> {
  ConnectVocabularyLanguageCode.variable(String name)
    : this._(TfArg.variable(name));
  ConnectVocabularyLanguageCode.expression(String template)
    : this._(TfArg.expression(template));
  const ConnectVocabularyLanguageCode.arg(TfArg<String> arg) : this._(arg);

  static const arAe = ConnectVocabularyLanguageCode._(TfArgLiteral('ar-AE'));
  static const deCh = ConnectVocabularyLanguageCode._(TfArgLiteral('de-CH'));
  static const deDe = ConnectVocabularyLanguageCode._(TfArgLiteral('de-DE'));
  static const enAb = ConnectVocabularyLanguageCode._(TfArgLiteral('en-AB'));
  static const enAu = ConnectVocabularyLanguageCode._(TfArgLiteral('en-AU'));
  static const enGb = ConnectVocabularyLanguageCode._(TfArgLiteral('en-GB'));
  static const enIe = ConnectVocabularyLanguageCode._(TfArgLiteral('en-IE'));
  static const enIn = ConnectVocabularyLanguageCode._(TfArgLiteral('en-IN'));
  static const enUs = ConnectVocabularyLanguageCode._(TfArgLiteral('en-US'));
  static const enWl = ConnectVocabularyLanguageCode._(TfArgLiteral('en-WL'));
  static const esEs = ConnectVocabularyLanguageCode._(TfArgLiteral('es-ES'));
  static const esUs = ConnectVocabularyLanguageCode._(TfArgLiteral('es-US'));
  static const frCa = ConnectVocabularyLanguageCode._(TfArgLiteral('fr-CA'));
  static const frFr = ConnectVocabularyLanguageCode._(TfArgLiteral('fr-FR'));
  static const hiIn = ConnectVocabularyLanguageCode._(TfArgLiteral('hi-IN'));
  static const itIt = ConnectVocabularyLanguageCode._(TfArgLiteral('it-IT'));
  static const jaJp = ConnectVocabularyLanguageCode._(TfArgLiteral('ja-JP'));
  static const koKr = ConnectVocabularyLanguageCode._(TfArgLiteral('ko-KR'));
  static const ptBr = ConnectVocabularyLanguageCode._(TfArgLiteral('pt-BR'));
  static const ptPt = ConnectVocabularyLanguageCode._(TfArgLiteral('pt-PT'));
  static const zhCn = ConnectVocabularyLanguageCode._(TfArgLiteral('zh-CN'));
  static const enNz = ConnectVocabularyLanguageCode._(TfArgLiteral('en-NZ'));
  static const enZa = ConnectVocabularyLanguageCode._(TfArgLiteral('en-ZA'));
  static const caEs = ConnectVocabularyLanguageCode._(TfArgLiteral('ca-ES'));
  static const daDk = ConnectVocabularyLanguageCode._(TfArgLiteral('da-DK'));
  static const fiFi = ConnectVocabularyLanguageCode._(TfArgLiteral('fi-FI'));
  static const idId = ConnectVocabularyLanguageCode._(TfArgLiteral('id-ID'));
  static const msMy = ConnectVocabularyLanguageCode._(TfArgLiteral('ms-MY'));
  static const nlNl = ConnectVocabularyLanguageCode._(TfArgLiteral('nl-NL'));
  static const noNo = ConnectVocabularyLanguageCode._(TfArgLiteral('no-NO'));
  static const plPl = ConnectVocabularyLanguageCode._(TfArgLiteral('pl-PL'));
  static const svSe = ConnectVocabularyLanguageCode._(TfArgLiteral('sv-SE'));
  static const tlPh = ConnectVocabularyLanguageCode._(TfArgLiteral('tl-PH'));

  static const List<ConnectVocabularyLanguageCode> values = [
    arAe,
    deCh,
    deDe,
    enAb,
    enAu,
    enGb,
    enIe,
    enIn,
    enUs,
    enWl,
    esEs,
    esUs,
    frCa,
    frFr,
    hiIn,
    itIt,
    jaJp,
    koKr,
    ptBr,
    ptPt,
    zhCn,
    enNz,
    enZa,
    caEs,
    daDk,
    fiFi,
    idId,
    msMy,
    nlNl,
    noNo,
    plPl,
    svSe,
    tlPh,
  ];
}

/// Factory wrapper for `aws_connect_vocabulary`.
final class AwsConnectVocabulary extends Resource {
  static const String tfType = 'aws_connect_vocabulary';

  AwsConnectVocabulary(
    super.localName, {
    required TfArg<String> content,
    required TfArg<String> instanceId,
    required ConnectVocabularyLanguageCode languageCode,
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
