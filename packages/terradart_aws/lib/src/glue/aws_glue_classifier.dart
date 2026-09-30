// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_classifier`.
const Set<String> _awsGlueClassifierSensitive = <String>{};

/// At most one of `csv_classifier`, `grok_classifier`, `json_classifier`, `xml_classifier` on `aws_glue_classifier`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.csvClassifier(...)`.
sealed class GlueClassifierFormat {
  const GlueClassifierFormat();

  /// Sets `csv_classifier`.
  const factory GlueClassifierFormat.csvClassifier(
    GlueClassifierCsvClassifier csvClassifier,
  ) = GlueClassifierFormatCsvClassifier;

  /// Sets `grok_classifier`.
  const factory GlueClassifierFormat.grokClassifier(
    GlueClassifierGrokClassifier grokClassifier,
  ) = GlueClassifierFormatGrokClassifier;

  /// Sets `json_classifier`.
  const factory GlueClassifierFormat.jsonClassifier(
    GlueClassifierJsonClassifier jsonClassifier,
  ) = GlueClassifierFormatJsonClassifier;

  /// Sets `xml_classifier`.
  const factory GlueClassifierFormat.xmlClassifier(
    GlueClassifierXmlClassifier xmlClassifier,
  ) = GlueClassifierFormatXmlClassifier;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [GlueClassifierFormat.csvClassifier] choice: sets `csv_classifier`.
final class GlueClassifierFormatCsvClassifier extends GlueClassifierFormat {
  const GlueClassifierFormatCsvClassifier(this.csvClassifier);

  final GlueClassifierCsvClassifier csvClassifier;

  @override
  String get blockKey => 'csv_classifier';

  @override
  Map<String, Object?> encode() => {'csv_classifier': csvClassifier.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'csv_classifier': TfArg.literal(csvClassifier.encode()),
  };
}

/// The [GlueClassifierFormat.grokClassifier] choice: sets `grok_classifier`.
final class GlueClassifierFormatGrokClassifier extends GlueClassifierFormat {
  const GlueClassifierFormatGrokClassifier(this.grokClassifier);

  final GlueClassifierGrokClassifier grokClassifier;

  @override
  String get blockKey => 'grok_classifier';

  @override
  Map<String, Object?> encode() => {'grok_classifier': grokClassifier.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'grok_classifier': TfArg.literal(grokClassifier.encode()),
  };
}

/// The [GlueClassifierFormat.jsonClassifier] choice: sets `json_classifier`.
final class GlueClassifierFormatJsonClassifier extends GlueClassifierFormat {
  const GlueClassifierFormatJsonClassifier(this.jsonClassifier);

  final GlueClassifierJsonClassifier jsonClassifier;

  @override
  String get blockKey => 'json_classifier';

  @override
  Map<String, Object?> encode() => {'json_classifier': jsonClassifier.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'json_classifier': TfArg.literal(jsonClassifier.encode()),
  };
}

/// The [GlueClassifierFormat.xmlClassifier] choice: sets `xml_classifier`.
final class GlueClassifierFormatXmlClassifier extends GlueClassifierFormat {
  const GlueClassifierFormatXmlClassifier(this.xmlClassifier);

  final GlueClassifierXmlClassifier xmlClassifier;

  @override
  String get blockKey => 'xml_classifier';

  @override
  Map<String, Object?> encode() => {'xml_classifier': xmlClassifier.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'xml_classifier': TfArg.literal(xmlClassifier.encode()),
  };
}

/// Typed helper for the `csv_classifier` block of
/// `aws_glue_classifier` (derived from provider schema).
@immutable
final class GlueClassifierCsvClassifier {
  const GlueClassifierCsvClassifier({
    this.allowSingleColumn,
    this.containsHeader,
    this.customDatatypeConfigured,
    this.customDatatypes,
    this.delimiter,
    this.disableValueTrimming,
    this.header,
    this.quoteSymbol,
    this.serde,
  });

  final TfArg<bool>? allowSingleColumn;

  final TfArg<GlueClassifierCsvClassifierContainsHeader>? containsHeader;

  final TfArg<bool>? customDatatypeConfigured;

  final List<TfArg<GlueClassifierCsvClassifierCustomDatatypes>>?
  customDatatypes;

  final TfArg<String>? delimiter;

  final TfArg<bool>? disableValueTrimming;

  final TfArg<List<String>>? header;

  final TfArg<String>? quoteSymbol;

  final TfArg<GlueClassifierCsvClassifierSerde>? serde;

  Map<String, Object?> encode() => {
    'allow_single_column': ?allowSingleColumn?.toTfJson(),
    'contains_header': ?containsHeader?.toTfJson(),
    'custom_datatype_configured': ?customDatatypeConfigured?.toTfJson(),
    if (customDatatypes != null)
      'custom_datatypes': [for (final e in customDatatypes!) e.toTfJson()],
    'delimiter': ?delimiter?.toTfJson(),
    'disable_value_trimming': ?disableValueTrimming?.toTfJson(),
    'header': ?header?.toTfJson(),
    'quote_symbol': ?quoteSymbol?.toTfJson(),
    'serde': ?serde?.toTfJson(),
  };
}

/// `contains_header` — derived from the provider schema description.
enum GlueClassifierCsvClassifierContainsHeader implements TerraformEnum {
  unknown('UNKNOWN'),
  present('PRESENT'),
  absent('ABSENT');

  const GlueClassifierCsvClassifierContainsHeader(this.terraformValue);
  @override
  final String terraformValue;
}

/// `custom_datatypes` — derived from the provider schema description.
enum GlueClassifierCsvClassifierCustomDatatypes implements TerraformEnum {
  binary('BINARY'),
  boolean('BOOLEAN'),
  date('DATE'),
  decimal('DECIMAL'),
  double('DOUBLE'),
  float('FLOAT'),
  int('INT'),
  long('LONG'),
  short('SHORT'),
  string('STRING'),
  timestamp('TIMESTAMP');

  const GlueClassifierCsvClassifierCustomDatatypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// `serde` — derived from the provider schema description.
enum GlueClassifierCsvClassifierSerde implements TerraformEnum {
  opencsvserde('OpenCSVSerDe'),
  lazysimpleserde('LazySimpleSerDe'),
  none('None');

  const GlueClassifierCsvClassifierSerde(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `grok_classifier` block of
/// `aws_glue_classifier` (derived from provider schema).
@immutable
final class GlueClassifierGrokClassifier {
  const GlueClassifierGrokClassifier({
    required this.classification,
    this.customPatterns,
    required this.grokPattern,
  });

  final TfArg<String> classification;

  final TfArg<String>? customPatterns;

  final TfArg<String> grokPattern;

  Map<String, Object?> encode() => {
    'classification': classification.toTfJson(),
    'custom_patterns': ?customPatterns?.toTfJson(),
    'grok_pattern': grokPattern.toTfJson(),
  };
}

/// Typed helper for the `json_classifier` block of
/// `aws_glue_classifier` (derived from provider schema).
@immutable
final class GlueClassifierJsonClassifier {
  const GlueClassifierJsonClassifier({required this.jsonPath});

  final TfArg<String> jsonPath;

  Map<String, Object?> encode() => {'json_path': jsonPath.toTfJson()};
}

/// Typed helper for the `xml_classifier` block of
/// `aws_glue_classifier` (derived from provider schema).
@immutable
final class GlueClassifierXmlClassifier {
  const GlueClassifierXmlClassifier({
    required this.classification,
    required this.rowTag,
  });

  final TfArg<String> classification;

  final TfArg<String> rowTag;

  Map<String, Object?> encode() => {
    'classification': classification.toTfJson(),
    'row_tag': rowTag.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_classifier`.
final class AwsGlueClassifier extends Resource {
  static const String tfType = 'aws_glue_classifier';

  AwsGlueClassifier({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    GlueClassifierFormat? format,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'region': ?region, ...?format?.argMap},
       );

  @override
  Set<String> get sensitiveFields => _awsGlueClassifierSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueClassifier>`.
  RefTo<AwsGlueClassifier> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
