// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_parser_extension`.
const Set<String> _googleChronicleParserExtensionSensitive = <String>{};

/// At most one of `cbn_snippet`, `field_extractors`, `dynamic_parsing` on `google_chronicle_parser_extension`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.cbnSnippet(...)`.
sealed class ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsing {
  const ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsing();

  /// Sets `cbn_snippet`.
  const factory ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsing.cbnSnippet(
    TfArg<String> cbnSnippet,
  ) = ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsingCbnSnippet;

  /// Sets `field_extractors`.
  const factory ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsing.fieldExtractors(
    ChronicleParserExtensionFieldExtractors fieldExtractors,
  ) = ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsingFieldExtractors;

  /// Sets `dynamic_parsing`.
  const factory ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsing.dynamicParsing(
    ChronicleParserExtensionDynamicParsing dynamicParsing,
  ) = ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsingDynamicParsing;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsing.cbnSnippet] choice: sets `cbn_snippet`.
final class ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsingCbnSnippet
    extends
        ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsing {
  const ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsingCbnSnippet(
    this.cbnSnippet,
  );

  final TfArg<String> cbnSnippet;

  @override
  String get blockKey => 'cbn_snippet';

  @override
  Map<String, Object?> encode() => {'cbn_snippet': cbnSnippet.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'cbn_snippet': cbnSnippet};
}

/// The [ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsing.fieldExtractors] choice: sets `field_extractors`.
final class ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsingFieldExtractors
    extends
        ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsing {
  const ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsingFieldExtractors(
    this.fieldExtractors,
  );

  final ChronicleParserExtensionFieldExtractors fieldExtractors;

  @override
  String get blockKey => 'field_extractors';

  @override
  Map<String, Object?> encode() => {
    'field_extractors': fieldExtractors.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'field_extractors': TfArg.literal(fieldExtractors.encode()),
  };
}

/// The [ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsing.dynamicParsing] choice: sets `dynamic_parsing`.
final class ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsingDynamicParsing
    extends
        ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsing {
  const ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsingDynamicParsing(
    this.dynamicParsing,
  );

  final ChronicleParserExtensionDynamicParsing dynamicParsing;

  @override
  String get blockKey => 'dynamic_parsing';

  @override
  Map<String, Object?> encode() => {'dynamic_parsing': dynamicParsing.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'dynamic_parsing': TfArg.literal(dynamicParsing.encode()),
  };
}

/// Typed helper for the `dynamic_parsing` block of
/// `google_chronicle_parser_extension` (derived from provider schema).
@immutable
final class ChronicleParserExtensionDynamicParsing {
  const ChronicleParserExtensionDynamicParsing({this.optedFields});

  final List<ChronicleParserExtensionDynamicParsingOptedFields>? optedFields;

  Map<String, Object?> encode() => {
    if (optedFields != null)
      'opted_fields': [for (final e in optedFields!) e.encode()],
  };
}

/// Typed helper for the `dynamic_parsing.opted_fields` block of
/// `google_chronicle_parser_extension` (derived from provider schema).
@immutable
final class ChronicleParserExtensionDynamicParsingOptedFields {
  const ChronicleParserExtensionDynamicParsingOptedFields({
    this.path,
    this.sampleValue,
  });

  final TfArg<String>? path;

  final TfArg<String>? sampleValue;

  Map<String, Object?> encode() => {
    if (path != null) 'path': path!.toTfJson(),
    if (sampleValue != null) 'sample_value': sampleValue!.toTfJson(),
  };
}

/// Typed helper for the `field_extractors` block of
/// `google_chronicle_parser_extension` (derived from provider schema).
@immutable
final class ChronicleParserExtensionFieldExtractors {
  const ChronicleParserExtensionFieldExtractors({
    this.appendRepeatedFields,
    this.logFormat,
    this.extractors,
    this.preprocessConfig,
  });

  final TfArg<bool>? appendRepeatedFields;

  final TfArg<String>? logFormat;

  final List<ChronicleParserExtensionFieldExtractorsExtractors>? extractors;

  final ChronicleParserExtensionFieldExtractorsPreprocessConfig?
  preprocessConfig;

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

/// Typed helper for the `field_extractors.extractors` block of
/// `google_chronicle_parser_extension` (derived from provider schema).
@immutable
final class ChronicleParserExtensionFieldExtractorsExtractors {
  const ChronicleParserExtensionFieldExtractorsExtractors({
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

/// Typed helper for the `field_extractors.preprocess_config` block of
/// `google_chronicle_parser_extension` (derived from provider schema).
@immutable
final class ChronicleParserExtensionFieldExtractorsPreprocessConfig {
  const ChronicleParserExtensionFieldExtractorsPreprocessConfig({
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

/// Factory wrapper for `google_chronicle_parser_extension`.
///
/// A parser extension allows customers to extend or customize the behavior of
/// an existing prebuilt or custom parser. It enables extracting additional
/// fields from raw logs without modifying the base parser.
///
/// Chronicle (Google SecOps) **parser extension** — CBN snippet / field
/// extractors layered on a [logType] parser.
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// extensions sit on the ingestion path of an entitlement-gated Chronicle
/// instance. Not applyable on `terradart-validate`. **Never** wire into
/// apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. Prefer pairing with
/// [GoogleChronicleParser] for the same [logType].
final class GoogleChronicleParserExtension extends Resource {
  static const String tfType = 'google_chronicle_parser_extension';

  GoogleChronicleParserExtension({
    required super.localName,
    required TfArg<String> logType,
    required TfArg<String> location,
    required TfArg<String> instance,
    ChronicleParserExtensionCbnSnippetOrFieldExtractorsOrDynamicParsing?
    cbnSnippetOrFieldExtractorsOrDynamicParsing,
    TfArg<String>? log,
    TfArg<bool>? validationSkipped,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_type': logType,
           'location': location,
           'instance': instance,
           ...?cbnSnippetOrFieldExtractorsOrDynamicParsing?.argMap,
           if (log != null) 'log': log,
           if (validationSkipped != null)
             'validation_skipped': validationSkipped,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleParserExtensionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleParserExtension>`.
  RefTo<GoogleChronicleParserExtension> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `extension_validation_report` attribute.
  TfRef<String> get extensionValidationReport =>
      TfRef.attribute<String>(this, 'extension_validation_report');

  /// Reference to `last_live_time` attribute.
  TfRef<String> get lastLiveTime =>
      TfRef.attribute<String>(this, 'last_live_time');

  /// Reference to `parserextension` attribute.
  TfRef<String> get parserextension =>
      TfRef.attribute<String>(this, 'parserextension');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_last_changed_time` attribute.
  TfRef<String> get stateLastChangedTime =>
      TfRef.attribute<String>(this, 'state_last_changed_time');

  /// Reference to `validation_report` attribute.
  TfRef<String> get validationReport =>
      TfRef.attribute<String>(this, 'validation_report');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
