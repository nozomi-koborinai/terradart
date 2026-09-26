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

  final TfArg<List<Object?>>? contains;

  final TfArg<String> criteria;

  final TfArg<List<Object?>>? eq;

  final TfArg<String>? exists;

  final TfArg<List<Object?>>? neq;

  Map<String, Object?> encode() => {
    if (contains != null) 'contains': contains!.toTfJson(),
    'criteria': criteria.toTfJson(),
    if (eq != null) 'eq': eq!.toTfJson(),
    if (exists != null) 'exists': exists!.toTfJson(),
    if (neq != null) 'neq': neq!.toTfJson(),
  };
}

/// Factory wrapper for `aws_accessanalyzer_archive_rule`.
final class AwsAccessanalyzerArchiveRule extends Resource {
  static const String tfType = 'aws_accessanalyzer_archive_rule';

  AwsAccessanalyzerArchiveRule({
    required super.localName,
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
           if (region != null) 'region': region,
           'rule_name': ruleName,
           'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccessanalyzerArchiveRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
