// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_classifier`.
const Set<String> _awsGlueClassifierSensitive = <String>{};

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

  final TfArg<String>? containsHeader;

  final TfArg<bool>? customDatatypeConfigured;

  final TfArg<List<Object?>>? customDatatypes;

  final TfArg<String>? delimiter;

  final TfArg<bool>? disableValueTrimming;

  final TfArg<List<Object?>>? header;

  final TfArg<String>? quoteSymbol;

  final TfArg<String>? serde;

  Map<String, Object?> encode() => {
    if (allowSingleColumn != null)
      'allow_single_column': allowSingleColumn!.toTfJson(),
    if (containsHeader != null) 'contains_header': containsHeader!.toTfJson(),
    if (customDatatypeConfigured != null)
      'custom_datatype_configured': customDatatypeConfigured!.toTfJson(),
    if (customDatatypes != null)
      'custom_datatypes': customDatatypes!.toTfJson(),
    if (delimiter != null) 'delimiter': delimiter!.toTfJson(),
    if (disableValueTrimming != null)
      'disable_value_trimming': disableValueTrimming!.toTfJson(),
    if (header != null) 'header': header!.toTfJson(),
    if (quoteSymbol != null) 'quote_symbol': quoteSymbol!.toTfJson(),
    if (serde != null) 'serde': serde!.toTfJson(),
  };
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
    if (customPatterns != null) 'custom_patterns': customPatterns!.toTfJson(),
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
    GlueClassifierCsvClassifier? csvClassifier,
    GlueClassifierGrokClassifier? grokClassifier,
    GlueClassifierJsonClassifier? jsonClassifier,
    GlueClassifierXmlClassifier? xmlClassifier,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (csvClassifier != null)
             'csv_classifier': TfArg.literal(csvClassifier.encode()),
           if (grokClassifier != null)
             'grok_classifier': TfArg.literal(grokClassifier.encode()),
           if (jsonClassifier != null)
             'json_classifier': TfArg.literal(jsonClassifier.encode()),
           if (xmlClassifier != null)
             'xml_classifier': TfArg.literal(xmlClassifier.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueClassifierSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
