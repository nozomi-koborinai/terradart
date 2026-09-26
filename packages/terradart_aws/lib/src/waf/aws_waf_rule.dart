// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_rule`.
const Set<String> _awsWafRuleSensitive = <String>{};

/// Typed helper for the `predicates` block of
/// `aws_waf_rule` (derived from provider schema).
@immutable
final class WafRulePredicates {
  const WafRulePredicates({
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

/// Factory wrapper for `aws_waf_rule`.
final class AwsWafRule extends Resource {
  static const String tfType = 'aws_waf_rule';

  AwsWafRule({
    required super.localName,
    required TfArg<String> metricName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    List<WafRulePredicates>? predicates,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metric_name': metricName,
           'name': name,
           if (tags != null) 'tags': tags,
           if (predicates != null)
             'predicates': TfArg.literal([
               for (final e in predicates) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
