// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafregional_rule`.
const Set<String> _awsWafregionalRuleSensitive = <String>{};

/// Typed helper for the `predicate` block of
/// `aws_wafregional_rule` (derived from provider schema).
@immutable
final class WafregionalRulePredicate {
  const WafregionalRulePredicate({
    required this.dataId,
    required this.negated,
    required this.type,
  });

  final TfArg<String> dataId;

  final TfArg<bool> negated;

  final TfArg<WafregionalRuleType> type;

  Map<String, Object?> encode() => {
    'data_id': dataId.toTfJson(),
    'negated': negated.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum WafregionalRuleType implements TerraformEnum {
  ipmatch('IPMatch'),
  bytematch('ByteMatch'),
  sqlinjectionmatch('SqlInjectionMatch'),
  geomatch('GeoMatch'),
  sizeconstraint('SizeConstraint'),
  xssmatch('XssMatch'),
  regexmatch('RegexMatch');

  const WafregionalRuleType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_wafregional_rule`.
final class AwsWafregionalRule extends Resource {
  static const String tfType = 'aws_wafregional_rule';

  AwsWafregionalRule({
    required super.localName,
    required TfArg<String> metricName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<WafregionalRulePredicate>? predicate,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metric_name': metricName,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (predicate != null)
             'predicate': TfArg.literal([
               for (final e in predicate) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafregionalRule>`.
  RefTo<AwsWafregionalRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `metric_name` attribute.
  TfRef<String> get metricName => TfRef.attribute<String>(this, 'metric_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
