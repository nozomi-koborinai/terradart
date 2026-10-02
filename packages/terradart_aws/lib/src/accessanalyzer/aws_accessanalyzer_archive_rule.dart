// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_accessanalyzer_archive_rule`.
const Set<String> _awsAccessanalyzerArchiveRuleSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_accessanalyzer_archive_rule` (derived from provider schema).
@immutable
final class AccessanalyzerArchiveRuleFilter {
  const AccessanalyzerArchiveRuleFilter({
    this.contains,
    required this.criteria,
    this.eq,
    this.exists,
    this.neq,
  });

  final TfArg<List<String>>? contains;

  final TfArg<String> criteria;

  final TfArg<List<String>>? eq;

  final TfArg<String>? exists;

  final TfArg<List<String>>? neq;

  @internal
  Map<String, Object?> encode() => {
    'contains': ?contains?.toTfJson(),
    'criteria': criteria.toTfJson(),
    'eq': ?eq?.toTfJson(),
    'exists': ?exists?.toTfJson(),
    'neq': ?neq?.toTfJson(),
  };
}

/// Factory wrapper for `aws_accessanalyzer_archive_rule`.
final class AwsAccessanalyzerArchiveRule extends Resource {
  static const String tfType = 'aws_accessanalyzer_archive_rule';

  AwsAccessanalyzerArchiveRule(
    super.localName, {
    required TfArg<String> analyzerName,
    TfArg<String>? region,
    required TfArg<String> ruleName,
    required List<AccessanalyzerArchiveRuleFilter> filter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'analyzer_name': analyzerName,
           'region': ?region,
           'rule_name': ruleName,
           'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccessanalyzerArchiveRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAccessanalyzerArchiveRule>`.
  RefTo<AwsAccessanalyzerArchiveRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `analyzer_name` attribute.
  TfRef<String> get analyzerName =>
      TfRef.attribute<String>(this, 'analyzer_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleName => TfRef.attribute<String>(this, 'rule_name');
}
