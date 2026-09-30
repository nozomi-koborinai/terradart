// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafregional_xss_match_set`.
const Set<String> _awsWafregionalXssMatchSetSensitive = <String>{};

/// Typed helper for the `xss_match_tuple` block of
/// `aws_wafregional_xss_match_set` (derived from provider schema).
@immutable
final class WafregionalXssMatchSetXssMatchTuple {
  const WafregionalXssMatchSetXssMatchTuple({
    required this.textTransformation,
    required this.fieldToMatch,
  });

  final TfArg<WafregionalXssMatchSetXssMatchTupleTextTransformation>
  textTransformation;

  final WafregionalXssMatchSetXssMatchTupleFieldToMatch fieldToMatch;

  Map<String, Object?> encode() => {
    'text_transformation': textTransformation.toTfJson(),
    'field_to_match': fieldToMatch.encode(),
  };
}

/// `text_transformation` — derived from the provider schema description.
enum WafregionalXssMatchSetXssMatchTupleTextTransformation
    implements TerraformEnum {
  none('NONE'),
  compressWhiteSpace('COMPRESS_WHITE_SPACE'),
  htmlEntityDecode('HTML_ENTITY_DECODE'),
  lowercase('LOWERCASE'),
  cmdLine('CMD_LINE'),
  urlDecode('URL_DECODE');

  const WafregionalXssMatchSetXssMatchTupleTextTransformation(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `xss_match_tuple.field_to_match` block of
/// `aws_wafregional_xss_match_set` (derived from provider schema).
@immutable
final class WafregionalXssMatchSetXssMatchTupleFieldToMatch {
  const WafregionalXssMatchSetXssMatchTupleFieldToMatch({
    this.data,
    required this.type,
  });

  final TfArg<String>? data;

  final TfArg<WafregionalXssMatchSetXssMatchTupleFieldToMatchType> type;

  Map<String, Object?> encode() => {
    'data': ?data?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum WafregionalXssMatchSetXssMatchTupleFieldToMatchType
    implements TerraformEnum {
  uri('URI'),
  queryString('QUERY_STRING'),
  header('HEADER'),
  method('METHOD'),
  body('BODY'),
  singleQueryArg('SINGLE_QUERY_ARG'),
  allQueryArgs('ALL_QUERY_ARGS');

  const WafregionalXssMatchSetXssMatchTupleFieldToMatchType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_wafregional_xss_match_set`.
final class AwsWafregionalXssMatchSet extends Resource {
  static const String tfType = 'aws_wafregional_xss_match_set';

  AwsWafregionalXssMatchSet({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    List<WafregionalXssMatchSetXssMatchTuple>? xssMatchTuple,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           if (xssMatchTuple != null)
             'xss_match_tuple': TfArg.literal([
               for (final e in xssMatchTuple) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalXssMatchSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafregionalXssMatchSet>`.
  RefTo<AwsWafregionalXssMatchSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
