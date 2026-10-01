// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_xss_match_set`.
const Set<String> _awsWafXssMatchSetSensitive = <String>{};

/// Typed helper for the `xss_match_tuples` block of
/// `aws_waf_xss_match_set` (derived from provider schema).
@immutable
final class WafXssMatchSetXssMatchTuples {
  const WafXssMatchSetXssMatchTuples({
    required this.textTransformation,
    required this.fieldToMatch,
  });

  final TfArg<WafXssMatchSetTextTransformation> textTransformation;

  final WafXssMatchSetFieldToMatch fieldToMatch;

  Map<String, Object?> encode() => {
    'text_transformation': textTransformation.toTfJson(),
    'field_to_match': fieldToMatch.encode(),
  };
}

/// `text_transformation` — derived from the provider schema description.
enum WafXssMatchSetTextTransformation implements TerraformEnum {
  none('NONE'),
  compressWhiteSpace('COMPRESS_WHITE_SPACE'),
  htmlEntityDecode('HTML_ENTITY_DECODE'),
  lowercase('LOWERCASE'),
  cmdLine('CMD_LINE'),
  urlDecode('URL_DECODE');

  const WafXssMatchSetTextTransformation(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `xss_match_tuples.field_to_match` block of
/// `aws_waf_xss_match_set` (derived from provider schema).
@immutable
final class WafXssMatchSetFieldToMatch {
  const WafXssMatchSetFieldToMatch({this.data, required this.type});

  final TfArg<String>? data;

  final TfArg<WafXssMatchSetType> type;

  Map<String, Object?> encode() => {
    'data': ?data?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum WafXssMatchSetType implements TerraformEnum {
  uri('URI'),
  queryString('QUERY_STRING'),
  header('HEADER'),
  method('METHOD'),
  body('BODY'),
  singleQueryArg('SINGLE_QUERY_ARG'),
  allQueryArgs('ALL_QUERY_ARGS');

  const WafXssMatchSetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_waf_xss_match_set`.
final class AwsWafXssMatchSet extends Resource {
  static const String tfType = 'aws_waf_xss_match_set';

  AwsWafXssMatchSet({
    required super.localName,
    required TfArg<String> name,
    List<WafXssMatchSetXssMatchTuples>? xssMatchTuples,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (xssMatchTuples != null)
             'xss_match_tuples': TfArg.literal([
               for (final e in xssMatchTuples) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafXssMatchSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafXssMatchSet>`.
  RefTo<AwsWafXssMatchSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
