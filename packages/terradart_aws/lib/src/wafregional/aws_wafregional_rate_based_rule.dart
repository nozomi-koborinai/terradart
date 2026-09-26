// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafregional_rate_based_rule`.
const Set<String> _awsWafregionalRateBasedRuleSensitive = <String>{};

/// Typed helper for the `predicate` block of
/// `aws_wafregional_rate_based_rule` (derived from provider schema).
@immutable
final class WafregionalRateBasedRulePredicate {
  const WafregionalRateBasedRulePredicate({
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

/// Factory wrapper for `aws_wafregional_rate_based_rule`.
final class AwsWafregionalRateBasedRule extends Resource {
  static const String tfType = 'aws_wafregional_rate_based_rule';

  AwsWafregionalRateBasedRule({
    required super.localName,
    required TfArg<String> metricName,
    required TfArg<String> name,
    required TfArg<String> rateKey,
    required TfArg<num> rateLimit,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<WafregionalRateBasedRulePredicate>? predicate,
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
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (predicate != null)
             'predicate': TfArg.literal([
               for (final e in predicate) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalRateBasedRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
