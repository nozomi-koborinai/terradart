// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_loss_prevention_discovery_config`.
const Set<String> _googleDataLossPreventionDiscoveryConfigSensitive =
    <String>{};

/// Data Loss Prevention Discovery Config enum for `status`.
enum DataLossPreventionDiscoveryConfigStatus implements TerraformEnum {
  running('RUNNING'),
  paused('PAUSED');

  const DataLossPreventionDiscoveryConfigStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `actions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActions {
  const DataLossPreventionDiscoveryConfigActions({
    this.exportData,
    this.pubSubNotification,
    this.publishToChronicle,
    this.publishToDataplexCatalog,
    this.publishToScc,
    this.tagResources,
  });

  final DataLossPreventionDiscoveryConfigActionsExportData? exportData;

  final DataLossPreventionDiscoveryConfigActionsPubSubNotification?
  pubSubNotification;

  final DataLossPreventionDiscoveryConfigActionsPublishToChronicle?
  publishToChronicle;

  final DataLossPreventionDiscoveryConfigActionsPublishToDataplexCatalog?
  publishToDataplexCatalog;

  final DataLossPreventionDiscoveryConfigActionsPublishToScc? publishToScc;

  final DataLossPreventionDiscoveryConfigActionsTagResources? tagResources;

  Map<String, Object?> encode() => {
    if (exportData != null) 'export_data': exportData!.encode(),
    if (pubSubNotification != null)
      'pub_sub_notification': pubSubNotification!.encode(),
    if (publishToChronicle != null)
      'publish_to_chronicle': publishToChronicle!.encode(),
    if (publishToDataplexCatalog != null)
      'publish_to_dataplex_catalog': publishToDataplexCatalog!.encode(),
    if (publishToScc != null) 'publish_to_scc': publishToScc!.encode(),
    if (tagResources != null) 'tag_resources': tagResources!.encode(),
  };
}

/// Typed helper for the `actions.export_data` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsExportData {
  const DataLossPreventionDiscoveryConfigActionsExportData({
    this.profileTable,
    this.sampleFindingsTable,
  });

  final DataLossPreventionDiscoveryConfigActionsExportDataProfileTable?
  profileTable;

  final DataLossPreventionDiscoveryConfigActionsExportDataSampleFindingsTable?
  sampleFindingsTable;

  Map<String, Object?> encode() => {
    if (profileTable != null) 'profile_table': profileTable!.encode(),
    if (sampleFindingsTable != null)
      'sample_findings_table': sampleFindingsTable!.encode(),
  };
}

/// Typed helper for the `actions.export_data.profile_table` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsExportDataProfileTable {
  const DataLossPreventionDiscoveryConfigActionsExportDataProfileTable({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  final TfArg<String>? datasetId;

  final TfArg<String>? projectId;

  final TfArg<String>? tableId;

  Map<String, Object?> encode() => {
    if (datasetId != null) 'dataset_id': datasetId!.toTfJson(),
    if (projectId != null) 'project_id': projectId!.toTfJson(),
    if (tableId != null) 'table_id': tableId!.toTfJson(),
  };
}

/// Typed helper for the `actions.export_data.sample_findings_table` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsExportDataSampleFindingsTable {
  const DataLossPreventionDiscoveryConfigActionsExportDataSampleFindingsTable({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  final TfArg<String>? datasetId;

  final TfArg<String>? projectId;

  final TfArg<String>? tableId;

  Map<String, Object?> encode() => {
    if (datasetId != null) 'dataset_id': datasetId!.toTfJson(),
    if (projectId != null) 'project_id': projectId!.toTfJson(),
    if (tableId != null) 'table_id': tableId!.toTfJson(),
  };
}

/// Typed helper for the `actions.pub_sub_notification` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsPubSubNotification {
  const DataLossPreventionDiscoveryConfigActionsPubSubNotification({
    this.detailOfMessage,
    this.event,
    this.topic,
    this.pubsubCondition,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigActionsPubSubNotificationDetailOfMessage
  >?
  detailOfMessage;

  final TfArg<DataLossPreventionDiscoveryConfigActionsPubSubNotificationEvent>?
  event;

  final TfArg<String>? topic;

  final DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubCondition?
  pubsubCondition;

  Map<String, Object?> encode() => {
    if (detailOfMessage != null)
      'detail_of_message': detailOfMessage!.toTfJson(),
    if (event != null) 'event': event!.toTfJson(),
    if (topic != null) 'topic': topic!.toTfJson(),
    if (pubsubCondition != null) 'pubsub_condition': pubsubCondition!.encode(),
  };
}

/// `detail_of_message` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigActionsPubSubNotificationDetailOfMessage
    implements TerraformEnum {
  tableProfile('TABLE_PROFILE'),
  resourceName('RESOURCE_NAME');

  const DataLossPreventionDiscoveryConfigActionsPubSubNotificationDetailOfMessage(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `event` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigActionsPubSubNotificationEvent
    implements TerraformEnum {
  newProfile('NEW_PROFILE'),
  changedProfile('CHANGED_PROFILE'),
  scoreIncreased('SCORE_INCREASED'),
  errorChanged('ERROR_CHANGED');

  const DataLossPreventionDiscoveryConfigActionsPubSubNotificationEvent(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.pub_sub_notification.pubsub_condition` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubCondition {
  const DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubCondition({
    this.expressions,
  });

  final DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressions?
  expressions;

  Map<String, Object?> encode() => {
    if (expressions != null) 'expressions': expressions!.encode(),
  };
}

/// Typed helper for the `actions.pub_sub_notification.pubsub_condition.expressions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressions {
  const DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressions({
    this.logicalOperator,
    this.conditions,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressionsLogicalOperator
  >?
  logicalOperator;

  final List<
    DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressionsConditions
  >?
  conditions;

  Map<String, Object?> encode() => {
    if (logicalOperator != null)
      'logical_operator': logicalOperator!.toTfJson(),
    if (conditions != null)
      'conditions': [for (final e in conditions!) e.encode()],
  };
}

/// `logical_operator` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressionsLogicalOperator
    implements TerraformEnum {
  or('OR'),
  and('AND');

  const DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressionsLogicalOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.pub_sub_notification.pubsub_condition.expressions.conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressionsConditions {
  const DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressionsConditions({
    this.minimumRiskScore,
    this.minimumSensitivityScore,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressionsConditionsMinimumRiskScore
  >?
  minimumRiskScore;

  final TfArg<
    DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressionsConditionsMinimumSensitivityScore
  >?
  minimumSensitivityScore;

  Map<String, Object?> encode() => {
    if (minimumRiskScore != null)
      'minimum_risk_score': minimumRiskScore!.toTfJson(),
    if (minimumSensitivityScore != null)
      'minimum_sensitivity_score': minimumSensitivityScore!.toTfJson(),
  };
}

/// `minimum_risk_score` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressionsConditionsMinimumRiskScore
    implements TerraformEnum {
  high('HIGH'),
  mediumOrHigh('MEDIUM_OR_HIGH');

  const DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressionsConditionsMinimumRiskScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `minimum_sensitivity_score` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressionsConditionsMinimumSensitivityScore
    implements TerraformEnum {
  high('HIGH'),
  mediumOrHigh('MEDIUM_OR_HIGH');

  const DataLossPreventionDiscoveryConfigActionsPubSubNotificationPubsubConditionExpressionsConditionsMinimumSensitivityScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.publish_to_chronicle` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsPublishToChronicle {
  const DataLossPreventionDiscoveryConfigActionsPublishToChronicle();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `actions.publish_to_dataplex_catalog` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsPublishToDataplexCatalog {
  const DataLossPreventionDiscoveryConfigActionsPublishToDataplexCatalog();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `actions.publish_to_scc` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsPublishToScc {
  const DataLossPreventionDiscoveryConfigActionsPublishToScc();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `actions.tag_resources` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsTagResources {
  const DataLossPreventionDiscoveryConfigActionsTagResources({
    this.lowerDataRiskToLow,
    this.profileGenerationsToTag,
    this.tagConditions,
  });

  final TfArg<bool>? lowerDataRiskToLow;

  final List<
    TfArg<
      DataLossPreventionDiscoveryConfigActionsTagResourcesProfileGenerationsToTag
    >
  >?
  profileGenerationsToTag;

  final List<DataLossPreventionDiscoveryConfigActionsTagResourcesTagConditions>?
  tagConditions;

  Map<String, Object?> encode() => {
    if (lowerDataRiskToLow != null)
      'lower_data_risk_to_low': lowerDataRiskToLow!.toTfJson(),
    if (profileGenerationsToTag != null)
      'profile_generations_to_tag': [
        for (final e in profileGenerationsToTag!) e.toTfJson(),
      ],
    if (tagConditions != null)
      'tag_conditions': [for (final e in tagConditions!) e.encode()],
  };
}

/// `profile_generations_to_tag` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigActionsTagResourcesProfileGenerationsToTag
    implements TerraformEnum {
  profileGenerationNew('PROFILE_GENERATION_NEW'),
  profileGenerationUpdate('PROFILE_GENERATION_UPDATE');

  const DataLossPreventionDiscoveryConfigActionsTagResourcesProfileGenerationsToTag(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.tag_resources.tag_conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsTagResourcesTagConditions {
  const DataLossPreventionDiscoveryConfigActionsTagResourcesTagConditions({
    this.sensitivityScore,
    this.tag,
  });

  final DataLossPreventionDiscoveryConfigActionsTagResourcesTagConditionsSensitivityScore?
  sensitivityScore;

  final DataLossPreventionDiscoveryConfigActionsTagResourcesTagConditionsTag?
  tag;

  Map<String, Object?> encode() => {
    if (sensitivityScore != null)
      'sensitivity_score': sensitivityScore!.encode(),
    if (tag != null) 'tag': tag!.encode(),
  };
}

/// Typed helper for the `actions.tag_resources.tag_conditions.sensitivity_score` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsTagResourcesTagConditionsSensitivityScore {
  const DataLossPreventionDiscoveryConfigActionsTagResourcesTagConditionsSensitivityScore({
    required this.score,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigActionsTagResourcesTagConditionsSensitivityScoreScore
  >
  score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigActionsTagResourcesTagConditionsSensitivityScoreScore
    implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH'),
  sensitivityUnknown('SENSITIVITY_UNKNOWN');

  const DataLossPreventionDiscoveryConfigActionsTagResourcesTagConditionsSensitivityScoreScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.tag_resources.tag_conditions.tag` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigActionsTagResourcesTagConditionsTag {
  const DataLossPreventionDiscoveryConfigActionsTagResourcesTagConditionsTag({
    this.namespacedValue,
  });

  final TfArg<String>? namespacedValue;

  Map<String, Object?> encode() => {
    if (namespacedValue != null)
      'namespaced_value': namespacedValue!.toTfJson(),
  };
}

/// Typed helper for the `org_config` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigOrgConfig {
  const DataLossPreventionDiscoveryConfigOrgConfig({
    this.projectId,
    this.location,
  });

  final TfArg<String>? projectId;

  final DataLossPreventionDiscoveryConfigOrgConfigLocation? location;

  Map<String, Object?> encode() => {
    if (projectId != null) 'project_id': projectId!.toTfJson(),
    if (location != null) 'location': location!.encode(),
  };
}

/// Typed helper for the `org_config.location` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigOrgConfigLocation {
  const DataLossPreventionDiscoveryConfigOrgConfigLocation({
    this.folderId,
    this.organizationId,
  });

  final TfArg<String>? folderId;

  final TfArg<String>? organizationId;

  Map<String, Object?> encode() => {
    if (folderId != null) 'folder_id': folderId!.toTfJson(),
    if (organizationId != null) 'organization_id': organizationId!.toTfJson(),
  };
}

/// Typed helper for the `other_cloud_starting_location` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigOtherCloudStartingLocation {
  const DataLossPreventionDiscoveryConfigOtherCloudStartingLocation({
    this.awsLocation,
  });

  final DataLossPreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation?
  awsLocation;

  Map<String, Object?> encode() => {
    if (awsLocation != null) 'aws_location': awsLocation!.encode(),
  };
}

/// Typed helper for the `other_cloud_starting_location.aws_location` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation {
  const DataLossPreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation({
    this.accountId,
    this.allAssetInventoryAssets,
  });

  final TfArg<String>? accountId;

  final TfArg<bool>? allAssetInventoryAssets;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
    if (allAssetInventoryAssets != null)
      'all_asset_inventory_assets': allAssetInventoryAssets!.toTfJson(),
  };
}

/// Typed helper for the `targets` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargets {
  const DataLossPreventionDiscoveryConfigTargets({
    this.bigQueryTarget,
    this.cloudSqlTarget,
    this.cloudStorageTarget,
    this.otherCloudTarget,
    this.secretsTarget,
  });

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTarget? bigQueryTarget;

  final DataLossPreventionDiscoveryConfigTargetsCloudSqlTarget? cloudSqlTarget;

  final DataLossPreventionDiscoveryConfigTargetsCloudStorageTarget?
  cloudStorageTarget;

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTarget?
  otherCloudTarget;

  final DataLossPreventionDiscoveryConfigTargetsSecretsTarget? secretsTarget;

  Map<String, Object?> encode() => {
    if (bigQueryTarget != null) 'big_query_target': bigQueryTarget!.encode(),
    if (cloudSqlTarget != null) 'cloud_sql_target': cloudSqlTarget!.encode(),
    if (cloudStorageTarget != null)
      'cloud_storage_target': cloudStorageTarget!.encode(),
    if (otherCloudTarget != null)
      'other_cloud_target': otherCloudTarget!.encode(),
    if (secretsTarget != null) 'secrets_target': secretsTarget!.encode(),
  };
}

/// Typed helper for the `targets.big_query_target` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTarget {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTarget({
    this.cadence,
    this.conditions,
    this.disabled,
    this.filter,
  });

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadence? cadence;

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditions?
  conditions;

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTargetDisabled?
  disabled;

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilter? filter;

  Map<String, Object?> encode() => {
    if (cadence != null) 'cadence': cadence!.encode(),
    if (conditions != null) 'conditions': conditions!.encode(),
    if (disabled != null) 'disabled': disabled!.encode(),
    if (filter != null) 'filter': filter!.encode(),
  };
}

/// Typed helper for the `targets.big_query_target.cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadence {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadence({
    this.inspectTemplateModifiedCadence,
    this.schemaModifiedCadence,
    this.tableModifiedCadence,
  });

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceInspectTemplateModifiedCadence?
  inspectTemplateModifiedCadence;

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceSchemaModifiedCadence?
  schemaModifiedCadence;

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceTableModifiedCadence?
  tableModifiedCadence;

  Map<String, Object?> encode() => {
    if (inspectTemplateModifiedCadence != null)
      'inspect_template_modified_cadence': inspectTemplateModifiedCadence!
          .encode(),
    if (schemaModifiedCadence != null)
      'schema_modified_cadence': schemaModifiedCadence!.encode(),
    if (tableModifiedCadence != null)
      'table_modified_cadence': tableModifiedCadence!.encode(),
  };
}

/// Typed helper for the `targets.big_query_target.cadence.inspect_template_modified_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceInspectTemplateModifiedCadence {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceInspectTemplateModifiedCadence({
    this.frequency,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceInspectTemplateModifiedCadenceFrequency
  >?
  frequency;

  Map<String, Object?> encode() => {
    if (frequency != null) 'frequency': frequency!.toTfJson(),
  };
}

/// `frequency` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceInspectTemplateModifiedCadenceFrequency
    implements TerraformEnum {
  updateFrequencyNever('UPDATE_FREQUENCY_NEVER'),
  updateFrequencyDaily('UPDATE_FREQUENCY_DAILY'),
  updateFrequencyMonthly('UPDATE_FREQUENCY_MONTHLY');

  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceInspectTemplateModifiedCadenceFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.big_query_target.cadence.schema_modified_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceSchemaModifiedCadence {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceSchemaModifiedCadence({
    this.frequency,
    this.types,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceSchemaModifiedCadenceFrequency
  >?
  frequency;

  final List<
    TfArg<
      DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceSchemaModifiedCadenceTypes
    >
  >?
  types;

  Map<String, Object?> encode() => {
    if (frequency != null) 'frequency': frequency!.toTfJson(),
    if (types != null) 'types': [for (final e in types!) e.toTfJson()],
  };
}

/// `frequency` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceSchemaModifiedCadenceFrequency
    implements TerraformEnum {
  updateFrequencyNever('UPDATE_FREQUENCY_NEVER'),
  updateFrequencyDaily('UPDATE_FREQUENCY_DAILY'),
  updateFrequencyMonthly('UPDATE_FREQUENCY_MONTHLY');

  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceSchemaModifiedCadenceFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `types` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceSchemaModifiedCadenceTypes
    implements TerraformEnum {
  schemaNewColumns('SCHEMA_NEW_COLUMNS'),
  schemaRemovedColumns('SCHEMA_REMOVED_COLUMNS');

  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceSchemaModifiedCadenceTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.big_query_target.cadence.table_modified_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceTableModifiedCadence {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceTableModifiedCadence({
    this.frequency,
    this.types,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceTableModifiedCadenceFrequency
  >?
  frequency;

  final TfArg<List<Object?>>? types;

  Map<String, Object?> encode() => {
    if (frequency != null) 'frequency': frequency!.toTfJson(),
    if (types != null) 'types': types!.toTfJson(),
  };
}

/// `frequency` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceTableModifiedCadenceFrequency
    implements TerraformEnum {
  updateFrequencyNever('UPDATE_FREQUENCY_NEVER'),
  updateFrequencyDaily('UPDATE_FREQUENCY_DAILY'),
  updateFrequencyMonthly('UPDATE_FREQUENCY_MONTHLY');

  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetCadenceTableModifiedCadenceFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.big_query_target.conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditions {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditions({
    this.createdAfter,
    this.typeCollection,
    this.orConditions,
    this.types,
  });

  final TfArg<String>? createdAfter;

  final TfArg<
    DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditionsTypeCollection
  >?
  typeCollection;

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditionsOrConditions?
  orConditions;

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditionsTypes?
  types;

  Map<String, Object?> encode() => {
    if (createdAfter != null) 'created_after': createdAfter!.toTfJson(),
    if (typeCollection != null) 'type_collection': typeCollection!.toTfJson(),
    if (orConditions != null) 'or_conditions': orConditions!.encode(),
    if (types != null) 'types': types!.encode(),
  };
}

/// `type_collection` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditionsTypeCollection
    implements TerraformEnum {
  bigQueryCollectionAllTypes('BIG_QUERY_COLLECTION_ALL_TYPES'),
  bigQueryCollectionOnlySupportedTypes(
    'BIG_QUERY_COLLECTION_ONLY_SUPPORTED_TYPES',
  );

  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditionsTypeCollection(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.big_query_target.conditions.or_conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditionsOrConditions {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditionsOrConditions({
    this.minAge,
    this.minRowCount,
  });

  final TfArg<String>? minAge;

  final TfArg<num>? minRowCount;

  Map<String, Object?> encode() => {
    if (minAge != null) 'min_age': minAge!.toTfJson(),
    if (minRowCount != null) 'min_row_count': minRowCount!.toTfJson(),
  };
}

/// Typed helper for the `targets.big_query_target.conditions.types` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditionsTypes {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditionsTypes({
    this.types,
  });

  final List<
    TfArg<
      DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditionsTypesTypes
    >
  >?
  types;

  Map<String, Object?> encode() => {
    if (types != null) 'types': [for (final e in types!) e.toTfJson()],
  };
}

/// `types` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditionsTypesTypes
    implements TerraformEnum {
  bigQueryTableTypeTable('BIG_QUERY_TABLE_TYPE_TABLE'),
  bigQueryTableTypeExternalBigLake('BIG_QUERY_TABLE_TYPE_EXTERNAL_BIG_LAKE');

  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetConditionsTypesTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.big_query_target.disabled` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetDisabled {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetDisabled();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `targets.big_query_target.filter` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilter {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilter({
    this.otherTables,
    this.tableReference,
    this.tables,
  });

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterOtherTables?
  otherTables;

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterTableReference?
  tableReference;

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterTables?
  tables;

  Map<String, Object?> encode() => {
    if (otherTables != null) 'other_tables': otherTables!.encode(),
    if (tableReference != null) 'table_reference': tableReference!.encode(),
    if (tables != null) 'tables': tables!.encode(),
  };
}

/// Typed helper for the `targets.big_query_target.filter.other_tables` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterOtherTables {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterOtherTables();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `targets.big_query_target.filter.table_reference` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterTableReference {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterTableReference({
    required this.datasetId,
    this.projectId,
    required this.tableId,
  });

  final TfArg<String> datasetId;

  final TfArg<String>? projectId;

  final TfArg<String> tableId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.toTfJson(),
    if (projectId != null) 'project_id': projectId!.toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// Typed helper for the `targets.big_query_target.filter.tables` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterTables {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterTables({
    this.includeRegexes,
  });

  final DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterTablesIncludeRegexes?
  includeRegexes;

  Map<String, Object?> encode() => {
    if (includeRegexes != null) 'include_regexes': includeRegexes!.encode(),
  };
}

/// Typed helper for the `targets.big_query_target.filter.tables.include_regexes` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterTablesIncludeRegexes {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterTablesIncludeRegexes({
    this.patterns,
  });

  final List<
    DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterTablesIncludeRegexesPatterns
  >?
  patterns;

  Map<String, Object?> encode() => {
    if (patterns != null) 'patterns': [for (final e in patterns!) e.encode()],
  };
}

/// Typed helper for the `targets.big_query_target.filter.tables.include_regexes.patterns` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterTablesIncludeRegexesPatterns {
  const DataLossPreventionDiscoveryConfigTargetsBigQueryTargetFilterTablesIncludeRegexesPatterns({
    this.datasetIdRegex,
    this.projectIdRegex,
    this.tableIdRegex,
  });

  final TfArg<String>? datasetIdRegex;

  final TfArg<String>? projectIdRegex;

  final TfArg<String>? tableIdRegex;

  Map<String, Object?> encode() => {
    if (datasetIdRegex != null) 'dataset_id_regex': datasetIdRegex!.toTfJson(),
    if (projectIdRegex != null) 'project_id_regex': projectIdRegex!.toTfJson(),
    if (tableIdRegex != null) 'table_id_regex': tableIdRegex!.toTfJson(),
  };
}

/// Typed helper for the `targets.cloud_sql_target` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudSqlTarget {
  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTarget({
    this.conditions,
    this.disabled,
    required this.filter,
    this.generationCadence,
  });

  final DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetConditions?
  conditions;

  final DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetDisabled?
  disabled;

  final DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilter filter;

  final DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadence?
  generationCadence;

  Map<String, Object?> encode() => {
    if (conditions != null) 'conditions': conditions!.encode(),
    if (disabled != null) 'disabled': disabled!.encode(),
    'filter': filter.encode(),
    if (generationCadence != null)
      'generation_cadence': generationCadence!.encode(),
  };
}

/// Typed helper for the `targets.cloud_sql_target.conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetConditions {
  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetConditions({
    this.databaseEngines,
    this.types,
  });

  final List<
    TfArg<
      DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetConditionsDatabaseEngines
    >
  >?
  databaseEngines;

  final List<
    TfArg<DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetConditionsTypes>
  >?
  types;

  Map<String, Object?> encode() => {
    if (databaseEngines != null)
      'database_engines': [for (final e in databaseEngines!) e.toTfJson()],
    if (types != null) 'types': [for (final e in types!) e.toTfJson()],
  };
}

/// `database_engines` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetConditionsDatabaseEngines
    implements TerraformEnum {
  allSupportedDatabaseEngines('ALL_SUPPORTED_DATABASE_ENGINES'),
  mysql('MYSQL'),
  postgres('POSTGRES');

  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetConditionsDatabaseEngines(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `types` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetConditionsTypes
    implements TerraformEnum {
  databaseResourceTypeAllSupportedTypes(
    'DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES',
  ),
  databaseResourceTypeTable('DATABASE_RESOURCE_TYPE_TABLE');

  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetConditionsTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.cloud_sql_target.disabled` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetDisabled {
  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetDisabled();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `targets.cloud_sql_target.filter` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilter {
  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilter({
    this.collection,
    this.databaseResourceReference,
    this.others,
  });

  final DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterCollection?
  collection;

  final DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterDatabaseResourceReference?
  databaseResourceReference;

  final DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterOthers?
  others;

  Map<String, Object?> encode() => {
    if (collection != null) 'collection': collection!.encode(),
    if (databaseResourceReference != null)
      'database_resource_reference': databaseResourceReference!.encode(),
    if (others != null) 'others': others!.encode(),
  };
}

/// Typed helper for the `targets.cloud_sql_target.filter.collection` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterCollection {
  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterCollection({
    this.includeRegexes,
  });

  final DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterCollectionIncludeRegexes?
  includeRegexes;

  Map<String, Object?> encode() => {
    if (includeRegexes != null) 'include_regexes': includeRegexes!.encode(),
  };
}

/// Typed helper for the `targets.cloud_sql_target.filter.collection.include_regexes` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterCollectionIncludeRegexes {
  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterCollectionIncludeRegexes({
    this.patterns,
  });

  final List<
    DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterCollectionIncludeRegexesPatterns
  >?
  patterns;

  Map<String, Object?> encode() => {
    if (patterns != null) 'patterns': [for (final e in patterns!) e.encode()],
  };
}

/// Typed helper for the `targets.cloud_sql_target.filter.collection.include_regexes.patterns` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterCollectionIncludeRegexesPatterns {
  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterCollectionIncludeRegexesPatterns({
    this.databaseRegex,
    this.databaseResourceNameRegex,
    this.instanceRegex,
    this.projectIdRegex,
  });

  final TfArg<String>? databaseRegex;

  final TfArg<String>? databaseResourceNameRegex;

  final TfArg<String>? instanceRegex;

  final TfArg<String>? projectIdRegex;

  Map<String, Object?> encode() => {
    if (databaseRegex != null) 'database_regex': databaseRegex!.toTfJson(),
    if (databaseResourceNameRegex != null)
      'database_resource_name_regex': databaseResourceNameRegex!.toTfJson(),
    if (instanceRegex != null) 'instance_regex': instanceRegex!.toTfJson(),
    if (projectIdRegex != null) 'project_id_regex': projectIdRegex!.toTfJson(),
  };
}

/// Typed helper for the `targets.cloud_sql_target.filter.database_resource_reference` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterDatabaseResourceReference {
  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterDatabaseResourceReference({
    required this.database,
    required this.databaseResource,
    required this.instance,
    required this.projectId,
  });

  final TfArg<String> database;

  final TfArg<String> databaseResource;

  final TfArg<String> instance;

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'database_resource': databaseResource.toTfJson(),
    'instance': instance.toTfJson(),
    'project_id': projectId.toTfJson(),
  };
}

/// Typed helper for the `targets.cloud_sql_target.filter.others` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterOthers {
  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetFilterOthers();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `targets.cloud_sql_target.generation_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadence {
  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadence({
    this.refreshFrequency,
    this.inspectTemplateModifiedCadence,
    this.schemaModifiedCadence,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceRefreshFrequency
  >?
  refreshFrequency;

  final DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadence?
  inspectTemplateModifiedCadence;

  final DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceSchemaModifiedCadence?
  schemaModifiedCadence;

  Map<String, Object?> encode() => {
    if (refreshFrequency != null)
      'refresh_frequency': refreshFrequency!.toTfJson(),
    if (inspectTemplateModifiedCadence != null)
      'inspect_template_modified_cadence': inspectTemplateModifiedCadence!
          .encode(),
    if (schemaModifiedCadence != null)
      'schema_modified_cadence': schemaModifiedCadence!.encode(),
  };
}

/// `refresh_frequency` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceRefreshFrequency
    implements TerraformEnum {
  updateFrequencyNever('UPDATE_FREQUENCY_NEVER'),
  updateFrequencyDaily('UPDATE_FREQUENCY_DAILY'),
  updateFrequencyMonthly('UPDATE_FREQUENCY_MONTHLY');

  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceRefreshFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.cloud_sql_target.generation_cadence.inspect_template_modified_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadence {
  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadence({
    required this.frequency,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadenceFrequency
  >
  frequency;

  Map<String, Object?> encode() => {'frequency': frequency.toTfJson()};
}

/// `frequency` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadenceFrequency
    implements TerraformEnum {
  updateFrequencyNever('UPDATE_FREQUENCY_NEVER'),
  updateFrequencyDaily('UPDATE_FREQUENCY_DAILY'),
  updateFrequencyMonthly('UPDATE_FREQUENCY_MONTHLY');

  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadenceFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.cloud_sql_target.generation_cadence.schema_modified_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceSchemaModifiedCadence {
  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceSchemaModifiedCadence({
    this.frequency,
    this.types,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceSchemaModifiedCadenceFrequency
  >?
  frequency;

  final List<
    TfArg<
      DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceSchemaModifiedCadenceTypes
    >
  >?
  types;

  Map<String, Object?> encode() => {
    if (frequency != null) 'frequency': frequency!.toTfJson(),
    if (types != null) 'types': [for (final e in types!) e.toTfJson()],
  };
}

/// `frequency` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceSchemaModifiedCadenceFrequency
    implements TerraformEnum {
  updateFrequencyNever('UPDATE_FREQUENCY_NEVER'),
  updateFrequencyDaily('UPDATE_FREQUENCY_DAILY'),
  updateFrequencyMonthly('UPDATE_FREQUENCY_MONTHLY');

  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceSchemaModifiedCadenceFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `types` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceSchemaModifiedCadenceTypes
    implements TerraformEnum {
  newColumns('NEW_COLUMNS'),
  removedColumns('REMOVED_COLUMNS');

  const DataLossPreventionDiscoveryConfigTargetsCloudSqlTargetGenerationCadenceSchemaModifiedCadenceTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.cloud_storage_target` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTarget {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTarget({
    this.conditions,
    this.disabled,
    required this.filter,
    this.generationCadence,
  });

  final DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetConditions?
  conditions;

  final DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetDisabled?
  disabled;

  final DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilter filter;

  final DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetGenerationCadence?
  generationCadence;

  Map<String, Object?> encode() => {
    if (conditions != null) 'conditions': conditions!.encode(),
    if (disabled != null) 'disabled': disabled!.encode(),
    'filter': filter.encode(),
    if (generationCadence != null)
      'generation_cadence': generationCadence!.encode(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetConditions {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetConditions({
    this.createdAfter,
    this.minAge,
    this.cloudStorageConditions,
  });

  final TfArg<String>? createdAfter;

  final TfArg<String>? minAge;

  final DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetConditionsCloudStorageConditions?
  cloudStorageConditions;

  Map<String, Object?> encode() => {
    if (createdAfter != null) 'created_after': createdAfter!.toTfJson(),
    if (minAge != null) 'min_age': minAge!.toTfJson(),
    if (cloudStorageConditions != null)
      'cloud_storage_conditions': cloudStorageConditions!.encode(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.conditions.cloud_storage_conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetConditionsCloudStorageConditions {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetConditionsCloudStorageConditions({
    this.includedBucketAttributes,
    this.includedObjectAttributes,
  });

  final List<
    TfArg<
      DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetConditionsCloudStorageConditionsIncludedBucketAttributes
    >
  >?
  includedBucketAttributes;

  final List<
    TfArg<
      DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetConditionsCloudStorageConditionsIncludedObjectAttributes
    >
  >?
  includedObjectAttributes;

  Map<String, Object?> encode() => {
    if (includedBucketAttributes != null)
      'included_bucket_attributes': [
        for (final e in includedBucketAttributes!) e.toTfJson(),
      ],
    if (includedObjectAttributes != null)
      'included_object_attributes': [
        for (final e in includedObjectAttributes!) e.toTfJson(),
      ],
  };
}

/// `included_bucket_attributes` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetConditionsCloudStorageConditionsIncludedBucketAttributes
    implements TerraformEnum {
  allSupportedBuckets('ALL_SUPPORTED_BUCKETS'),
  autoclassDisabled('AUTOCLASS_DISABLED'),
  autoclassEnabled('AUTOCLASS_ENABLED');

  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetConditionsCloudStorageConditionsIncludedBucketAttributes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `included_object_attributes` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetConditionsCloudStorageConditionsIncludedObjectAttributes
    implements TerraformEnum {
  allSupportedObjects('ALL_SUPPORTED_OBJECTS'),
  standard('STANDARD'),
  nearline('NEARLINE'),
  coldline('COLDLINE'),
  archive('ARCHIVE'),
  regional('REGIONAL'),
  multiRegional('MULTI_REGIONAL'),
  durableReducedAvailability('DURABLE_REDUCED_AVAILABILITY');

  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetConditionsCloudStorageConditionsIncludedObjectAttributes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.cloud_storage_target.disabled` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetDisabled {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetDisabled();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `targets.cloud_storage_target.filter` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilter {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilter({
    this.cloudStorageResourceReference,
    this.collection,
    this.others,
  });

  final DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCloudStorageResourceReference?
  cloudStorageResourceReference;

  final DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollection?
  collection;

  final DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterOthers?
  others;

  Map<String, Object?> encode() => {
    if (cloudStorageResourceReference != null)
      'cloud_storage_resource_reference': cloudStorageResourceReference!
          .encode(),
    if (collection != null) 'collection': collection!.encode(),
    if (others != null) 'others': others!.encode(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.cloud_storage_resource_reference` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCloudStorageResourceReference {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCloudStorageResourceReference({
    this.bucketName,
    this.projectId,
  });

  final TfArg<String>? bucketName;

  final TfArg<String>? projectId;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (projectId != null) 'project_id': projectId!.toTfJson(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.collection` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollection {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollection({
    this.includeRegexes,
    this.includeTags,
  });

  final DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeRegexes?
  includeRegexes;

  final DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeTags?
  includeTags;

  Map<String, Object?> encode() => {
    if (includeRegexes != null) 'include_regexes': includeRegexes!.encode(),
    if (includeTags != null) 'include_tags': includeTags!.encode(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.collection.include_regexes` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeRegexes {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeRegexes({
    this.patterns,
  });

  final List<
    DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeRegexesPatterns
  >?
  patterns;

  Map<String, Object?> encode() => {
    if (patterns != null) 'patterns': [for (final e in patterns!) e.encode()],
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.collection.include_regexes.patterns` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeRegexesPatterns {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeRegexesPatterns({
    this.cloudStorageRegex,
  });

  final DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeRegexesPatternsCloudStorageRegex?
  cloudStorageRegex;

  Map<String, Object?> encode() => {
    if (cloudStorageRegex != null)
      'cloud_storage_regex': cloudStorageRegex!.encode(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.collection.include_regexes.patterns.cloud_storage_regex` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeRegexesPatternsCloudStorageRegex {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeRegexesPatternsCloudStorageRegex({
    this.bucketNameRegex,
    this.projectIdRegex,
  });

  final TfArg<String>? bucketNameRegex;

  final TfArg<String>? projectIdRegex;

  Map<String, Object?> encode() => {
    if (bucketNameRegex != null)
      'bucket_name_regex': bucketNameRegex!.toTfJson(),
    if (projectIdRegex != null) 'project_id_regex': projectIdRegex!.toTfJson(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.collection.include_tags` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeTags {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeTags({
    this.tagFilters,
  });

  final List<
    DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeTagsTagFilters
  >?
  tagFilters;

  Map<String, Object?> encode() => {
    if (tagFilters != null)
      'tag_filters': [for (final e in tagFilters!) e.encode()],
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.collection.include_tags.tag_filters` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeTagsTagFilters {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterCollectionIncludeTagsTagFilters({
    this.namespacedTagKey,
    this.namespacedTagValue,
  });

  final TfArg<String>? namespacedTagKey;

  final TfArg<String>? namespacedTagValue;

  Map<String, Object?> encode() => {
    if (namespacedTagKey != null)
      'namespaced_tag_key': namespacedTagKey!.toTfJson(),
    if (namespacedTagValue != null)
      'namespaced_tag_value': namespacedTagValue!.toTfJson(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.others` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterOthers {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetFilterOthers();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `targets.cloud_storage_target.generation_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetGenerationCadence {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetGenerationCadence({
    this.refreshFrequency,
    this.inspectTemplateModifiedCadence,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetGenerationCadenceRefreshFrequency
  >?
  refreshFrequency;

  final DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadence?
  inspectTemplateModifiedCadence;

  Map<String, Object?> encode() => {
    if (refreshFrequency != null)
      'refresh_frequency': refreshFrequency!.toTfJson(),
    if (inspectTemplateModifiedCadence != null)
      'inspect_template_modified_cadence': inspectTemplateModifiedCadence!
          .encode(),
  };
}

/// `refresh_frequency` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetGenerationCadenceRefreshFrequency
    implements TerraformEnum {
  updateFrequencyNever('UPDATE_FREQUENCY_NEVER'),
  updateFrequencyDaily('UPDATE_FREQUENCY_DAILY'),
  updateFrequencyMonthly('UPDATE_FREQUENCY_MONTHLY');

  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetGenerationCadenceRefreshFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.cloud_storage_target.generation_cadence.inspect_template_modified_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadence {
  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadence({
    this.frequency,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadenceFrequency
  >?
  frequency;

  Map<String, Object?> encode() => {
    if (frequency != null) 'frequency': frequency!.toTfJson(),
  };
}

/// `frequency` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadenceFrequency
    implements TerraformEnum {
  updateFrequencyNever('UPDATE_FREQUENCY_NEVER'),
  updateFrequencyDaily('UPDATE_FREQUENCY_DAILY'),
  updateFrequencyMonthly('UPDATE_FREQUENCY_MONTHLY');

  const DataLossPreventionDiscoveryConfigTargetsCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadenceFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.other_cloud_target` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTarget {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTarget({
    this.conditions,
    this.dataSourceType,
    this.disabled,
    required this.filter,
    this.generationCadence,
  });

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetConditions?
  conditions;

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetDataSourceType?
  dataSourceType;

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetDisabled?
  disabled;

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilter filter;

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetGenerationCadence?
  generationCadence;

  Map<String, Object?> encode() => {
    if (conditions != null) 'conditions': conditions!.encode(),
    if (dataSourceType != null) 'data_source_type': dataSourceType!.encode(),
    if (disabled != null) 'disabled': disabled!.encode(),
    'filter': filter.encode(),
    if (generationCadence != null)
      'generation_cadence': generationCadence!.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetConditions {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetConditions({
    this.minAge,
    this.amazonS3BucketConditions,
  });

  final TfArg<String>? minAge;

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetConditionsAmazonS3BucketConditions?
  amazonS3BucketConditions;

  Map<String, Object?> encode() => {
    if (minAge != null) 'min_age': minAge!.toTfJson(),
    if (amazonS3BucketConditions != null)
      'amazon_s3_bucket_conditions': amazonS3BucketConditions!.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.conditions.amazon_s3_bucket_conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetConditionsAmazonS3BucketConditions {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetConditionsAmazonS3BucketConditions({
    this.bucketTypes,
    this.objectStorageClasses,
  });

  final List<
    TfArg<
      DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetConditionsAmazonS3BucketConditionsBucketTypes
    >
  >?
  bucketTypes;

  final List<
    TfArg<
      DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetConditionsAmazonS3BucketConditionsObjectStorageClasses
    >
  >?
  objectStorageClasses;

  Map<String, Object?> encode() => {
    if (bucketTypes != null)
      'bucket_types': [for (final e in bucketTypes!) e.toTfJson()],
    if (objectStorageClasses != null)
      'object_storage_classes': [
        for (final e in objectStorageClasses!) e.toTfJson(),
      ],
  };
}

/// `bucket_types` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetConditionsAmazonS3BucketConditionsBucketTypes
    implements TerraformEnum {
  typeAllSupported('TYPE_ALL_SUPPORTED'),
  typeGeneralPurpose('TYPE_GENERAL_PURPOSE');

  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetConditionsAmazonS3BucketConditionsBucketTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `object_storage_classes` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetConditionsAmazonS3BucketConditionsObjectStorageClasses
    implements TerraformEnum {
  allSupportedClasses('ALL_SUPPORTED_CLASSES'),
  standard('STANDARD'),
  standardInfrequentAccess('STANDARD_INFREQUENT_ACCESS'),
  glacierInstantRetrieval('GLACIER_INSTANT_RETRIEVAL'),
  intelligentTiering('INTELLIGENT_TIERING');

  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetConditionsAmazonS3BucketConditionsObjectStorageClasses(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.other_cloud_target.data_source_type` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetDataSourceType {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetDataSourceType({
    this.dataSource,
  });

  final TfArg<String>? dataSource;

  Map<String, Object?> encode() => {
    if (dataSource != null) 'data_source': dataSource!.toTfJson(),
  };
}

/// Typed helper for the `targets.other_cloud_target.disabled` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetDisabled {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetDisabled();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `targets.other_cloud_target.filter` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilter {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilter({
    this.collection,
    this.others,
    this.singleResource,
  });

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollection?
  collection;

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterOthers?
  others;

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterSingleResource?
  singleResource;

  Map<String, Object?> encode() => {
    if (collection != null) 'collection': collection!.encode(),
    if (others != null) 'others': others!.encode(),
    if (singleResource != null) 'single_resource': singleResource!.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.collection` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollection {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollection({
    this.includeRegexes,
  });

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollectionIncludeRegexes?
  includeRegexes;

  Map<String, Object?> encode() => {
    if (includeRegexes != null) 'include_regexes': includeRegexes!.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.collection.include_regexes` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollectionIncludeRegexes {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollectionIncludeRegexes({
    this.patterns,
  });

  final List<
    DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatterns
  >?
  patterns;

  Map<String, Object?> encode() => {
    if (patterns != null) 'patterns': [for (final e in patterns!) e.encode()],
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.collection.include_regexes.patterns` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatterns {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatterns({
    this.amazonS3BucketRegex,
  });

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatternsAmazonS3BucketRegex?
  amazonS3BucketRegex;

  Map<String, Object?> encode() => {
    if (amazonS3BucketRegex != null)
      'amazon_s3_bucket_regex': amazonS3BucketRegex!.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.collection.include_regexes.patterns.amazon_s3_bucket_regex` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatternsAmazonS3BucketRegex {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatternsAmazonS3BucketRegex({
    this.bucketNameRegex,
    this.awsAccountRegex,
  });

  final TfArg<String>? bucketNameRegex;

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatternsAmazonS3BucketRegexAwsAccountRegex?
  awsAccountRegex;

  Map<String, Object?> encode() => {
    if (bucketNameRegex != null)
      'bucket_name_regex': bucketNameRegex!.toTfJson(),
    if (awsAccountRegex != null) 'aws_account_regex': awsAccountRegex!.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.collection.include_regexes.patterns.amazon_s3_bucket_regex.aws_account_regex` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatternsAmazonS3BucketRegexAwsAccountRegex {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatternsAmazonS3BucketRegexAwsAccountRegex({
    this.accountIdRegex,
  });

  final TfArg<String>? accountIdRegex;

  Map<String, Object?> encode() => {
    if (accountIdRegex != null) 'account_id_regex': accountIdRegex!.toTfJson(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.others` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterOthers {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterOthers();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `targets.other_cloud_target.filter.single_resource` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterSingleResource {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterSingleResource({
    this.amazonS3Bucket,
  });

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterSingleResourceAmazonS3Bucket?
  amazonS3Bucket;

  Map<String, Object?> encode() => {
    if (amazonS3Bucket != null) 'amazon_s3_bucket': amazonS3Bucket!.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.single_resource.amazon_s3_bucket` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterSingleResourceAmazonS3Bucket {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterSingleResourceAmazonS3Bucket({
    this.bucketName,
    this.awsAccount,
  });

  final TfArg<String>? bucketName;

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount?
  awsAccount;

  Map<String, Object?> encode() => {
    if (bucketName != null) 'bucket_name': bucketName!.toTfJson(),
    if (awsAccount != null) 'aws_account': awsAccount!.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.single_resource.amazon_s3_bucket.aws_account` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount({
    this.accountId,
  });

  final TfArg<String>? accountId;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
  };
}

/// Typed helper for the `targets.other_cloud_target.generation_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetGenerationCadence {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetGenerationCadence({
    this.refreshFrequency,
    this.inspectTemplateModifiedCadence,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetGenerationCadenceRefreshFrequency
  >?
  refreshFrequency;

  final DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetGenerationCadenceInspectTemplateModifiedCadence?
  inspectTemplateModifiedCadence;

  Map<String, Object?> encode() => {
    if (refreshFrequency != null)
      'refresh_frequency': refreshFrequency!.toTfJson(),
    if (inspectTemplateModifiedCadence != null)
      'inspect_template_modified_cadence': inspectTemplateModifiedCadence!
          .encode(),
  };
}

/// `refresh_frequency` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetGenerationCadenceRefreshFrequency
    implements TerraformEnum {
  updateFrequencyNever('UPDATE_FREQUENCY_NEVER'),
  updateFrequencyDaily('UPDATE_FREQUENCY_DAILY'),
  updateFrequencyMonthly('UPDATE_FREQUENCY_MONTHLY');

  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetGenerationCadenceRefreshFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.other_cloud_target.generation_cadence.inspect_template_modified_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetGenerationCadenceInspectTemplateModifiedCadence {
  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetGenerationCadenceInspectTemplateModifiedCadence({
    this.frequency,
  });

  final TfArg<
    DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetGenerationCadenceInspectTemplateModifiedCadenceFrequency
  >?
  frequency;

  Map<String, Object?> encode() => {
    if (frequency != null) 'frequency': frequency!.toTfJson(),
  };
}

/// `frequency` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetGenerationCadenceInspectTemplateModifiedCadenceFrequency
    implements TerraformEnum {
  updateFrequencyNever('UPDATE_FREQUENCY_NEVER'),
  updateFrequencyDaily('UPDATE_FREQUENCY_DAILY'),
  updateFrequencyMonthly('UPDATE_FREQUENCY_MONTHLY');

  const DataLossPreventionDiscoveryConfigTargetsOtherCloudTargetGenerationCadenceInspectTemplateModifiedCadenceFrequency(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.secrets_target` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTargetsSecretsTarget {
  const DataLossPreventionDiscoveryConfigTargetsSecretsTarget();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `google_data_loss_prevention_discovery_config`.
///
/// Configuration for discovery to scan resources for profile generation. Only
/// one discovery configuration may exist per organization, folder, or project.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDataLossPreventionDiscoveryConfig extends Resource {
  static const String tfType = 'google_data_loss_prevention_discovery_config';

  GoogleDataLossPreventionDiscoveryConfig({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<List<String>>? inspectTemplates,
    required TfArg<String> location,
    required TfArg<String> parent,
    TfArg<DataLossPreventionDiscoveryConfigStatus>? status,
    List<DataLossPreventionDiscoveryConfigActions>? actions,
    DataLossPreventionDiscoveryConfigOrgConfig? orgConfig,
    DataLossPreventionDiscoveryConfigOtherCloudStartingLocation?
    otherCloudStartingLocation,
    List<DataLossPreventionDiscoveryConfigTargets>? targets,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (inspectTemplates != null) 'inspect_templates': inspectTemplates,
           'location': location,
           'parent': parent,
           if (status != null) 'status': status,
           if (actions != null)
             'actions': TfArg.literal([for (final e in actions) e.encode()]),
           if (orgConfig != null)
             'org_config': TfArg.literal(orgConfig.encode()),
           if (otherCloudStartingLocation != null)
             'other_cloud_starting_location': TfArg.literal(
               otherCloudStartingLocation.encode(),
             ),
           if (targets != null)
             'targets': TfArg.literal([for (final e in targets) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataLossPreventionDiscoveryConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `errors` attribute.
  TfRef<List<Map<String, Object?>>> get errors =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'errors');

  /// Reference to `last_run_time` attribute.
  TfRef<String> get lastRunTime =>
      TfRef.attribute<String>(this, 'last_run_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
