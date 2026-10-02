// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;

/// Sensitive field paths for `aws_cloudwatch_log_transformer`.
const Set<String> _awsCloudwatchLogTransformerSensitive = <String>{};

/// Typed helper for the `transformer_config` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerConfig {
  const CloudwatchLogTransformerConfig({
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

  final List<CloudwatchLogTransformerAddKeys>? addKeys;

  final List<CloudwatchLogTransformerCopyValue>? copyValue;

  final List<CloudwatchLogTransformerCsv>? csv;

  final List<CloudwatchLogTransformerDateTimeConverter>? dateTimeConverter;

  final List<CloudwatchLogTransformerDeleteKeys>? deleteKeys;

  final List<CloudwatchLogTransformerGrok>? grok;

  final List<CloudwatchLogTransformerListToMap>? listToMap;

  final List<CloudwatchLogTransformerLowerCaseString>? lowerCaseString;

  final List<CloudwatchLogTransformerMoveKeys>? moveKeys;

  final List<CloudwatchLogTransformerParseCloudfront>? parseCloudfront;

  final List<CloudwatchLogTransformerParseJson>? parseJson;

  final List<CloudwatchLogTransformerParseKeyValue>? parseKeyValue;

  final List<CloudwatchLogTransformerParsePostgres>? parsePostgres;

  final List<CloudwatchLogTransformerParseRoute53>? parseRoute53;

  final List<CloudwatchLogTransformerParseToOcsf>? parseToOcsf;

  final List<CloudwatchLogTransformerParseVpc>? parseVpc;

  final List<CloudwatchLogTransformerParseWaf>? parseWaf;

  final List<CloudwatchLogTransformerRenameKeys>? renameKeys;

  final List<CloudwatchLogTransformerSplitString>? splitString;

  final List<CloudwatchLogTransformerSubstituteString>? substituteString;

  final List<CloudwatchLogTransformerTrimString>? trimString;

  final List<CloudwatchLogTransformerTypeConverter>? typeConverter;

  final List<CloudwatchLogTransformerUpperCaseString>? upperCaseString;

  @internal
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
final class CloudwatchLogTransformerAddKeys {
  const CloudwatchLogTransformerAddKeys({this.entry});

  final List<CloudwatchLogTransformerAddKeysEntry>? entry;

  @internal
  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.add_keys.entry` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerAddKeysEntry {
  const CloudwatchLogTransformerAddKeysEntry({
    required this.key,
    this.overwriteIfExists,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<bool>? overwriteIfExists;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'overwrite_if_exists': ?overwriteIfExists?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.copy_value` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerCopyValue {
  const CloudwatchLogTransformerCopyValue({this.entry});

  final List<CloudwatchLogTransformerCopyValueEntry>? entry;

  @internal
  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.copy_value.entry` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudwatchLogTransformerCopyValueEntry {
  const CloudwatchLogTransformerCopyValueEntry({
    this.overwriteIfExists,
    required this.source,
    required this.target,
  });

  final TfArg<bool>? overwriteIfExists;

  final TfArg<String> source;

  final TfArg<String> target;

  @internal
  Map<String, Object?> encode() => {
    'overwrite_if_exists': ?overwriteIfExists?.toTfJson(),
    'source': source.toTfJson(),
    'target': target.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.csv` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerCsv {
  const CloudwatchLogTransformerCsv({
    this.columns,
    this.delimiter,
    this.quoteCharacter,
    this.source,
  });

  final TfArg<List<String>>? columns;

  final TfArg<String>? delimiter;

  final TfArg<String>? quoteCharacter;

  final TfArg<String>? source;

  @internal
  Map<String, Object?> encode() => {
    'columns': ?columns?.toTfJson(),
    'delimiter': ?delimiter?.toTfJson(),
    'quote_character': ?quoteCharacter?.toTfJson(),
    'source': ?source?.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.date_time_converter` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerDateTimeConverter {
  const CloudwatchLogTransformerDateTimeConverter({
    this.locale,
    required this.matchPatterns,
    required this.source,
    this.sourceTimezone,
    required this.target,
    this.targetFormat,
    this.targetTimezone,
  });

  final TfArg<String>? locale;

  final TfArg<List<String>> matchPatterns;

  final TfArg<String> source;

  final TfArg<String>? sourceTimezone;

  final TfArg<String> target;

  final TfArg<String>? targetFormat;

  final TfArg<String>? targetTimezone;

  @internal
  Map<String, Object?> encode() => {
    'locale': ?locale?.toTfJson(),
    'match_patterns': matchPatterns.toTfJson(),
    'source': source.toTfJson(),
    'source_timezone': ?sourceTimezone?.toTfJson(),
    'target': target.toTfJson(),
    'target_format': ?targetFormat?.toTfJson(),
    'target_timezone': ?targetTimezone?.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.delete_keys` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerDeleteKeys {
  const CloudwatchLogTransformerDeleteKeys({required this.withKeys});

  final TfArg<List<String>> withKeys;

  @internal
  Map<String, Object?> encode() => {'with_keys': withKeys.toTfJson()};
}

/// Typed helper for the `transformer_config.grok` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerGrok {
  const CloudwatchLogTransformerGrok({required this.match, this.source});

  final TfArg<String> match;

  final TfArg<String>? source;

  @internal
  Map<String, Object?> encode() => {
    'match': match.toTfJson(),
    'source': ?source?.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.list_to_map` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerListToMap {
  const CloudwatchLogTransformerListToMap({
    this.flatten,
    this.flattenedElement,
    required this.key,
    required this.source,
    this.target,
    this.valueKey,
  });

  final TfArg<bool>? flatten;

  final CloudwatchLogTransformerFlattenedElement? flattenedElement;

  final TfArg<String> key;

  final TfArg<String> source;

  final TfArg<String>? target;

  final TfArg<String>? valueKey;

  @internal
  Map<String, Object?> encode() => {
    'flatten': ?flatten?.toTfJson(),
    'flattened_element': ?flattenedElement?.toTfJson(),
    'key': key.toTfJson(),
    'source': source.toTfJson(),
    'target': ?target?.toTfJson(),
    'value_key': ?valueKey?.toTfJson(),
  };
}

/// `flattened_element` — derived from the provider schema description.
extension type const CloudwatchLogTransformerFlattenedElement._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchLogTransformerFlattenedElement.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchLogTransformerFlattenedElement.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchLogTransformerFlattenedElement.arg(TfArg<String> arg)
    : this._(arg);

  static const first = CloudwatchLogTransformerFlattenedElement._(
    TfArgLiteral('first'),
  );
  static const last = CloudwatchLogTransformerFlattenedElement._(
    TfArgLiteral('last'),
  );

  static const List<CloudwatchLogTransformerFlattenedElement> values = [
    first,
    last,
  ];
}

/// Typed helper for the `transformer_config.lower_case_string` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerLowerCaseString {
  const CloudwatchLogTransformerLowerCaseString({required this.withKeys});

  final TfArg<List<String>> withKeys;

  @internal
  Map<String, Object?> encode() => {'with_keys': withKeys.toTfJson()};
}

/// Typed helper for the `transformer_config.move_keys` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerMoveKeys {
  const CloudwatchLogTransformerMoveKeys({this.entry});

  final List<CloudwatchLogTransformerCopyValueEntry>? entry;

  @internal
  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.parse_cloudfront` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerParseCloudfront {
  const CloudwatchLogTransformerParseCloudfront({this.source});

  final TfArg<String>? source;

  @internal
  Map<String, Object?> encode() => {'source': ?source?.toTfJson()};
}

/// Typed helper for the `transformer_config.parse_json` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerParseJson {
  const CloudwatchLogTransformerParseJson({this.destination, this.source});

  final TfArg<String>? destination;

  final TfArg<String>? source;

  @internal
  Map<String, Object?> encode() => {
    'destination': ?destination?.toTfJson(),
    'source': ?source?.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.parse_key_value` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerParseKeyValue {
  const CloudwatchLogTransformerParseKeyValue({
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

  @internal
  Map<String, Object?> encode() => {
    'destination': ?destination?.toTfJson(),
    'field_delimiter': ?fieldDelimiter?.toTfJson(),
    'key_prefix': ?keyPrefix?.toTfJson(),
    'key_value_delimiter': ?keyValueDelimiter?.toTfJson(),
    'non_match_value': ?nonMatchValue?.toTfJson(),
    'overwrite_if_exists': ?overwriteIfExists?.toTfJson(),
    'source': ?source?.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.parse_postgres` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerParsePostgres {
  const CloudwatchLogTransformerParsePostgres({this.source});

  final TfArg<String>? source;

  @internal
  Map<String, Object?> encode() => {'source': ?source?.toTfJson()};
}

/// Typed helper for the `transformer_config.parse_route53` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerParseRoute53 {
  const CloudwatchLogTransformerParseRoute53({this.source});

  final TfArg<String>? source;

  @internal
  Map<String, Object?> encode() => {'source': ?source?.toTfJson()};
}

/// Typed helper for the `transformer_config.parse_to_ocsf` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerParseToOcsf {
  const CloudwatchLogTransformerParseToOcsf({
    required this.eventSource,
    required this.ocsfVersion,
    this.source,
  });

  final CloudwatchLogTransformerEventSource eventSource;

  final CloudwatchLogTransformerOcsfVersion ocsfVersion;

  final TfArg<String>? source;

  @internal
  Map<String, Object?> encode() => {
    'event_source': eventSource.toTfJson(),
    'ocsf_version': ocsfVersion.toTfJson(),
    'source': ?source?.toTfJson(),
  };
}

/// `event_source` — derived from the provider schema description.
extension type const CloudwatchLogTransformerEventSource._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchLogTransformerEventSource.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchLogTransformerEventSource.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchLogTransformerEventSource.arg(TfArg<String> arg)
    : this._(arg);

  static const cloudtrail = CloudwatchLogTransformerEventSource._(
    TfArgLiteral('CloudTrail'),
  );
  static const route53resolver = CloudwatchLogTransformerEventSource._(
    TfArgLiteral('Route53Resolver'),
  );
  static const vpcflow = CloudwatchLogTransformerEventSource._(
    TfArgLiteral('VPCFlow'),
  );
  static const eksaudit = CloudwatchLogTransformerEventSource._(
    TfArgLiteral('EKSAudit'),
  );
  static const awswaf = CloudwatchLogTransformerEventSource._(
    TfArgLiteral('AWSWAF'),
  );

  static const List<CloudwatchLogTransformerEventSource> values = [
    cloudtrail,
    route53resolver,
    vpcflow,
    eksaudit,
    awswaf,
  ];
}

/// `ocsf_version` — derived from the provider schema description.
extension type const CloudwatchLogTransformerOcsfVersion._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchLogTransformerOcsfVersion.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchLogTransformerOcsfVersion.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchLogTransformerOcsfVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v1p1 = CloudwatchLogTransformerOcsfVersion._(
    TfArgLiteral('V1.1'),
  );
  static const v1p5 = CloudwatchLogTransformerOcsfVersion._(
    TfArgLiteral('V1.5'),
  );

  static const List<CloudwatchLogTransformerOcsfVersion> values = [v1p1, v1p5];
}

/// Typed helper for the `transformer_config.parse_vpc` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerParseVpc {
  const CloudwatchLogTransformerParseVpc({this.source});

  final TfArg<String>? source;

  @internal
  Map<String, Object?> encode() => {'source': ?source?.toTfJson()};
}

/// Typed helper for the `transformer_config.parse_waf` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerParseWaf {
  const CloudwatchLogTransformerParseWaf({this.source});

  final TfArg<String>? source;

  @internal
  Map<String, Object?> encode() => {'source': ?source?.toTfJson()};
}

/// Typed helper for the `transformer_config.rename_keys` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerRenameKeys {
  const CloudwatchLogTransformerRenameKeys({this.entry});

  final List<CloudwatchLogTransformerRenameKeysEntry>? entry;

  @internal
  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.rename_keys.entry` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerRenameKeysEntry {
  const CloudwatchLogTransformerRenameKeysEntry({
    required this.key,
    this.overwriteIfExists,
    required this.renameTo,
  });

  final TfArg<String> key;

  final TfArg<bool>? overwriteIfExists;

  final TfArg<String> renameTo;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'overwrite_if_exists': ?overwriteIfExists?.toTfJson(),
    'rename_to': renameTo.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.split_string` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerSplitString {
  const CloudwatchLogTransformerSplitString({this.entry});

  final List<CloudwatchLogTransformerSplitStringEntry>? entry;

  @internal
  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.split_string.entry` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerSplitStringEntry {
  const CloudwatchLogTransformerSplitStringEntry({
    required this.delimiter,
    required this.source,
  });

  final TfArg<String> delimiter;

  final TfArg<String> source;

  @internal
  Map<String, Object?> encode() => {
    'delimiter': delimiter.toTfJson(),
    'source': source.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.substitute_string` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerSubstituteString {
  const CloudwatchLogTransformerSubstituteString({this.entry});

  final List<CloudwatchLogTransformerSubstituteStringEntry>? entry;

  @internal
  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.substitute_string.entry` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerSubstituteStringEntry {
  const CloudwatchLogTransformerSubstituteStringEntry({
    required this.from,
    required this.source,
    required this.to,
  });

  final TfArg<String> from;

  final TfArg<String> source;

  final TfArg<String> to;

  @internal
  Map<String, Object?> encode() => {
    'from': from.toTfJson(),
    'source': source.toTfJson(),
    'to': to.toTfJson(),
  };
}

/// Typed helper for the `transformer_config.trim_string` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTrimString {
  const CloudwatchLogTransformerTrimString({required this.withKeys});

  final TfArg<List<String>> withKeys;

  @internal
  Map<String, Object?> encode() => {'with_keys': withKeys.toTfJson()};
}

/// Typed helper for the `transformer_config.type_converter` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTypeConverter {
  const CloudwatchLogTransformerTypeConverter({this.entry});

  final List<CloudwatchLogTransformerTypeConverterEntry>? entry;

  @internal
  Map<String, Object?> encode() => {
    if (entry != null) 'entry': [for (final e in entry!) e.encode()],
  };
}

/// Typed helper for the `transformer_config.type_converter.entry` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerTypeConverterEntry {
  const CloudwatchLogTransformerTypeConverterEntry({
    required this.key,
    required this.type,
  });

  final TfArg<String> key;

  final CloudwatchLogTransformerType type;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const CloudwatchLogTransformerType._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchLogTransformerType.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchLogTransformerType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchLogTransformerType.arg(TfArg<String> arg) : this._(arg);

  static const boolean = CloudwatchLogTransformerType._(
    TfArgLiteral('boolean'),
  );
  static const integer = CloudwatchLogTransformerType._(
    TfArgLiteral('integer'),
  );
  static const double = CloudwatchLogTransformerType._(TfArgLiteral('double'));
  static const string = CloudwatchLogTransformerType._(TfArgLiteral('string'));

  static const List<CloudwatchLogTransformerType> values = [
    boolean,
    integer,
    double,
    string,
  ];
}

/// Typed helper for the `transformer_config.upper_case_string` block of
/// `aws_cloudwatch_log_transformer` (derived from provider schema).
@immutable
final class CloudwatchLogTransformerUpperCaseString {
  const CloudwatchLogTransformerUpperCaseString({required this.withKeys});

  final TfArg<List<String>> withKeys;

  @internal
  Map<String, Object?> encode() => {'with_keys': withKeys.toTfJson()};
}

/// Factory wrapper for `aws_cloudwatch_log_transformer`.
final class AwsCloudwatchLogTransformer extends Resource {
  static const String tfType = 'aws_cloudwatch_log_transformer';

  AwsCloudwatchLogTransformer(
    super.localName, {
    required RefTo<AwsCloudwatchLogGroup> logGroupArn,
    TfArg<String>? region,
    List<CloudwatchLogTransformerConfig>? transformerConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_group_arn': logGroupArn.encodeAs('arn'),
           'region': ?region,
           if (transformerConfig != null)
             'transformer_config': TfArg.literal([
               for (final e in transformerConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogTransformerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogTransformer>`.
  RefTo<AwsCloudwatchLogTransformer> get ref => RefTo.of(this);

  /// Reference to `log_group_arn` attribute.
  TfRef<String> get logGroupArn =>
      TfRef.attribute<String>(this, 'log_group_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
