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

  final WafXssMatchSetTextTransformation textTransformation;

  final WafXssMatchSetFieldToMatch fieldToMatch;

  @internal
  Map<String, Object?> encode() => {
    'text_transformation': textTransformation.toTfJson(),
    'field_to_match': fieldToMatch.encode(),
  };
}

/// `text_transformation` — derived from the provider schema description.
extension type const WafXssMatchSetTextTransformation._(TfArg<String> _)
    implements TfArg<String> {
  WafXssMatchSetTextTransformation.variable(String name)
    : this._(TfArg.variable(name));
  WafXssMatchSetTextTransformation.expression(String template)
    : this._(TfArg.expression(template));
  const WafXssMatchSetTextTransformation.arg(TfArg<String> arg) : this._(arg);

  static const none = WafXssMatchSetTextTransformation._(TfArgLiteral('NONE'));
  static const compressWhiteSpace = WafXssMatchSetTextTransformation._(
    TfArgLiteral('COMPRESS_WHITE_SPACE'),
  );
  static const htmlEntityDecode = WafXssMatchSetTextTransformation._(
    TfArgLiteral('HTML_ENTITY_DECODE'),
  );
  static const lowercase = WafXssMatchSetTextTransformation._(
    TfArgLiteral('LOWERCASE'),
  );
  static const cmdLine = WafXssMatchSetTextTransformation._(
    TfArgLiteral('CMD_LINE'),
  );
  static const urlDecode = WafXssMatchSetTextTransformation._(
    TfArgLiteral('URL_DECODE'),
  );

  static const List<WafXssMatchSetTextTransformation> values = [
    none,
    compressWhiteSpace,
    htmlEntityDecode,
    lowercase,
    cmdLine,
    urlDecode,
  ];
}

/// Typed helper for the `xss_match_tuples.field_to_match` block of
/// `aws_waf_xss_match_set` (derived from provider schema).
@immutable
final class WafXssMatchSetFieldToMatch {
  const WafXssMatchSetFieldToMatch({this.data, required this.type});

  final TfArg<String>? data;

  final WafXssMatchSetType type;

  @internal
  Map<String, Object?> encode() => {
    'data': ?data?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const WafXssMatchSetType._(TfArg<String> _)
    implements TfArg<String> {
  WafXssMatchSetType.variable(String name) : this._(TfArg.variable(name));
  WafXssMatchSetType.expression(String template)
    : this._(TfArg.expression(template));
  const WafXssMatchSetType.arg(TfArg<String> arg) : this._(arg);

  static const uri = WafXssMatchSetType._(TfArgLiteral('URI'));
  static const queryString = WafXssMatchSetType._(TfArgLiteral('QUERY_STRING'));
  static const header = WafXssMatchSetType._(TfArgLiteral('HEADER'));
  static const method = WafXssMatchSetType._(TfArgLiteral('METHOD'));
  static const body = WafXssMatchSetType._(TfArgLiteral('BODY'));
  static const singleQueryArg = WafXssMatchSetType._(
    TfArgLiteral('SINGLE_QUERY_ARG'),
  );
  static const allQueryArgs = WafXssMatchSetType._(
    TfArgLiteral('ALL_QUERY_ARGS'),
  );

  static const List<WafXssMatchSetType> values = [
    uri,
    queryString,
    header,
    method,
    body,
    singleQueryArg,
    allQueryArgs,
  ];
}

/// Factory wrapper for `aws_waf_xss_match_set`.
final class AwsWafXssMatchSet extends Resource {
  static const String tfType = 'aws_waf_xss_match_set';

  AwsWafXssMatchSet(
    super.localName, {
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
