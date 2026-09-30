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

  final TfArg<WafRuleType> type;

  Map<String, Object?> encode() => {
    'data_id': dataId.toTfJson(),
    'negated': negated.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum WafRuleType implements TerraformEnum {
  ipmatch('IPMatch'),
  bytematch('ByteMatch'),
  sqlinjectionmatch('SqlInjectionMatch'),
  geomatch('GeoMatch'),
  sizeconstraint('SizeConstraint'),
  xssmatch('XssMatch'),
  regexmatch('RegexMatch');

  const WafRuleType(this.terraformValue);
  @override
  final String terraformValue;
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `metric_name` attribute.
  TfRef<String> get metricNameRef =>
      TfRef.attribute<String>(this, 'metric_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
