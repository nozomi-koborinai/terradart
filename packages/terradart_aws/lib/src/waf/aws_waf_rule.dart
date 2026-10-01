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

  final WafRuleType type;

  @internal
  Map<String, Object?> encode() => {
    'data_id': dataId.toTfJson(),
    'negated': negated.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const WafRuleType._(TfArg<String> _) implements TfArg<String> {
  WafRuleType.variable(String name) : this._(TfArg.variable(name));
  WafRuleType.expression(String template) : this._(TfArg.expression(template));
  const WafRuleType.arg(TfArg<String> arg) : this._(arg);

  static const ipmatch = WafRuleType._(TfArgLiteral('IPMatch'));
  static const bytematch = WafRuleType._(TfArgLiteral('ByteMatch'));
  static const sqlinjectionmatch = WafRuleType._(
    TfArgLiteral('SqlInjectionMatch'),
  );
  static const geomatch = WafRuleType._(TfArgLiteral('GeoMatch'));
  static const sizeconstraint = WafRuleType._(TfArgLiteral('SizeConstraint'));
  static const xssmatch = WafRuleType._(TfArgLiteral('XssMatch'));
  static const regexmatch = WafRuleType._(TfArgLiteral('RegexMatch'));

  static const List<WafRuleType> values = [
    ipmatch,
    bytematch,
    sqlinjectionmatch,
    geomatch,
    sizeconstraint,
    xssmatch,
    regexmatch,
  ];
}

/// Factory wrapper for `aws_waf_rule`.
final class AwsWafRule extends Resource {
  static const String tfType = 'aws_waf_rule';

  AwsWafRule(
    super.localName, {
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
           'tags': ?tags,
           if (predicates != null)
             'predicates': TfArg.literal([
               for (final e in predicates) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafRule>`.
  RefTo<AwsWafRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `metric_name` attribute.
  TfRef<String> get metricName => TfRef.attribute<String>(this, 'metric_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
