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

  final WafregionalXssMatchSetTextTransformation textTransformation;

  final WafregionalXssMatchSetFieldToMatch fieldToMatch;

  @internal
  Map<String, Object?> encode() => {
    'text_transformation': textTransformation.toTfJson(),
    'field_to_match': fieldToMatch.encode(),
  };
}

/// `text_transformation` — derived from the provider schema description.
extension type const WafregionalXssMatchSetTextTransformation._(TfArg<String> _)
    implements TfArg<String> {
  WafregionalXssMatchSetTextTransformation.variable(String name)
    : this._(TfArg.variable(name));
  WafregionalXssMatchSetTextTransformation.expression(String template)
    : this._(TfArg.expression(template));
  const WafregionalXssMatchSetTextTransformation.arg(TfArg<String> arg)
    : this._(arg);

  static const none = WafregionalXssMatchSetTextTransformation._(
    TfArgLiteral('NONE'),
  );
  static const compressWhiteSpace = WafregionalXssMatchSetTextTransformation._(
    TfArgLiteral('COMPRESS_WHITE_SPACE'),
  );
  static const htmlEntityDecode = WafregionalXssMatchSetTextTransformation._(
    TfArgLiteral('HTML_ENTITY_DECODE'),
  );
  static const lowercase = WafregionalXssMatchSetTextTransformation._(
    TfArgLiteral('LOWERCASE'),
  );
  static const cmdLine = WafregionalXssMatchSetTextTransformation._(
    TfArgLiteral('CMD_LINE'),
  );
  static const urlDecode = WafregionalXssMatchSetTextTransformation._(
    TfArgLiteral('URL_DECODE'),
  );

  static const List<WafregionalXssMatchSetTextTransformation> values = [
    none,
    compressWhiteSpace,
    htmlEntityDecode,
    lowercase,
    cmdLine,
    urlDecode,
  ];
}

/// Typed helper for the `xss_match_tuple.field_to_match` block of
/// `aws_wafregional_xss_match_set` (derived from provider schema).
@immutable
final class WafregionalXssMatchSetFieldToMatch {
  const WafregionalXssMatchSetFieldToMatch({this.data, required this.type});

  final TfArg<String>? data;

  final WafregionalXssMatchSetType type;

  @internal
  Map<String, Object?> encode() => {
    'data': ?data?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const WafregionalXssMatchSetType._(TfArg<String> _)
    implements TfArg<String> {
  WafregionalXssMatchSetType.variable(String name)
    : this._(TfArg.variable(name));
  WafregionalXssMatchSetType.expression(String template)
    : this._(TfArg.expression(template));
  const WafregionalXssMatchSetType.arg(TfArg<String> arg) : this._(arg);

  static const uri = WafregionalXssMatchSetType._(TfArgLiteral('URI'));
  static const queryString = WafregionalXssMatchSetType._(
    TfArgLiteral('QUERY_STRING'),
  );
  static const header = WafregionalXssMatchSetType._(TfArgLiteral('HEADER'));
  static const method = WafregionalXssMatchSetType._(TfArgLiteral('METHOD'));
  static const body = WafregionalXssMatchSetType._(TfArgLiteral('BODY'));
  static const singleQueryArg = WafregionalXssMatchSetType._(
    TfArgLiteral('SINGLE_QUERY_ARG'),
  );
  static const allQueryArgs = WafregionalXssMatchSetType._(
    TfArgLiteral('ALL_QUERY_ARGS'),
  );

  static const List<WafregionalXssMatchSetType> values = [
    uri,
    queryString,
    header,
    method,
    body,
    singleQueryArg,
    allQueryArgs,
  ];
}

/// Factory wrapper for `aws_wafregional_xss_match_set`.
final class AwsWafregionalXssMatchSet extends Resource {
  static const String tfType = 'aws_wafregional_xss_match_set';

  AwsWafregionalXssMatchSet(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
