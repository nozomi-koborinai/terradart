// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_xray_indexing_rule`.
const Set<String> _awsXrayIndexingRuleSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_xray_indexing_rule` (derived from provider schema).
@immutable
final class XrayIndexingRule {
  const XrayIndexingRule({this.probabilistic});

  final List<XrayIndexingRuleProbabilistic>? probabilistic;

  Map<String, Object?> encode() => {
    if (probabilistic != null)
      'probabilistic': [for (final e in probabilistic!) e.encode()],
  };
}

/// Typed helper for the `rule.probabilistic` block of
/// `aws_xray_indexing_rule` (derived from provider schema).
@immutable
final class XrayIndexingRuleProbabilistic {
  const XrayIndexingRuleProbabilistic({
    required this.desiredSamplingPercentage,
  });

  final TfArg<num> desiredSamplingPercentage;

  Map<String, Object?> encode() => {
    'desired_sampling_percentage': desiredSamplingPercentage.toTfJson(),
  };
}

/// Factory wrapper for `aws_xray_indexing_rule`.
final class AwsXrayIndexingRule extends Resource {
  static const String tfType = 'aws_xray_indexing_rule';

  AwsXrayIndexingRule({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    List<XrayIndexingRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsXrayIndexingRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsXrayIndexingRule>`.
  RefTo<AwsXrayIndexingRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
