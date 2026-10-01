// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_contributor_insights`.
const Set<String> _awsDynamodbContributorInsightsSensitive = <String>{};

/// Dynamodb Contributor Insights enum for `mode`.
enum DynamodbContributorInsightsMode implements TerraformEnum {
  accessedAndThrottledKeys('ACCESSED_AND_THROTTLED_KEYS'),
  throttledKeys('THROTTLED_KEYS');

  const DynamodbContributorInsightsMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_dynamodb_contributor_insights`.
final class AwsDynamodbContributorInsights extends Resource {
  static const String tfType = 'aws_dynamodb_contributor_insights';

  AwsDynamodbContributorInsights(
    super.localName, {
    TfArg<String>? indexName,
    TfArg<DynamodbContributorInsightsMode>? mode,
    TfArg<String>? region,
    required TfArg<String> tableName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'index_name': ?indexName,
           'mode': ?mode,
           'region': ?region,
           'table_name': tableName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbContributorInsightsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDynamodbContributorInsights>`.
  RefTo<AwsDynamodbContributorInsights> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `index_name` attribute.
  TfRef<String> get indexName => TfRef.attribute<String>(this, 'index_name');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');
}
