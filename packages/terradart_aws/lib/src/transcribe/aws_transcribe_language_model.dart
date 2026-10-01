// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transcribe_language_model`.
const Set<String> _awsTranscribeLanguageModelSensitive = <String>{};

/// Transcribe Language Model Base Model enum for `base_model_name`.
enum TranscribeLanguageModelBaseModelName implements TerraformEnum {
  narrowband('NarrowBand'),
  wideband('WideBand');

  const TranscribeLanguageModelBaseModelName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Transcribe Language Model Language enum for `language_code`.
enum TranscribeLanguageModelLanguageCode implements TerraformEnum {
  afZa('af-ZA'),
  arAe('ar-AE'),
  arSa('ar-SA'),
  amEt('am-ET'),
  cyGb('cy-GB'),
  daDk('da-DK'),
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
  esMx('es-MX'),
  esUs('es-US'),
  faAf('fa-AF'),
  faIr('fa-IR'),
  frCa('fr-CA'),
  frFr('fr-FR'),
  gaIe('ga-IE'),
  gdGb('gd-GB'),
  heIl('he-IL'),
  hiIn('hi-IN'),
  htHt('ht-HT'),
  idId('id-ID'),
  itIt('it-IT'),
  jaJp('ja-JP'),
  jvId('jv-ID'),
  kmKh('km-KH'),
  koKr('ko-KR'),
  myMm('my-MM'),
  msMy('ms-MY'),
  nlNl('nl-NL'),
  ptBr('pt-BR'),
  ptPt('pt-PT'),
  ruRu('ru-RU'),
  taIn('ta-IN'),
  teIn('te-IN'),
  trTr('tr-TR'),
  zhCn('zh-CN'),
  zhTw('zh-TW'),
  thTh('th-TH'),
  enZa('en-ZA'),
  enNz('en-NZ'),
  viVn('vi-VN'),
  svSe('sv-SE'),
  abGe('ab-GE'),
  astEs('ast-ES'),
  azAz('az-AZ'),
  baRu('ba-RU'),
  beBy('be-BY'),
  bgBg('bg-BG'),
  bnIn('bn-IN'),
  bsBa('bs-BA'),
  caEs('ca-ES'),
  ckbIq('ckb-IQ'),
  ckbIr('ckb-IR'),
  csCz('cs-CZ'),
  cyWl('cy-WL'),
  elGr('el-GR'),
  etEe('et-EE'),
  etEt('et-ET'),
  euEs('eu-ES'),
  fiFi('fi-FI'),
  glEs('gl-ES'),
  guIn('gu-IN'),
  haNg('ha-NG'),
  hrHr('hr-HR'),
  huHu('hu-HU'),
  hyAm('hy-AM'),
  isIs('is-IS'),
  kaGe('ka-GE'),
  kabDz('kab-DZ'),
  kkKz('kk-KZ'),
  knIn('kn-IN'),
  kyKg('ky-KG'),
  lgIn('lg-IN'),
  ltLt('lt-LT'),
  lvLv('lv-LV'),
  mhrRu('mhr-RU'),
  miNz('mi-NZ'),
  mkMk('mk-MK'),
  mlIn('ml-IN'),
  mnMn('mn-MN'),
  mrIn('mr-IN'),
  mtMt('mt-MT'),
  noNo('no-NO'),
  neNp('ne-NP'),
  orIn('or-IN'),
  paIn('pa-IN'),
  plPl('pl-PL'),
  psAf('ps-AF'),
  roRo('ro-RO'),
  rwRw('rw-RW'),
  siLk('si-LK'),
  skSk('sk-SK'),
  slSi('sl-SI'),
  soSo('so-SO'),
  sqAl('sq-AL'),
  srRs('sr-RS'),
  suId('su-ID'),
  swBi('sw-BI'),
  swKe('sw-KE'),
  swRw('sw-RW'),
  swTz('sw-TZ'),
  swUg('sw-UG'),
  tlPh('tl-PH'),
  ttRu('tt-RU'),
  ugCn('ug-CN'),
  ukUa('uk-UA'),
  uzUz('uz-UZ'),
  woSn('wo-SN'),
  zhHk('zh-HK'),
  zuZa('zu-ZA');

  const TranscribeLanguageModelLanguageCode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `input_data_config` block of
/// `aws_transcribe_language_model` (derived from provider schema).
@immutable
final class TranscribeLanguageModelInputDataConfig {
  const TranscribeLanguageModelInputDataConfig({
    required this.dataAccessRoleArn,
    required this.s3Uri,
    this.tuningDataS3Uri,
  });

  final TfArg<String> dataAccessRoleArn;

  final TfArg<String> s3Uri;

  final TfArg<String>? tuningDataS3Uri;

  Map<String, Object?> encode() => {
    'data_access_role_arn': dataAccessRoleArn.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    'tuning_data_s3_uri': ?tuningDataS3Uri?.toTfJson(),
  };
}

/// Factory wrapper for `aws_transcribe_language_model`.
final class AwsTranscribeLanguageModel extends Resource {
  static const String tfType = 'aws_transcribe_language_model';

  AwsTranscribeLanguageModel(
    super.localName, {
    required TfArg<TranscribeLanguageModelBaseModelName> baseModelName,
    required TfArg<TranscribeLanguageModelLanguageCode> languageCode,
    required TfArg<String> modelName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TranscribeLanguageModelInputDataConfig inputDataConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'base_model_name': baseModelName,
           'language_code': languageCode,
           'model_name': modelName,
           'region': ?region,
           'tags': ?tags,
           'input_data_config': TfArg.literal(inputDataConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTranscribeLanguageModelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTranscribeLanguageModel>`.
  RefTo<AwsTranscribeLanguageModel> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `base_model_name` attribute.
  TfRef<String> get baseModelName =>
      TfRef.attribute<String>(this, 'base_model_name');

  /// Reference to `language_code` attribute.
  TfRef<String> get languageCode =>
      TfRef.attribute<String>(this, 'language_code');

  /// Reference to `model_name` attribute.
  TfRef<String> get modelName => TfRef.attribute<String>(this, 'model_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
