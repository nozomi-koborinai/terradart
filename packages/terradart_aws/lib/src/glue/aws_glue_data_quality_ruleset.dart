// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_data_quality_ruleset`.
const Set<String> _awsGlueDataQualityRulesetSensitive = <String>{};

/// Typed helper for the `target_table` block of
/// `aws_glue_data_quality_ruleset` (derived from provider schema).
@immutable
final class GlueDataQualityRulesetTargetTable {
  const GlueDataQualityRulesetTargetTable({
    this.catalogId,
    required this.databaseName,
    required this.tableName,
  });

  final TfArg<String>? catalogId;

  final TfArg<String> databaseName;

  final TfArg<String> tableName;

  Map<String, Object?> encode() => {
    if (catalogId != null) 'catalog_id': catalogId!.toTfJson(),
    'database_name': databaseName.toTfJson(),
    'table_name': tableName.toTfJson(),
  };
}

/// Factory wrapper for `aws_glue_data_quality_ruleset`.
final class AwsGlueDataQualityRuleset extends Resource {
  static const String tfType = 'aws_glue_data_quality_ruleset';

  AwsGlueDataQualityRuleset({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> ruleset,
    TfArg<Map<String, String>>? tags,
    GlueDataQualityRulesetTargetTable? targetTable,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           'ruleset': ruleset,
           if (tags != null) 'tags': tags,
           if (targetTable != null)
             'target_table': TfArg.literal(targetTable.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueDataQualityRulesetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `last_modified_on` attribute.
  TfRef<String> get lastModifiedOn =>
      TfRef.attribute<String>(this, 'last_modified_on');

  /// Reference to `recommendation_run_id` attribute.
  TfRef<String> get recommendationRunId =>
      TfRef.attribute<String>(this, 'recommendation_run_id');
}
