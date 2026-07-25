// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_parser`.
const Set<String> _googleChronicleParserSensitive = <String>{};

/// Typed helper for the `low_code` block of
/// `google_chronicle_parser` (derived from provider schema).
@immutable
final class ChronicleParserLowCode {
  const ChronicleParserLowCode({this.log, this.fieldExtractors});

  final TfArg<String>? log;

  final ChronicleParserLowCodeFieldExtractors? fieldExtractors;

  Map<String, Object?> encode() => {
    if (log != null) 'log': log!.toTfJson(),
    if (fieldExtractors != null) 'field_extractors': fieldExtractors!.encode(),
  };
}

/// Typed helper for the `low_code.field_extractors` block of
/// `google_chronicle_parser` (derived from provider schema).
@immutable
final class ChronicleParserLowCodeFieldExtractors {
  const ChronicleParserLowCodeFieldExtractors({
    this.appendRepeatedFields,
    this.logFormat,
    this.extractors,
    this.preprocessConfig,
  });

  final TfArg<bool>? appendRepeatedFields;

  final TfArg<String>? logFormat;

  final List<ChronicleParserLowCodeFieldExtractorsExtractors>? extractors;

  final ChronicleParserLowCodeFieldExtractorsPreprocessConfig? preprocessConfig;

  Map<String, Object?> encode() => {
    if (appendRepeatedFields != null)
      'append_repeated_fields': appendRepeatedFields!.toTfJson(),
    if (logFormat != null) 'log_format': logFormat!.toTfJson(),
    if (extractors != null)
      'extractors': [for (final e in extractors!) e.encode()],
    if (preprocessConfig != null)
      'preprocess_config': preprocessConfig!.encode(),
  };
}

/// Typed helper for the `low_code.field_extractors.extractors` block of
/// `google_chronicle_parser` (derived from provider schema).
@immutable
final class ChronicleParserLowCodeFieldExtractorsExtractors {
  const ChronicleParserLowCodeFieldExtractorsExtractors({
    this.destinationPath,
    this.fieldPath,
    this.preconditionOp,
    this.preconditionPath,
    this.preconditionValue,
    this.value,
  });

  final TfArg<String>? destinationPath;

  final TfArg<String>? fieldPath;

  final TfArg<String>? preconditionOp;

  final TfArg<String>? preconditionPath;

  final TfArg<String>? preconditionValue;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (destinationPath != null)
      'destination_path': destinationPath!.toTfJson(),
    if (fieldPath != null) 'field_path': fieldPath!.toTfJson(),
    if (preconditionOp != null) 'precondition_op': preconditionOp!.toTfJson(),
    if (preconditionPath != null)
      'precondition_path': preconditionPath!.toTfJson(),
    if (preconditionValue != null)
      'precondition_value': preconditionValue!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `low_code.field_extractors.preprocess_config` block of
/// `google_chronicle_parser` (derived from provider schema).
@immutable
final class ChronicleParserLowCodeFieldExtractorsPreprocessConfig {
  const ChronicleParserLowCodeFieldExtractorsPreprocessConfig({
    this.grokRegex,
    this.target,
  });

  final TfArg<String>? grokRegex;

  final TfArg<String>? target;

  Map<String, Object?> encode() => {
    if (grokRegex != null) 'grok_regex': grokRegex!.toTfJson(),
    if (target != null) 'target': target!.toTfJson(),
  };
}

/// Typed helper for the `version_info` block of
/// `google_chronicle_parser` (derived from provider schema).
@immutable
final class ChronicleParserVersionInfo {
  const ChronicleParserVersionInfo({required this.autoUpgradeDisabled});

  final TfArg<bool> autoUpgradeDisabled;

  Map<String, Object?> encode() => {
    'auto_upgrade_disabled': autoUpgradeDisabled.toTfJson(),
  };
}

/// Factory wrapper for `google_chronicle_parser`.
///
/// A parser is a configuration that parses raw logs of a specific log type into
/// Unified Data Model (UDM) events. Chronicle supports both customer-created
/// custom parsers and Google-provided prebuilt parsers.
///
/// Chronicle (Google SecOps) **parser** — CBN / low-code parser for a
/// [logtype] on a Chronicle instance.
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// parsers sit on the ingestion path of an entitlement-gated Chronicle
/// instance; applying them implies SecOps package / ingestion fees. Not
/// applyable on `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply.
final class GoogleChronicleParser extends Resource {
  static const String tfType = 'google_chronicle_parser';

  GoogleChronicleParser({
    required super.localName,
    required TfArg<String> logtype,
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<String>? cbn,
    ChronicleParserLowCode? lowCode,
    ChronicleParserVersionInfo? versionInfo,
    TfArg<bool>? validatedOnEmptyLogs,
    TfArg<bool>? validationSkipped,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'logtype': logtype,
           'location': location,
           'instance': instance,
           if (cbn != null) 'cbn': cbn,
           if (lowCode != null) 'low_code': TfArg.literal(lowCode.encode()),
           if (versionInfo != null)
             'version_info': TfArg.literal(versionInfo.encode()),
           if (validatedOnEmptyLogs != null)
             'validated_on_empty_logs': validatedOnEmptyLogs,
           if (validationSkipped != null)
             'validation_skipped': validationSkipped,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleParserSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `changelogs` attribute.
  TfRef<List<Map<String, Object?>>> get changelogs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'changelogs');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `creator` attribute.
  TfRef<List<Map<String, Object?>>> get creator =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'creator');

  /// Reference to `dynamic_parsing_config` attribute.
  TfRef<String> get dynamicParsingConfig =>
      TfRef.attribute<String>(this, 'dynamic_parsing_config');

  /// Reference to `parser` attribute.
  TfRef<String> get parser => TfRef.attribute<String>(this, 'parser');

  /// Reference to `parser_extension` attribute.
  TfRef<String> get parserExtension =>
      TfRef.attribute<String>(this, 'parser_extension');

  /// Reference to `release_stage` attribute.
  TfRef<String> get releaseStage =>
      TfRef.attribute<String>(this, 'release_stage');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `validation_report` attribute.
  TfRef<String> get validationReport =>
      TfRef.attribute<String>(this, 'validation_report');

  /// Reference to `validation_stage` attribute.
  TfRef<String> get validationStage =>
      TfRef.attribute<String>(this, 'validation_stage');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
