// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafregional_sql_injection_match_set`.
const Set<String> _awsWafregionalSqlInjectionMatchSetSensitive = <String>{};

/// Typed helper for the `sql_injection_match_tuple` block of
/// `aws_wafregional_sql_injection_match_set` (derived from provider schema).
@immutable
final class WafregionalSqlInjectionMatchSetSqlInjectionMatchTuple {
  const WafregionalSqlInjectionMatchSetSqlInjectionMatchTuple({
    required this.textTransformation,
    required this.fieldToMatch,
  });

  final TfArg<String> textTransformation;

  final WafregionalSqlInjectionMatchSetFieldToMatch fieldToMatch;

  @internal
  Map<String, Object?> encode() => {
    'text_transformation': textTransformation.toTfJson(),
    'field_to_match': fieldToMatch.encode(),
  };
}

/// Typed helper for the `sql_injection_match_tuple.field_to_match` block of
/// `aws_wafregional_sql_injection_match_set` (derived from provider schema).
@immutable
final class WafregionalSqlInjectionMatchSetFieldToMatch {
  const WafregionalSqlInjectionMatchSetFieldToMatch({
    this.data,
    required this.type,
  });

  final TfArg<String>? data;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'data': ?data?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_wafregional_sql_injection_match_set`.
final class AwsWafregionalSqlInjectionMatchSet extends Resource {
  static const String tfType = 'aws_wafregional_sql_injection_match_set';

  AwsWafregionalSqlInjectionMatchSet(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    List<WafregionalSqlInjectionMatchSetSqlInjectionMatchTuple>?
    sqlInjectionMatchTuple,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           if (sqlInjectionMatchTuple != null)
             'sql_injection_match_tuple': TfArg.literal([
               for (final e in sqlInjectionMatchTuple) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWafregionalSqlInjectionMatchSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafregionalSqlInjectionMatchSet>`.
  RefTo<AwsWafregionalSqlInjectionMatchSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
