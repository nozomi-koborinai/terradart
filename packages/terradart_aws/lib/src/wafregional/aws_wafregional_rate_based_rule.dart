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

  final WafregionalRateBasedRuleType type;

  Map<String, Object?> encode() => {
    'data_id': dataId.toTfJson(),
    'negated': negated.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const WafregionalRateBasedRuleType._(TfArg<String> _)
    implements TfArg<String> {
  WafregionalRateBasedRuleType.variable(String name)
    : this._(TfArg.variable(name));
  WafregionalRateBasedRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const WafregionalRateBasedRuleType.arg(TfArg<String> arg) : this._(arg);

  static const ipmatch = WafregionalRateBasedRuleType._(
    TfArgLiteral('IPMatch'),
  );
  static const bytematch = WafregionalRateBasedRuleType._(
    TfArgLiteral('ByteMatch'),
  );
  static const sqlinjectionmatch = WafregionalRateBasedRuleType._(
    TfArgLiteral('SqlInjectionMatch'),
  );
  static const geomatch = WafregionalRateBasedRuleType._(
    TfArgLiteral('GeoMatch'),
  );
  static const sizeconstraint = WafregionalRateBasedRuleType._(
    TfArgLiteral('SizeConstraint'),
  );
  static const xssmatch = WafregionalRateBasedRuleType._(
    TfArgLiteral('XssMatch'),
  );
  static const regexmatch = WafregionalRateBasedRuleType._(
    TfArgLiteral('RegexMatch'),
  );

  static const List<WafregionalRateBasedRuleType> values = [
    ipmatch,
    bytematch,
    sqlinjectionmatch,
    geomatch,
    sizeconstraint,
    xssmatch,
    regexmatch,
  ];
}

/// Factory wrapper for `aws_wafregional_rate_based_rule`.
final class AwsWafregionalRateBasedRule extends Resource {
  static const String tfType = 'aws_wafregional_rate_based_rule';

  AwsWafregionalRateBasedRule(
    super.localName, {
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
           'region': ?region,
           'tags': ?tags,
           if (predicate != null)
             'predicate': TfArg.literal([
               for (final e in predicate) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalRateBasedRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafregionalRateBasedRule>`.
  RefTo<AwsWafregionalRateBasedRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `metric_name` attribute.
  TfRef<String> get metricName => TfRef.attribute<String>(this, 'metric_name');

  /// Reference to `rate_key` attribute.
  TfRef<String> get rateKey => TfRef.attribute<String>(this, 'rate_key');

  /// Reference to `rate_limit` attribute.
  TfRef<num> get rateLimit => TfRef.attribute<num>(this, 'rate_limit');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
