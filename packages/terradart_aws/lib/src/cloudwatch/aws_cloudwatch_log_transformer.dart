// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_transformer`.
const Set<String> _awsCloudwatchLogTransformerSensitive = <String>{};

/// Typed helper for the `transformer_config` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfig {
  const CloudwatchLogTransformerTransformerConfig({
    this.addKeys,
    this.copyValue,
    this.csv,
    this.dateTimeConverter,
    this.deleteKeys,
    this.grok,
    this.listToMap,
    this.lowerCaseString,
    this.moveKeys,
    this.parseCloudfront,
    this.parseJson,
    this.parseKeyValue,
    this.parsePostgres,
    this.parseRoute53,
    this.parseToOcsf,
    this.parseVpc,
    this.parseWaf,
    this.renameKeys,
    this.splitString,
    this.substituteString,
    this.trimString,
    this.typeConverter,
    this.upperCaseString,
  });

  final List<CloudwatchLogTransformerTransformerConfigAddKeys>? addKeys;

  final List<CloudwatchLogTransformerTransformerConfigCopyValue>? copyValue;

  final List<CloudwatchLogTransformerTransformerConfigCsv>? csv;

  final List<CloudwatchLogTransformerTransformerConfigDateTimeConverter>?
  dateTimeConverter;

  final List<CloudwatchLogTransformerTransformerConfigDeleteKeys>? deleteKeys;

  final List<CloudwatchLogTransformerTransformerConfigGrok>? grok;

  final List<CloudwatchLogTransformerTransformerConfigListToMap>? listToMap;

  final List<CloudwatchLogTransformerTransformerConfigLowerCaseString>?
  lowerCaseString;

  final List<CloudwatchLogTransformerTransformerConfigMoveKeys>? moveKeys;

  final List<CloudwatchLogTransformerTransformerConfigParseCloudfront>?
  parseCloudfront;

  final List<CloudwatchLogTransformerTransformerConfigParseJson>? parseJson;

  final List<CloudwatchLogTransformerTransformerConfigParseKeyValue>?
  parseKeyValue;

  final List<CloudwatchLogTransformerTransformerConfigParsePostgres>?
  parsePostgres;

  final List<CloudwatchLogTransformerTransformerConfigParseRoute53>?
  parseRoute53;

  final List<CloudwatchLogTransformerTransformerConfigParseToOcsf>? parseToOcsf;

  final List<CloudwatchLogTransformerTransformerConfigParseVpc>? parseVpc;

  final List<CloudwatchLogTransformerTransformerConfigParseWaf>? parseWaf;

  final List<CloudwatchLogTransformerTransformerConfigRenameKeys>? renameKeys;

  final List<CloudwatchLogTransformerTransformerConfigSplitString>? splitString;

  final List<CloudwatchLogTransformerTransformerConfigSubstituteString>?
  substituteString;

  final List<CloudwatchLogTransformerTransformerConfigTrimString>? trimString;

  final List<CloudwatchLogTransformerTransformerConfigTypeConverter>?
  typeConverter;

  final List<CloudwatchLogTransformerTransformerConfigUpperCaseString>?
  upperCaseString;

  Map<String, Object?> encode() => {
    if (addKeys != null) 'add_keys': [for (final e in addKeys!) e.encode()],
    if (copyValue != null)
      'copy_value': [for (final e in copyValue!) e.encode()],
    if (csv != null) 'csv': [for (final e in csv!) e.encode()],
    if (dateTimeConverter != null)
      'date_time_converter': [for (final e in dateTimeConverter!) e.encode()],
    if (deleteKeys != null)
      'delete_keys': [for (final e in deleteKeys!) e.encode()],
    if (grok != null) 'grok': [for (final e in grok!) e.encode()],
    if (listToMap != null)
      'list_to_map': [for (final e in listToMap!) e.encode()],
    if (lowerCaseString != null)
      'lower_case_string': [for (final e in lowerCaseString!) e.encode()],
    if (moveKeys != null) 'move_keys': [for (final e in moveKeys!) e.encode()],
    if (parseCloudfront != null)
      'parse_cloudfront': [for (final e in parseCloudfront!) e.encode()],
    if (parseJson != null)
      'parse_json': [for (final e in parseJson!) e.encode()],
    if (parseKeyValue != null)
      'parse_key_value': [for (final e in parseKeyValue!) e.encode()],
    if (parsePostgres != null)
      'parse_postgres': [for (final e in parsePostgres!) e.encode()],
    if (parseRoute53 != null)
      'parse_route53': [for (final e in parseRoute53!) e.encode()],
    if (parseToOcsf != null)
      'parse_to_ocsf': [for (final e in parseToOcsf!) e.encode()],
    if (parseVpc != null) 'parse_vpc': [for (final e in parseVpc!) e.encode()],
    if (parseWaf != null) 'parse_waf': [for (final e in parseWaf!) e.encode()],
    if (renameKeys != null)
      'rename_keys': [for (final e in renameKeys!) e.encode()],
    if (splitString != null)
      'split_string': [for (final e in splitString!) e.encode()],
    if (substituteString != null)
      'substitute_string': [for (final e in substituteString!) e.encode()],
    if (trimString != null)
      'trim_string': [for (final e in trimString!) e.encode()],
    if (typeConverter != null)
      'type_converter': [for (final e in typeConverter!) e.encode()],
    if (upperCaseString != null)
      'upper_case_string': [for (final e in upperCaseString!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.add_keys` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigAddKeys {
  const CloudwatchLogTransformerTransformerConfigAddKeys({this.entry});

  final List<CloudwatchLogTransformerTransformerConfigAddKeysEntry>? entry;

  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.add_keys.entry` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigAddKeysEntry {
  const CloudwatchLogTransformerTransformerConfigAddKeysEntry({
    required this.key,
    this.overwriteIfExists,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<bool>? overwriteIfExists;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (overwriteIfExists != null)
      'overwrite_if_exists': overwriteIfExists!.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.copy_value` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigCopyValue {
  const CloudwatchLogTransformerTransformerConfigCopyValue({this.entry});

  final List<CloudwatchLogTransformerTransformerConfigCopyValueEntry>? entry;

  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.copy_value.entry` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigCopyValueEntry {
  const CloudwatchLogTransformerTransformerConfigCopyValueEntry({
    this.overwriteIfExists,
    required this.source,
    required this.target,
  });

  final TfArg<bool>? overwriteIfExists;

  final TfArg<String> source;

  final TfArg<String> target;

  Map<String, Object?> encode() => {
    if (overwriteIfExists != null)
      'overwrite_if_exists': overwriteIfExists!.toTfJson(),
    'source': source.toTfJson(),
    'target': target.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.csv` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigCsv {
  const CloudwatchLogTransformerTransformerConfigCsv({
    this.columns,
    this.delimiter,
    this.quoteCharacter,
    this.source,
  });

  final TfArg<List<Object?>>? columns;

  final TfArg<String>? delimiter;

  final TfArg<String>? quoteCharacter;

  final TfArg<String>? source;

  Map<String, Object?> encode() => {
    if (columns != null) 'columns': columns!.toTfJson(),
    if (delimiter != null) 'delimiter': delimiter!.toTfJson(),
    if (quoteCharacter != null) 'quote_character': quoteCharacter!.toTfJson(),
    if (source != null) 'source': source!.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.date_time_converter` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigDateTimeConverter {
  const CloudwatchLogTransformerTransformerConfigDateTimeConverter({
    this.locale,
    required this.matchPatterns,
    required this.source,
    this.sourceTimezone,
    required this.target,
    this.targetFormat,
    this.targetTimezone,
  });

  final TfArg<String>? locale;

  final TfArg<List<Object?>> matchPatterns;

  final TfArg<String> source;

  final TfArg<String>? sourceTimezone;

  final TfArg<String> target;

  final TfArg<String>? targetFormat;

  final TfArg<String>? targetTimezone;

  Map<String, Object?> encode() => {
    if (locale != null) 'locale': locale!.toTfJson(),
    'match_patterns': matchPatterns.toTfJson(),
    'source': source.toTfJson(),
    if (sourceTimezone != null) 'source_timezone': sourceTimezone!.toTfJson(),
    'target': target.toTfJson(),
    if (targetFormat != null) 'target_format': targetFormat!.toTfJson(),
    if (targetTimezone != null) 'target_timezone': targetTimezone!.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.delete_keys` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigDeleteKeys {
  const CloudwatchLogTransformerTransformerConfigDeleteKeys({
    required this.withKeys,
  });

  final TfArg<List<Object?>> withKeys;

  Map<String, Object?> encode() => {'with_keys': withKeys.toTfJson()};
}

/// Typed helper for the `transformer_config.grok` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigGrok {
  const CloudwatchLogTransformerTransformerConfigGrok({
    required this.match,
    this.source,
  });

  final TfArg<String> match;

  final TfArg<String>? source;

  Map<String, Object?> encode() => {
    'match': match.toTfJson(),
    if (source != null) 'source': source!.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.list_to_map` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigListToMap {
  const CloudwatchLogTransformerTransformerConfigListToMap({
    this.flatten,
    this.flattenedElement,
    required this.key,
    required this.source,
    this.target,
    this.valueKey,
  });

  final TfArg<bool>? flatten;

  final TfArg<String>? flattenedElement;

  final TfArg<String> key;

  final TfArg<String> source;

  final TfArg<String>? target;

  final TfArg<String>? valueKey;

  Map<String, Object?> encode() => {
    if (flatten != null) 'flatten': flatten!.toTfJson(),
    if (flattenedElement != null)
      'flattened_element': flattenedElement!.toTfJson(),
    'key': key.toTfJson(),
    'source': source.toTfJson(),
    if (target != null) 'target': target!.toTfJson(),
    if (valueKey != null) 'value_key': valueKey!.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.lower_case_string` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigLowerCaseString {
  const CloudwatchLogTransformerTransformerConfigLowerCaseString({
    required this.withKeys,
  });

  final TfArg<List<Object?>> withKeys;

  Map<String, Object?> encode() => {'with_keys': withKeys.toTfJson()};
}

/// Typed helper for the `transformer_config.move_keys` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigMoveKeys {
  const CloudwatchLogTransformerTransformerConfigMoveKeys({this.entry});

  final List<CloudwatchLogTransformerTransformerConfigMoveKeysEntry>? entry;

  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.move_keys.entry` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigMoveKeysEntry {
  const CloudwatchLogTransformerTransformerConfigMoveKeysEntry({
    this.overwriteIfExists,
    required this.source,
    required this.target,
  });

  final TfArg<bool>? overwriteIfExists;

  final TfArg<String> source;

  final TfArg<String> target;

  Map<String, Object?> encode() => {
    if (overwriteIfExists != null)
      'overwrite_if_exists': overwriteIfExists!.toTfJson(),
    'source': source.toTfJson(),
    'target': target.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.parse_cloudfront` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigParseCloudfront {
  const CloudwatchLogTransformerTransformerConfigParseCloudfront({this.source});

  final TfArg<String>? source;

  Map<String, Object?> encode() => {
    if (source != null) 'source': source!.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.parse_json` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigParseJson {
  const CloudwatchLogTransformerTransformerConfigParseJson({
    this.destination,
    this.source,
  });

  final TfArg<String>? destination;

  final TfArg<String>? source;

  Map<String, Object?> encode() => {
    if (destination != null) 'destination': destination!.toTfJson(),
    if (source != null) 'source': source!.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.parse_key_value` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigParseKeyValue {
  const CloudwatchLogTransformerTransformerConfigParseKeyValue({
    this.destination,
    this.fieldDelimiter,
    this.keyPrefix,
    this.keyValueDelimiter,
    this.nonMatchValue,
    this.overwriteIfExists,
    this.source,
  });

  final TfArg<String>? destination;

  final TfArg<String>? fieldDelimiter;

  final TfArg<String>? keyPrefix;

  final TfArg<String>? keyValueDelimiter;

  final TfArg<String>? nonMatchValue;

  final TfArg<bool>? overwriteIfExists;

  final TfArg<String>? source;

  Map<String, Object?> encode() => {
    if (destination != null) 'destination': destination!.toTfJson(),
    if (fieldDelimiter != null) 'field_delimiter': fieldDelimiter!.toTfJson(),
    if (keyPrefix != null) 'key_prefix': keyPrefix!.toTfJson(),
    if (keyValueDelimiter != null)
      'key_value_delimiter': keyValueDelimiter!.toTfJson(),
    if (nonMatchValue != null) 'non_match_value': nonMatchValue!.toTfJson(),
    if (overwriteIfExists != null)
      'overwrite_if_exists': overwriteIfExists!.toTfJson(),
    if (source != null) 'source': source!.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.parse_postgres` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigParsePostgres {
  const CloudwatchLogTransformerTransformerConfigParsePostgres({this.source});

  final TfArg<String>? source;

  Map<String, Object?> encode() => {
    if (source != null) 'source': source!.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.parse_route53` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigParseRoute53 {
  const CloudwatchLogTransformerTransformerConfigParseRoute53({this.source});

  final TfArg<String>? source;

  Map<String, Object?> encode() => {
    if (source != null) 'source': source!.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.parse_to_ocsf` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigParseToOcsf {
  const CloudwatchLogTransformerTransformerConfigParseToOcsf({
    required this.eventSource,
    required this.ocsfVersion,
    this.source,
  });

  final TfArg<String> eventSource;

  final TfArg<String> ocsfVersion;

  final TfArg<String>? source;

  Map<String, Object?> encode() => {
    'event_source': eventSource.toTfJson(),
    'ocsf_version': ocsfVersion.toTfJson(),
    if (source != null) 'source': source!.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.parse_vpc` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigParseVpc {
  const CloudwatchLogTransformerTransformerConfigParseVpc({this.source});

  final TfArg<String>? source;

  Map<String, Object?> encode() => {
    if (source != null) 'source': source!.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.parse_waf` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigParseWaf {
  const CloudwatchLogTransformerTransformerConfigParseWaf({this.source});

  final TfArg<String>? source;

  Map<String, Object?> encode() => {
    if (source != null) 'source': source!.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.rename_keys` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigRenameKeys {
  const CloudwatchLogTransformerTransformerConfigRenameKeys({this.entry});

  final List<CloudwatchLogTransformerTransformerConfigRenameKeysEntry>? entry;

  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.rename_keys.entry` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigRenameKeysEntry {
  const CloudwatchLogTransformerTransformerConfigRenameKeysEntry({
    required this.key,
    this.overwriteIfExists,
    required this.renameTo,
  });

  final TfArg<String> key;

  final TfArg<bool>? overwriteIfExists;

  final TfArg<String> renameTo;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    if (overwriteIfExists != null)
      'overwrite_if_exists': overwriteIfExists!.toTfJson(),
    'rename_to': renameTo.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.split_string` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigSplitString {
  const CloudwatchLogTransformerTransformerConfigSplitString({this.entry});

  final List<CloudwatchLogTransformerTransformerConfigSplitStringEntry>? entry;

  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.split_string.entry` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigSplitStringEntry {
  const CloudwatchLogTransformerTransformerConfigSplitStringEntry({
    required this.delimiter,
    required this.source,
  });

  final TfArg<String> delimiter;

  final TfArg<String> source;

  Map<String, Object?> encode() => {
    'delimiter': delimiter.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.substitute_string` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigSubstituteString {
  const CloudwatchLogTransformerTransformerConfigSubstituteString({this.entry});

  final List<CloudwatchLogTransformerTransformerConfigSubstituteStringEntry>?
  entry;

  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.substitute_string.entry` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigSubstituteStringEntry {
  const CloudwatchLogTransformerTransformerConfigSubstituteStringEntry({
    required this.from,
    required this.source,
    required this.to,
  });

  final TfArg<String> from;

  final TfArg<String> source;

  final TfArg<String> to;

  Map<String, Object?> encode() => {
    'from': from.toTfJson(),
    'source': source.toTfJson(),
    'to': to.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.trim_string` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigTrimString {
  const CloudwatchLogTransformerTransformerConfigTrimString({
    required this.withKeys,
  });

  final TfArg<List<Object?>> withKeys;

  Map<String, Object?> encode() => {'with_keys': withKeys.toTfJson()};
}

/// Typed helper for the `transformer_config.type_converter` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigTypeConverter {
  const CloudwatchLogTransformerTransformerConfigTypeConverter({this.entry});

  final List<CloudwatchLogTransformerTransformerConfigTypeConverterEntry>?
  entry;

  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.type_converter.entry` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigTypeConverterEntry {
  const CloudwatchLogTransformerTransformerConfigTypeConverterEntry({
    required this.key,
    required this.type,
  });

  final TfArg<String> key;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.upper_case_string` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTransformerConfigUpperCaseString {
  const CloudwatchLogTransformerTransformerConfigUpperCaseString({
    required this.withKeys,
  });

  final TfArg<List<Object?>> withKeys;

  Map<String, Object?> encode() => {'with_keys': withKeys.toTfJson()};
}

/// Factory wrapper for `aws_cloudwatch_log_transformer`.
final class AwsCloudwatchLogTransformer extends Resource {
  static const String tfType = 'aws_cloudwatch_log_transformer';

  AwsCloudwatchLogTransformer({
    required super.localName,
    required TfArg<String> logGroupArn,
    TfArg<String>? region,
    List<CloudwatchLogTransformerTransformerConfig>? transformerConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_group_arn': logGroupArn,
           if (region != null) 'region': region,
           if (transformerConfig != null)
             'transformer_config': TfArg.literal([
               for (final e in transformerConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogTransformerSensitive;
}
