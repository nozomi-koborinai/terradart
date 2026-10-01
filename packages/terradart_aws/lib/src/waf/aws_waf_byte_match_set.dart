// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_byte_match_set`.
const Set<String> _awsWafByteMatchSetSensitive = <String>{};

/// Typed helper for the `byte_match_tuples` block of
/// `aws_waf_byte_match_set` (derived from provider schema).
@immutable
final class WafByteMatchSetByteMatchTuples {
  const WafByteMatchSetByteMatchTuples({
    required this.positionalConstraint,
    this.targetString,
    required this.textTransformation,
    required this.fieldToMatch,
  });

  final TfArg<String> positionalConstraint;

  final TfArg<String>? targetString;

  final TfArg<String> textTransformation;

  final WafByteMatchSetFieldToMatch fieldToMatch;

  Map<String, Object?> encode() => {
    'positional_constraint': positionalConstraint.toTfJson(),
    'target_string': ?targetString?.toTfJson(),
    'text_transformation': textTransformation.toTfJson(),
    'field_to_match': fieldToMatch.encode(),
  };
}

/// Typed helper for the `byte_match_tuples.field_to_match` block of
/// `aws_waf_byte_match_set` (derived from provider schema).
@immutable
final class WafByteMatchSetFieldToMatch {
  const WafByteMatchSetFieldToMatch({this.data, required this.type});

  final TfArg<String>? data;

  final WafByteMatchSetType type;

  Map<String, Object?> encode() => {
    'data': ?data?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const WafByteMatchSetType._(TfArg<String> _)
    implements TfArg<String> {
  WafByteMatchSetType.variable(String name) : this._(TfArg.variable(name));
  WafByteMatchSetType.expression(String template)
    : this._(TfArg.expression(template));
  const WafByteMatchSetType.arg(TfArg<String> arg) : this._(arg);

  static const uri = WafByteMatchSetType._(TfArgLiteral('URI'));
  static const queryString = WafByteMatchSetType._(
    TfArgLiteral('QUERY_STRING'),
  );
  static const header = WafByteMatchSetType._(TfArgLiteral('HEADER'));
  static const method = WafByteMatchSetType._(TfArgLiteral('METHOD'));
  static const body = WafByteMatchSetType._(TfArgLiteral('BODY'));
  static const singleQueryArg = WafByteMatchSetType._(
    TfArgLiteral('SINGLE_QUERY_ARG'),
  );
  static const allQueryArgs = WafByteMatchSetType._(
    TfArgLiteral('ALL_QUERY_ARGS'),
  );

  static const List<WafByteMatchSetType> values = [
    uri,
    queryString,
    header,
    method,
    body,
    singleQueryArg,
    allQueryArgs,
  ];
}

/// Factory wrapper for `aws_waf_byte_match_set`.
final class AwsWafByteMatchSet extends Resource {
  static const String tfType = 'aws_waf_byte_match_set';

  AwsWafByteMatchSet(
    super.localName, {
    required TfArg<String> name,
    List<WafByteMatchSetByteMatchTuples>? byteMatchTuples,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (byteMatchTuples != null)
             'byte_match_tuples': TfArg.literal([
               for (final e in byteMatchTuples) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafByteMatchSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafByteMatchSet>`.
  RefTo<AwsWafByteMatchSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
