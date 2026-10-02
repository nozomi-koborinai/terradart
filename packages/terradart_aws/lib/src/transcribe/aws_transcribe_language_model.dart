// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transcribe_language_model`.
const Set<String> _awsTranscribeLanguageModelSensitive = <String>{};

/// Transcribe Language Model Base Model enum for `base_model_name`.
extension type const TranscribeLanguageModelBaseModelName._(TfArg<String> _)
    implements TfArg<String> {
  TranscribeLanguageModelBaseModelName.variable(String name)
    : this._(TfArg.variable(name));
  TranscribeLanguageModelBaseModelName.expression(String template)
    : this._(TfArg.expression(template));
  const TranscribeLanguageModelBaseModelName.arg(TfArg<String> arg)
    : this._(arg);

  static const narrowband = TranscribeLanguageModelBaseModelName._(
    TfArgLiteral('NarrowBand'),
  );
  static const wideband = TranscribeLanguageModelBaseModelName._(
    TfArgLiteral('WideBand'),
  );

  static const List<TranscribeLanguageModelBaseModelName> values = [
    narrowband,
    wideband,
  ];
}

/// Transcribe Language Model Language enum for `language_code`.
extension type const TranscribeLanguageModelLanguageCode._(TfArg<String> _)
    implements TfArg<String> {
  TranscribeLanguageModelLanguageCode.variable(String name)
    : this._(TfArg.variable(name));
  TranscribeLanguageModelLanguageCode.expression(String template)
    : this._(TfArg.expression(template));
  const TranscribeLanguageModelLanguageCode.arg(TfArg<String> arg)
    : this._(arg);

  static const afZa = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('af-ZA'),
  );
  static const arAe = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ar-AE'),
  );
  static const arSa = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ar-SA'),
  );
  static const amEt = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('am-ET'),
  );
  static const cyGb = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('cy-GB'),
  );
  static const daDk = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('da-DK'),
  );
  static const deCh = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('de-CH'),
  );
  static const deDe = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('de-DE'),
  );
  static const enAb = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('en-AB'),
  );
  static const enAu = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('en-AU'),
  );
  static const enGb = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('en-GB'),
  );
  static const enIe = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('en-IE'),
  );
  static const enIn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('en-IN'),
  );
  static const enUs = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('en-US'),
  );
  static const enWl = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('en-WL'),
  );
  static const esEs = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('es-ES'),
  );
  static const esMx = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('es-MX'),
  );
  static const esUs = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('es-US'),
  );
  static const faAf = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('fa-AF'),
  );
  static const faIr = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('fa-IR'),
  );
  static const frCa = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('fr-CA'),
  );
  static const frFr = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('fr-FR'),
  );
  static const gaIe = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ga-IE'),
  );
  static const gdGb = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('gd-GB'),
  );
  static const heIl = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('he-IL'),
  );
  static const hiIn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('hi-IN'),
  );
  static const htHt = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ht-HT'),
  );
  static const idId = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('id-ID'),
  );
  static const itIt = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('it-IT'),
  );
  static const jaJp = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ja-JP'),
  );
  static const jvId = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('jv-ID'),
  );
  static const kmKh = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('km-KH'),
  );
  static const koKr = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ko-KR'),
  );
  static const myMm = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('my-MM'),
  );
  static const msMy = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ms-MY'),
  );
  static const nlNl = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('nl-NL'),
  );
  static const ptBr = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('pt-BR'),
  );
  static const ptPt = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('pt-PT'),
  );
  static const ruRu = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ru-RU'),
  );
  static const taIn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ta-IN'),
  );
  static const teIn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('te-IN'),
  );
  static const trTr = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('tr-TR'),
  );
  static const zhCn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('zh-CN'),
  );
  static const zhTw = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('zh-TW'),
  );
  static const thTh = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('th-TH'),
  );
  static const enZa = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('en-ZA'),
  );
  static const enNz = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('en-NZ'),
  );
  static const viVn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('vi-VN'),
  );
  static const svSe = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('sv-SE'),
  );
  static const abGe = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ab-GE'),
  );
  static const astEs = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ast-ES'),
  );
  static const azAz = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('az-AZ'),
  );
  static const baRu = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ba-RU'),
  );
  static const beBy = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('be-BY'),
  );
  static const bgBg = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('bg-BG'),
  );
  static const bnIn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('bn-IN'),
  );
  static const bsBa = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('bs-BA'),
  );
  static const caEs = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ca-ES'),
  );
  static const ckbIq = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ckb-IQ'),
  );
  static const ckbIr = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ckb-IR'),
  );
  static const csCz = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('cs-CZ'),
  );
  static const cyWl = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('cy-WL'),
  );
  static const elGr = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('el-GR'),
  );
  static const etEe = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('et-EE'),
  );
  static const etEt = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('et-ET'),
  );
  static const euEs = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('eu-ES'),
  );
  static const fiFi = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('fi-FI'),
  );
  static const glEs = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('gl-ES'),
  );
  static const guIn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('gu-IN'),
  );
  static const haNg = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ha-NG'),
  );
  static const hrHr = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('hr-HR'),
  );
  static const huHu = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('hu-HU'),
  );
  static const hyAm = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('hy-AM'),
  );
  static const isIs = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('is-IS'),
  );
  static const kaGe = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ka-GE'),
  );
  static const kabDz = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('kab-DZ'),
  );
  static const kkKz = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('kk-KZ'),
  );
  static const knIn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('kn-IN'),
  );
  static const kyKg = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ky-KG'),
  );
  static const lgIn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('lg-IN'),
  );
  static const ltLt = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('lt-LT'),
  );
  static const lvLv = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('lv-LV'),
  );
  static const mhrRu = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('mhr-RU'),
  );
  static const miNz = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('mi-NZ'),
  );
  static const mkMk = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('mk-MK'),
  );
  static const mlIn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ml-IN'),
  );
  static const mnMn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('mn-MN'),
  );
  static const mrIn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('mr-IN'),
  );
  static const mtMt = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('mt-MT'),
  );
  static const noNo = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('no-NO'),
  );
  static const neNp = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ne-NP'),
  );
  static const orIn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('or-IN'),
  );
  static const paIn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('pa-IN'),
  );
  static const plPl = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('pl-PL'),
  );
  static const psAf = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ps-AF'),
  );
  static const roRo = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ro-RO'),
  );
  static const rwRw = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('rw-RW'),
  );
  static const siLk = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('si-LK'),
  );
  static const skSk = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('sk-SK'),
  );
  static const slSi = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('sl-SI'),
  );
  static const soSo = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('so-SO'),
  );
  static const sqAl = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('sq-AL'),
  );
  static const srRs = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('sr-RS'),
  );
  static const suId = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('su-ID'),
  );
  static const swBi = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('sw-BI'),
  );
  static const swKe = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('sw-KE'),
  );
  static const swRw = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('sw-RW'),
  );
  static const swTz = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('sw-TZ'),
  );
  static const swUg = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('sw-UG'),
  );
  static const tlPh = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('tl-PH'),
  );
  static const ttRu = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('tt-RU'),
  );
  static const ugCn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('ug-CN'),
  );
  static const ukUa = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('uk-UA'),
  );
  static const uzUz = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('uz-UZ'),
  );
  static const woSn = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('wo-SN'),
  );
  static const zhHk = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('zh-HK'),
  );
  static const zuZa = TranscribeLanguageModelLanguageCode._(
    TfArgLiteral('zu-ZA'),
  );

  static const List<TranscribeLanguageModelLanguageCode> values = [
    afZa,
    arAe,
    arSa,
    amEt,
    cyGb,
    daDk,
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
    esMx,
    esUs,
    faAf,
    faIr,
    frCa,
    frFr,
    gaIe,
    gdGb,
    heIl,
    hiIn,
    htHt,
    idId,
    itIt,
    jaJp,
    jvId,
    kmKh,
    koKr,
    myMm,
    msMy,
    nlNl,
    ptBr,
    ptPt,
    ruRu,
    taIn,
    teIn,
    trTr,
    zhCn,
    zhTw,
    thTh,
    enZa,
    enNz,
    viVn,
    svSe,
    abGe,
    astEs,
    azAz,
    baRu,
    beBy,
    bgBg,
    bnIn,
    bsBa,
    caEs,
    ckbIq,
    ckbIr,
    csCz,
    cyWl,
    elGr,
    etEe,
    etEt,
    euEs,
    fiFi,
    glEs,
    guIn,
    haNg,
    hrHr,
    huHu,
    hyAm,
    isIs,
    kaGe,
    kabDz,
    kkKz,
    knIn,
    kyKg,
    lgIn,
    ltLt,
    lvLv,
    mhrRu,
    miNz,
    mkMk,
    mlIn,
    mnMn,
    mrIn,
    mtMt,
    noNo,
    neNp,
    orIn,
    paIn,
    plPl,
    psAf,
    roRo,
    rwRw,
    siLk,
    skSk,
    slSi,
    soSo,
    sqAl,
    srRs,
    suId,
    swBi,
    swKe,
    swRw,
    swTz,
    swUg,
    tlPh,
    ttRu,
    ugCn,
    ukUa,
    uzUz,
    woSn,
    zhHk,
    zuZa,
  ];
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

  @internal
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
    required TranscribeLanguageModelBaseModelName baseModelName,
    required TranscribeLanguageModelLanguageCode languageCode,
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
