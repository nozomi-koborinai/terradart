// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_sql_injection_match_set`.
const Set<String> _awsWafSqlInjectionMatchSetSensitive = <String>{};

/// Typed helper for the `sql_injection_match_tuples` block of
/// `aws_waf_sql_injection_match_set` (derived from provider schema).
@immutable
final class WafSqlInjectionMatchSetSqlInjectionMatchTuples {
  const WafSqlInjectionMatchSetSqlInjectionMatchTuples({
    required this.textTransformation,
    required this.fieldToMatch,
  });

  final TfArg<String> textTransformation;

  final WafSqlInjectionMatchSetSqlInjectionMatchTuplesFieldToMatch fieldToMatch;

  Map<String, Object?> encode() => {
    'text_transformation': textTransformation.toTfJson(),
    'field_to_match': fieldToMatch.encode(),
  };
}

/// Typed helper for the `sql_injection_match_tuples.field_to_match` block of
/// `aws_waf_sql_injection_match_set` (derived from provider schema).
@immutable
final class WafSqlInjectionMatchSetSqlInjectionMatchTuplesFieldToMatch {
  const WafSqlInjectionMatchSetSqlInjectionMatchTuplesFieldToMatch({
    this.data,
    required this.type,
  });

  final TfArg<String>? data;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (data != null) 'data': data!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_waf_sql_injection_match_set`.
final class AwsWafSqlInjectionMatchSet extends Resource {
  static const String tfType = 'aws_waf_sql_injection_match_set';

  AwsWafSqlInjectionMatchSet({
    required super.localName,
    required TfArg<String> name,
    List<WafSqlInjectionMatchSetSqlInjectionMatchTuples>?
    sqlInjectionMatchTuples,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (sqlInjectionMatchTuples != null)
             'sql_injection_match_tuples': TfArg.literal([
               for (final e in sqlInjectionMatchTuples) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafSqlInjectionMatchSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
