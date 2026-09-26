// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_accessanalyzer_analyzer`.
const Set<String> _awsAccessanalyzerAnalyzerSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfiguration {
  const AccessanalyzerAnalyzerConfiguration({
    this.internalAccess,
    this.unusedAccess,
  });

  final AccessanalyzerAnalyzerConfigurationInternalAccess? internalAccess;

  final AccessanalyzerAnalyzerConfigurationUnusedAccess? unusedAccess;

  Map<String, Object?> encode() => {
    if (internalAccess != null) 'internal_access': internalAccess!.encode(),
    if (unusedAccess != null) 'unused_access': unusedAccess!.encode(),
  };
}

/// Typed helper for the `configuration.internal_access` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfigurationInternalAccess {
  const AccessanalyzerAnalyzerConfigurationInternalAccess({this.analysisRule});

  final AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRule?
  analysisRule;

  Map<String, Object?> encode() => {
    if (analysisRule != null) 'analysis_rule': analysisRule!.encode(),
  };
}

/// Typed helper for the `configuration.internal_access.analysis_rule` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRule {
  const AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRule({
    this.inclusion,
  });

  final List<
    AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRuleInclusion
  >?
  inclusion;

  Map<String, Object?> encode() => {
    if (inclusion != null)
      'inclusion': [for (final e in inclusion!) e.encode()],
  };
}

/// Typed helper for the `configuration.internal_access.analysis_rule.inclusion` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRuleInclusion {
  const AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRuleInclusion({
    this.accountIds,
    this.resourceArns,
    this.resourceTypes,
  });

  final TfArg<List<Object?>>? accountIds;

  final TfArg<List<Object?>>? resourceArns;

  final TfArg<List<Object?>>? resourceTypes;

  Map<String, Object?> encode() => {
    if (accountIds != null) 'account_ids': accountIds!.toTfJson(),
    if (resourceArns != null) 'resource_arns': resourceArns!.toTfJson(),
    if (resourceTypes != null) 'resource_types': resourceTypes!.toTfJson(),
  };
}

/// Typed helper for the `configuration.unused_access` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfigurationUnusedAccess {
  const AccessanalyzerAnalyzerConfigurationUnusedAccess({
    this.unusedAccessAge,
    this.analysisRule,
  });

  final TfArg<num>? unusedAccessAge;

  final AccessanalyzerAnalyzerConfigurationUnusedAccessAnalysisRule?
  analysisRule;

  Map<String, Object?> encode() => {
    if (unusedAccessAge != null)
      'unused_access_age': unusedAccessAge!.toTfJson(),
    if (analysisRule != null) 'analysis_rule': analysisRule!.encode(),
  };
}

/// Typed helper for the `configuration.unused_access.analysis_rule` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfigurationUnusedAccessAnalysisRule {
  const AccessanalyzerAnalyzerConfigurationUnusedAccessAnalysisRule({
    this.exclusion,
  });

  final List<
    AccessanalyzerAnalyzerConfigurationUnusedAccessAnalysisRuleExclusion
  >?
  exclusion;

  Map<String, Object?> encode() => {
    if (exclusion != null)
      'exclusion': [for (final e in exclusion!) e.encode()],
  };
}

/// Typed helper for the `configuration.unused_access.analysis_rule.exclusion` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfigurationUnusedAccessAnalysisRuleExclusion {
  const AccessanalyzerAnalyzerConfigurationUnusedAccessAnalysisRuleExclusion({
    this.accountIds,
    this.resourceTags,
  });

  final TfArg<List<Object?>>? accountIds;

  final TfArg<List<Object?>>? resourceTags;

  Map<String, Object?> encode() => {
    if (accountIds != null) 'account_ids': accountIds!.toTfJson(),
    if (resourceTags != null) 'resource_tags': resourceTags!.toTfJson(),
  };
}

/// Factory wrapper for `aws_accessanalyzer_analyzer`.
final class AwsAccessanalyzerAnalyzer extends Resource {
  static const String tfType = 'aws_accessanalyzer_analyzer';

  AwsAccessanalyzerAnalyzer({
    required super.localName,
    required TfArg<String> analyzerName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    AccessanalyzerAnalyzerConfiguration? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'analyzer_name': analyzerName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
           if (configuration != null)
             'configuration': TfArg.literal(configuration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccessanalyzerAnalyzerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
