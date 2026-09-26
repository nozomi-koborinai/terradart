// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_rate_based_rule`.
const Set<String> _awsWafRateBasedRuleSensitive = <String>{};

/// Typed helper for the `predicates` block of
/// `aws_waf_rate_based_rule` (derived from provider schema).
@immutable
final class WafRateBasedRulePredicates {
  const WafRateBasedRulePredicates({
    required this.dataId,
    required this.negated,
    required this.type,
  });

  final TfArg<String> dataId;

  final TfArg<bool> negated;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'data_id': dataId.toTfJson(),
    'negated': negated.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_waf_rate_based_rule`.
final class AwsWafRateBasedRule extends Resource {
  static const String tfType = 'aws_waf_rate_based_rule';

  AwsWafRateBasedRule({
    required super.localName,
    required TfArg<String> metricName,
    required TfArg<String> name,
    required TfArg<String> rateKey,
    required TfArg<num> rateLimit,
    TfArg<Map<String, String>>? tags,
    List<WafRateBasedRulePredicates>? predicates,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metric_name': metricName,
           'name': name,
           'rate_key': rateKey,
           'rate_limit': rateLimit,
           if (tags != null) 'tags': tags,
           if (predicates != null)
             'predicates': TfArg.literal([
               for (final e in predicates) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafRateBasedRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
