// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_dataset.dart' show GoogleBigqueryDataset;
import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

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

  final DataLossPreventionDiscoveryConfigExportData? exportData;

  final DataLossPreventionDiscoveryConfigPubSubNotification? pubSubNotification;

  final DataLossPreventionDiscoveryConfigPublishToChronicle? publishToChronicle;

  final DataLossPreventionDiscoveryConfigPublishToDataplexCatalog?
  publishToDataplexCatalog;

  final DataLossPreventionDiscoveryConfigPublishToScc? publishToScc;

  final DataLossPreventionDiscoveryConfigTagResources? tagResources;

  Map<String, Object?> encode() => {
    'export_data': ?exportData?.encode(),
    'pub_sub_notification': ?pubSubNotification?.encode(),
    'publish_to_chronicle': ?publishToChronicle?.encode(),
    'publish_to_dataplex_catalog': ?publishToDataplexCatalog?.encode(),
    'publish_to_scc': ?publishToScc?.encode(),
    'tag_resources': ?tagResources?.encode(),
  };
}

/// Typed helper for the `actions.export_data` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigExportData {
  const DataLossPreventionDiscoveryConfigExportData({
    this.profileTable,
    this.sampleFindingsTable,
  });

  final DataLossPreventionDiscoveryConfigProfileTable? profileTable;

  final DataLossPreventionDiscoveryConfigSampleFindingsTable?
  sampleFindingsTable;

  Map<String, Object?> encode() => {
    'profile_table': ?profileTable?.encode(),
    'sample_findings_table': ?sampleFindingsTable?.encode(),
  };
}

/// Typed helper for the `actions.export_data.profile_table` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigProfileTable {
  const DataLossPreventionDiscoveryConfigProfileTable({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  final RefTo<GoogleBigqueryDataset>? datasetId;

  final TfArg<String>? projectId;

  final TfArg<String>? tableId;

  Map<String, Object?> encode() => {
    'dataset_id': ?datasetId?.encodeAs('dataset_id').toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'table_id': ?tableId?.toTfJson(),
  };
}

/// Typed helper for the `actions.export_data.sample_findings_table` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigSampleFindingsTable {
  const DataLossPreventionDiscoveryConfigSampleFindingsTable({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  final RefTo<GoogleBigqueryDataset>? datasetId;

  final TfArg<String>? projectId;

  final TfArg<String>? tableId;

  Map<String, Object?> encode() => {
    'dataset_id': ?datasetId?.encodeAs('dataset_id').toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'table_id': ?tableId?.toTfJson(),
  };
}

/// Typed helper for the `actions.pub_sub_notification` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigPubSubNotification {
  const DataLossPreventionDiscoveryConfigPubSubNotification({
    this.detailOfMessage,
    this.event,
    this.topic,
    this.pubsubCondition,
  });

  final TfArg<DataLossPreventionDiscoveryConfigDetailOfMessage>?
  detailOfMessage;

  final TfArg<DataLossPreventionDiscoveryConfigEvent>? event;

  final RefTo<GooglePubsubTopic>? topic;

  final DataLossPreventionDiscoveryConfigPubsubCondition? pubsubCondition;

  Map<String, Object?> encode() => {
    'detail_of_message': ?detailOfMessage?.toTfJson(),
    'event': ?event?.toTfJson(),
    'topic': ?topic?.encodeAs('id').toTfJson(),
    'pubsub_condition': ?pubsubCondition?.encode(),
  };
}

/// `detail_of_message` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigDetailOfMessage implements TerraformEnum {
  tableProfile('TABLE_PROFILE'),
  resourceName('RESOURCE_NAME');

  const DataLossPreventionDiscoveryConfigDetailOfMessage(this.terraformValue);
  @override
  final String terraformValue;
}

/// `event` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigEvent implements TerraformEnum {
  newProfile('NEW_PROFILE'),
  changedProfile('CHANGED_PROFILE'),
  scoreIncreased('SCORE_INCREASED'),
  errorChanged('ERROR_CHANGED');

  const DataLossPreventionDiscoveryConfigEvent(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.pub_sub_notification.pubsub_condition` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigPubsubCondition {
  const DataLossPreventionDiscoveryConfigPubsubCondition({this.expressions});

  final DataLossPreventionDiscoveryConfigExpressions? expressions;

  Map<String, Object?> encode() => {'expressions': ?expressions?.encode()};
}

/// Typed helper for the `actions.pub_sub_notification.pubsub_condition.expressions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigExpressions {
  const DataLossPreventionDiscoveryConfigExpressions({
    this.logicalOperator,
    this.conditions,
  });

  final TfArg<DataLossPreventionDiscoveryConfigLogicalOperator>?
  logicalOperator;

  final List<DataLossPreventionDiscoveryConfigExpressionsConditions>?
  conditions;

  Map<String, Object?> encode() => {
    'logical_operator': ?logicalOperator?.toTfJson(),
    if (conditions != null)
      'conditions': [for (final e in conditions!) e.encode()],
  };
}

/// `logical_operator` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigLogicalOperator implements TerraformEnum {
  or('OR'),
  and('AND');

  const DataLossPreventionDiscoveryConfigLogicalOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.pub_sub_notification.pubsub_condition.expressions.conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigExpressionsConditions {
  const DataLossPreventionDiscoveryConfigExpressionsConditions({
    this.minimumRiskScore,
    this.minimumSensitivityScore,
  });

  final TfArg<DataLossPreventionDiscoveryConfigMinimumRiskScore>?
  minimumRiskScore;

  final TfArg<DataLossPreventionDiscoveryConfigMinimumSensitivityScore>?
  minimumSensitivityScore;

  Map<String, Object?> encode() => {
    'minimum_risk_score': ?minimumRiskScore?.toTfJson(),
    'minimum_sensitivity_score': ?minimumSensitivityScore?.toTfJson(),
  };
}

/// `minimum_risk_score` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigMinimumRiskScore
    implements TerraformEnum {
  high('HIGH'),
  mediumOrHigh('MEDIUM_OR_HIGH');

  const DataLossPreventionDiscoveryConfigMinimumRiskScore(this.terraformValue);
  @override
  final String terraformValue;
}

/// `minimum_sensitivity_score` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigMinimumSensitivityScore
    implements TerraformEnum {
  high('HIGH'),
  mediumOrHigh('MEDIUM_OR_HIGH');

  const DataLossPreventionDiscoveryConfigMinimumSensitivityScore(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.publish_to_chronicle` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigPublishToChronicle {
  const DataLossPreventionDiscoveryConfigPublishToChronicle();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `actions.publish_to_dataplex_catalog` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigPublishToDataplexCatalog {
  const DataLossPreventionDiscoveryConfigPublishToDataplexCatalog();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `actions.publish_to_scc` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigPublishToScc {
  const DataLossPreventionDiscoveryConfigPublishToScc();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `actions.tag_resources` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTagResources {
  const DataLossPreventionDiscoveryConfigTagResources({
    this.lowerDataRiskToLow,
    this.profileGenerationsToTag,
    this.tagConditions,
  });

  final TfArg<bool>? lowerDataRiskToLow;

  final List<TfArg<DataLossPreventionDiscoveryConfigProfileGenerationsToTag>>?
  profileGenerationsToTag;

  final List<DataLossPreventionDiscoveryConfigTagConditions>? tagConditions;

  Map<String, Object?> encode() => {
    'lower_data_risk_to_low': ?lowerDataRiskToLow?.toTfJson(),
    if (profileGenerationsToTag != null)
      'profile_generations_to_tag': [
        for (final e in profileGenerationsToTag!) e.toTfJson(),
      ],
    if (tagConditions != null)
      'tag_conditions': [for (final e in tagConditions!) e.encode()],
  };
}

/// `profile_generations_to_tag` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigProfileGenerationsToTag
    implements TerraformEnum {
  profileGenerationNew('PROFILE_GENERATION_NEW'),
  profileGenerationUpdate('PROFILE_GENERATION_UPDATE');

  const DataLossPreventionDiscoveryConfigProfileGenerationsToTag(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.tag_resources.tag_conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTagConditions {
  const DataLossPreventionDiscoveryConfigTagConditions({
    this.sensitivityScore,
    this.tag,
  });

  final DataLossPreventionDiscoveryConfigSensitivityScore? sensitivityScore;

  final DataLossPreventionDiscoveryConfigTag? tag;

  Map<String, Object?> encode() => {
    'sensitivity_score': ?sensitivityScore?.encode(),
    'tag': ?tag?.encode(),
  };
}

/// Typed helper for the `actions.tag_resources.tag_conditions.sensitivity_score` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigSensitivityScore {
  const DataLossPreventionDiscoveryConfigSensitivityScore({
    required this.score,
  });

  final TfArg<DataLossPreventionDiscoveryConfigScore> score;

  Map<String, Object?> encode() => {'score': score.toTfJson()};
}

/// `score` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigScore implements TerraformEnum {
  sensitivityLow('SENSITIVITY_LOW'),
  sensitivityModerate('SENSITIVITY_MODERATE'),
  sensitivityHigh('SENSITIVITY_HIGH'),
  sensitivityUnknown('SENSITIVITY_UNKNOWN');

  const DataLossPreventionDiscoveryConfigScore(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `actions.tag_resources.tag_conditions.tag` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTag {
  const DataLossPreventionDiscoveryConfigTag({this.namespacedValue});

  final TfArg<String>? namespacedValue;

  Map<String, Object?> encode() => {
    'namespaced_value': ?namespacedValue?.toTfJson(),
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
    'project_id': ?projectId?.toTfJson(),
    'location': ?location?.encode(),
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
    'folder_id': ?folderId?.toTfJson(),
    'organization_id': ?organizationId?.toTfJson(),
  };
}

/// Typed helper for the `other_cloud_starting_location` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigOtherCloudStartingLocation {
  const DataLossPreventionDiscoveryConfigOtherCloudStartingLocation({
    this.awsLocation,
  });

  final DataLossPreventionDiscoveryConfigAwsLocation? awsLocation;

  Map<String, Object?> encode() => {'aws_location': ?awsLocation?.encode()};
}

/// Typed helper for the `other_cloud_starting_location.aws_location` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigAwsLocation {
  const DataLossPreventionDiscoveryConfigAwsLocation({
    this.accountId,
    this.allAssetInventoryAssets,
  });

  final TfArg<String>? accountId;

  final TfArg<bool>? allAssetInventoryAssets;

  Map<String, Object?> encode() => {
    'account_id': ?accountId?.toTfJson(),
    'all_asset_inventory_assets': ?allAssetInventoryAssets?.toTfJson(),
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

  final DataLossPreventionDiscoveryConfigBigQueryTarget? bigQueryTarget;

  final DataLossPreventionDiscoveryConfigCloudSqlTarget? cloudSqlTarget;

  final DataLossPreventionDiscoveryConfigCloudStorageTarget? cloudStorageTarget;

  final DataLossPreventionDiscoveryConfigOtherCloudTarget? otherCloudTarget;

  final DataLossPreventionDiscoveryConfigSecretsTarget? secretsTarget;

  Map<String, Object?> encode() => {
    'big_query_target': ?bigQueryTarget?.encode(),
    'cloud_sql_target': ?cloudSqlTarget?.encode(),
    'cloud_storage_target': ?cloudStorageTarget?.encode(),
    'other_cloud_target': ?otherCloudTarget?.encode(),
    'secrets_target': ?secretsTarget?.encode(),
  };
}

/// Typed helper for the `targets.big_query_target` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigBigQueryTarget {
  const DataLossPreventionDiscoveryConfigBigQueryTarget({
    this.cadence,
    this.conditions,
    this.disabled,
    this.filter,
  });

  final DataLossPreventionDiscoveryConfigCadence? cadence;

  final DataLossPreventionDiscoveryConfigBigQueryTargetConditions? conditions;

  final DataLossPreventionDiscoveryConfigDisabled? disabled;

  final DataLossPreventionDiscoveryConfigBigQueryTargetFilter? filter;

  Map<String, Object?> encode() => {
    'cadence': ?cadence?.encode(),
    'conditions': ?conditions?.encode(),
    'disabled': ?disabled?.encode(),
    'filter': ?filter?.encode(),
  };
}

/// Typed helper for the `targets.big_query_target.cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCadence {
  const DataLossPreventionDiscoveryConfigCadence({
    this.refreshFrequency,
    this.inspectTemplateModifiedCadence,
    this.schemaModifiedCadence,
    this.tableModifiedCadence,
  });

  final TfArg<DataLossPreventionDiscoveryConfigRefreshFrequency>?
  refreshFrequency;

  final DataLossPreventionDiscoveryConfigCadenceInspectTemplateModifiedCadence?
  inspectTemplateModifiedCadence;

  final DataLossPreventionDiscoveryConfigCadenceSchemaModifiedCadence?
  schemaModifiedCadence;

  final DataLossPreventionDiscoveryConfigTableModifiedCadence?
  tableModifiedCadence;

  Map<String, Object?> encode() => {
    'refresh_frequency': ?refreshFrequency?.toTfJson(),
    'inspect_template_modified_cadence': ?inspectTemplateModifiedCadence
        ?.encode(),
    'schema_modified_cadence': ?schemaModifiedCadence?.encode(),
    'table_modified_cadence': ?tableModifiedCadence?.encode(),
  };
}

/// `refresh_frequency` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigRefreshFrequency
    implements TerraformEnum {
  updateFrequencyNever('UPDATE_FREQUENCY_NEVER'),
  updateFrequencyDaily('UPDATE_FREQUENCY_DAILY'),
  updateFrequencyMonthly('UPDATE_FREQUENCY_MONTHLY');

  const DataLossPreventionDiscoveryConfigRefreshFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.big_query_target.cadence.inspect_template_modified_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDiscoveryConfigCadenceInspectTemplateModifiedCadence {
  const DataLossPreventionDiscoveryConfigCadenceInspectTemplateModifiedCadence({
    this.frequency,
  });

  final TfArg<DataLossPreventionDiscoveryConfigFrequency>? frequency;

  Map<String, Object?> encode() => {'frequency': ?frequency?.toTfJson()};
}

/// `frequency` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigFrequency implements TerraformEnum {
  updateFrequencyNever('UPDATE_FREQUENCY_NEVER'),
  updateFrequencyDaily('UPDATE_FREQUENCY_DAILY'),
  updateFrequencyMonthly('UPDATE_FREQUENCY_MONTHLY');

  const DataLossPreventionDiscoveryConfigFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.big_query_target.cadence.schema_modified_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCadenceSchemaModifiedCadence {
  const DataLossPreventionDiscoveryConfigCadenceSchemaModifiedCadence({
    this.frequency,
    this.types,
  });

  final TfArg<DataLossPreventionDiscoveryConfigFrequency>? frequency;

  final List<TfArg<DataLossPreventionDiscoveryConfigCadenceTypes>>? types;

  Map<String, Object?> encode() => {
    'frequency': ?frequency?.toTfJson(),
    if (types != null) 'types': [for (final e in types!) e.toTfJson()],
  };
}

/// `types` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigCadenceTypes implements TerraformEnum {
  schemaNewColumns('SCHEMA_NEW_COLUMNS'),
  schemaRemovedColumns('SCHEMA_REMOVED_COLUMNS');

  const DataLossPreventionDiscoveryConfigCadenceTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.big_query_target.cadence.table_modified_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTableModifiedCadence {
  const DataLossPreventionDiscoveryConfigTableModifiedCadence({
    this.frequency,
    this.types,
  });

  final TfArg<DataLossPreventionDiscoveryConfigFrequency>? frequency;

  final TfArg<List<String>>? types;

  Map<String, Object?> encode() => {
    'frequency': ?frequency?.toTfJson(),
    'types': ?types?.toTfJson(),
  };
}

/// Typed helper for the `targets.big_query_target.conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigBigQueryTargetConditions {
  const DataLossPreventionDiscoveryConfigBigQueryTargetConditions({
    this.createdAfter,
    this.typeCollection,
    this.orConditions,
    this.types,
  });

  final TfArg<String>? createdAfter;

  final TfArg<DataLossPreventionDiscoveryConfigTypeCollection>? typeCollection;

  final DataLossPreventionDiscoveryConfigOrConditions? orConditions;

  final DataLossPreventionDiscoveryConfigBigQueryTargetTypes? types;

  Map<String, Object?> encode() => {
    'created_after': ?createdAfter?.toTfJson(),
    'type_collection': ?typeCollection?.toTfJson(),
    'or_conditions': ?orConditions?.encode(),
    'types': ?types?.encode(),
  };
}

/// `type_collection` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTypeCollection implements TerraformEnum {
  bigQueryCollectionAllTypes('BIG_QUERY_COLLECTION_ALL_TYPES'),
  bigQueryCollectionOnlySupportedTypes(
    'BIG_QUERY_COLLECTION_ONLY_SUPPORTED_TYPES',
  );

  const DataLossPreventionDiscoveryConfigTypeCollection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.big_query_target.conditions.or_conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigOrConditions {
  const DataLossPreventionDiscoveryConfigOrConditions({
    this.minAge,
    this.minRowCount,
  });

  final TfArg<String>? minAge;

  final TfArg<num>? minRowCount;

  Map<String, Object?> encode() => {
    'min_age': ?minAge?.toTfJson(),
    'min_row_count': ?minRowCount?.toTfJson(),
  };
}

/// Typed helper for the `targets.big_query_target.conditions.types` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigBigQueryTargetTypes {
  const DataLossPreventionDiscoveryConfigBigQueryTargetTypes({this.types});

  final List<TfArg<DataLossPreventionDiscoveryConfigTypesTypes>>? types;

  Map<String, Object?> encode() => {
    if (types != null) 'types': [for (final e in types!) e.toTfJson()],
  };
}

/// `types` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigTypesTypes implements TerraformEnum {
  bigQueryTableTypeTable('BIG_QUERY_TABLE_TYPE_TABLE'),
  bigQueryTableTypeExternalBigLake('BIG_QUERY_TABLE_TYPE_EXTERNAL_BIG_LAKE');

  const DataLossPreventionDiscoveryConfigTypesTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.big_query_target.disabled` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDiscoveryConfigDisabled {
  const DataLossPreventionDiscoveryConfigDisabled();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `targets.big_query_target.filter` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigBigQueryTargetFilter {
  const DataLossPreventionDiscoveryConfigBigQueryTargetFilter({
    this.otherTables,
    this.tableReference,
    this.tables,
  });

  final DataLossPreventionDiscoveryConfigOtherTables? otherTables;

  final DataLossPreventionDiscoveryConfigTableReference? tableReference;

  final DataLossPreventionDiscoveryConfigTables? tables;

  Map<String, Object?> encode() => {
    'other_tables': ?otherTables?.encode(),
    'table_reference': ?tableReference?.encode(),
    'tables': ?tables?.encode(),
  };
}

/// Typed helper for the `targets.big_query_target.filter.other_tables` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigOtherTables {
  const DataLossPreventionDiscoveryConfigOtherTables();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `targets.big_query_target.filter.table_reference` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTableReference {
  const DataLossPreventionDiscoveryConfigTableReference({
    required this.datasetId,
    this.projectId,
    required this.tableId,
  });

  final RefTo<GoogleBigqueryDataset> datasetId;

  final TfArg<String>? projectId;

  final TfArg<String> tableId;

  Map<String, Object?> encode() => {
    'dataset_id': datasetId.encodeAs('dataset_id').toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'table_id': tableId.toTfJson(),
  };
}

/// Typed helper for the `targets.big_query_target.filter.tables` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTables {
  const DataLossPreventionDiscoveryConfigTables({this.includeRegexes});

  final DataLossPreventionDiscoveryConfigTablesIncludeRegexes? includeRegexes;

  Map<String, Object?> encode() => {
    'include_regexes': ?includeRegexes?.encode(),
  };
}

/// Typed helper for the `targets.big_query_target.filter.tables.include_regexes` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTablesIncludeRegexes {
  const DataLossPreventionDiscoveryConfigTablesIncludeRegexes({this.patterns});

  final List<DataLossPreventionDiscoveryConfigTablesPatterns>? patterns;

  Map<String, Object?> encode() => {
    if (patterns != null) 'patterns': [for (final e in patterns!) e.encode()],
  };
}

/// Typed helper for the `targets.big_query_target.filter.tables.include_regexes.patterns` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigTablesPatterns {
  const DataLossPreventionDiscoveryConfigTablesPatterns({
    this.datasetIdRegex,
    this.projectIdRegex,
    this.tableIdRegex,
  });

  final TfArg<String>? datasetIdRegex;

  final TfArg<String>? projectIdRegex;

  final TfArg<String>? tableIdRegex;

  Map<String, Object?> encode() => {
    'dataset_id_regex': ?datasetIdRegex?.toTfJson(),
    'project_id_regex': ?projectIdRegex?.toTfJson(),
    'table_id_regex': ?tableIdRegex?.toTfJson(),
  };
}

/// Typed helper for the `targets.cloud_sql_target` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudSqlTarget {
  const DataLossPreventionDiscoveryConfigCloudSqlTarget({
    this.conditions,
    this.disabled,
    required this.filter,
    this.generationCadence,
  });

  final DataLossPreventionDiscoveryConfigCloudSqlTargetConditions? conditions;

  final DataLossPreventionDiscoveryConfigDisabled? disabled;

  final DataLossPreventionDiscoveryConfigCloudSqlTargetFilter filter;

  final DataLossPreventionDiscoveryConfigCloudSqlTargetGenerationCadence?
  generationCadence;

  Map<String, Object?> encode() => {
    'conditions': ?conditions?.encode(),
    'disabled': ?disabled?.encode(),
    'filter': filter.encode(),
    'generation_cadence': ?generationCadence?.encode(),
  };
}

/// Typed helper for the `targets.cloud_sql_target.conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudSqlTargetConditions {
  const DataLossPreventionDiscoveryConfigCloudSqlTargetConditions({
    this.databaseEngines,
    this.types,
  });

  final List<TfArg<DataLossPreventionDiscoveryConfigDatabaseEngines>>?
  databaseEngines;

  final List<TfArg<DataLossPreventionDiscoveryConfigCloudSqlTargetTypes>>?
  types;

  Map<String, Object?> encode() => {
    if (databaseEngines != null)
      'database_engines': [for (final e in databaseEngines!) e.toTfJson()],
    if (types != null) 'types': [for (final e in types!) e.toTfJson()],
  };
}

/// `database_engines` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigDatabaseEngines implements TerraformEnum {
  allSupportedDatabaseEngines('ALL_SUPPORTED_DATABASE_ENGINES'),
  mysql('MYSQL'),
  postgres('POSTGRES');

  const DataLossPreventionDiscoveryConfigDatabaseEngines(this.terraformValue);
  @override
  final String terraformValue;
}

/// `types` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigCloudSqlTargetTypes
    implements TerraformEnum {
  databaseResourceTypeAllSupportedTypes(
    'DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES',
  ),
  databaseResourceTypeTable('DATABASE_RESOURCE_TYPE_TABLE');

  const DataLossPreventionDiscoveryConfigCloudSqlTargetTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.cloud_sql_target.filter` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudSqlTargetFilter {
  const DataLossPreventionDiscoveryConfigCloudSqlTargetFilter({
    this.collection,
    this.databaseResourceReference,
    this.others,
  });

  final DataLossPreventionDiscoveryConfigCloudSqlTargetCollection? collection;

  final DataLossPreventionDiscoveryConfigDatabaseResourceReference?
  databaseResourceReference;

  final DataLossPreventionDiscoveryConfigOthers? others;

  Map<String, Object?> encode() => {
    'collection': ?collection?.encode(),
    'database_resource_reference': ?databaseResourceReference?.encode(),
    'others': ?others?.encode(),
  };
}

/// Typed helper for the `targets.cloud_sql_target.filter.collection` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudSqlTargetCollection {
  const DataLossPreventionDiscoveryConfigCloudSqlTargetCollection({
    this.includeRegexes,
  });

  final DataLossPreventionDiscoveryConfigCloudSqlTargetIncludeRegexes?
  includeRegexes;

  Map<String, Object?> encode() => {
    'include_regexes': ?includeRegexes?.encode(),
  };
}

/// Typed helper for the `targets.cloud_sql_target.filter.collection.include_regexes` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudSqlTargetIncludeRegexes {
  const DataLossPreventionDiscoveryConfigCloudSqlTargetIncludeRegexes({
    this.patterns,
  });

  final List<DataLossPreventionDiscoveryConfigCloudSqlTargetPatterns>? patterns;

  Map<String, Object?> encode() => {
    if (patterns != null) 'patterns': [for (final e in patterns!) e.encode()],
  };
}

/// Typed helper for the `targets.cloud_sql_target.filter.collection.include_regexes.patterns` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudSqlTargetPatterns {
  const DataLossPreventionDiscoveryConfigCloudSqlTargetPatterns({
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
    'database_regex': ?databaseRegex?.toTfJson(),
    'database_resource_name_regex': ?databaseResourceNameRegex?.toTfJson(),
    'instance_regex': ?instanceRegex?.toTfJson(),
    'project_id_regex': ?projectIdRegex?.toTfJson(),
  };
}

/// Typed helper for the `targets.cloud_sql_target.filter.database_resource_reference` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigDatabaseResourceReference {
  const DataLossPreventionDiscoveryConfigDatabaseResourceReference({
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
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDiscoveryConfigOthers {
  const DataLossPreventionDiscoveryConfigOthers();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `targets.cloud_sql_target.generation_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudSqlTargetGenerationCadence {
  const DataLossPreventionDiscoveryConfigCloudSqlTargetGenerationCadence({
    this.refreshFrequency,
    this.inspectTemplateModifiedCadence,
    this.schemaModifiedCadence,
  });

  final TfArg<DataLossPreventionDiscoveryConfigRefreshFrequency>?
  refreshFrequency;

  final DataLossPreventionDiscoveryConfigGenerationCadenceInspectTemplateModifiedCadence?
  inspectTemplateModifiedCadence;

  final DataLossPreventionDiscoveryConfigGenerationCadenceSchemaModifiedCadence?
  schemaModifiedCadence;

  Map<String, Object?> encode() => {
    'refresh_frequency': ?refreshFrequency?.toTfJson(),
    'inspect_template_modified_cadence': ?inspectTemplateModifiedCadence
        ?.encode(),
    'schema_modified_cadence': ?schemaModifiedCadence?.encode(),
  };
}

/// Typed helper for the `targets.cloud_sql_target.generation_cadence.inspect_template_modified_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigGenerationCadenceInspectTemplateModifiedCadence {
  const DataLossPreventionDiscoveryConfigGenerationCadenceInspectTemplateModifiedCadence({
    required this.frequency,
  });

  final TfArg<DataLossPreventionDiscoveryConfigFrequency> frequency;

  Map<String, Object?> encode() => {'frequency': frequency.toTfJson()};
}

/// Typed helper for the `targets.cloud_sql_target.generation_cadence.schema_modified_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigGenerationCadenceSchemaModifiedCadence {
  const DataLossPreventionDiscoveryConfigGenerationCadenceSchemaModifiedCadence({
    this.frequency,
    this.types,
  });

  final TfArg<DataLossPreventionDiscoveryConfigFrequency>? frequency;

  final List<TfArg<DataLossPreventionDiscoveryConfigGenerationCadenceTypes>>?
  types;

  Map<String, Object?> encode() => {
    'frequency': ?frequency?.toTfJson(),
    if (types != null) 'types': [for (final e in types!) e.toTfJson()],
  };
}

/// `types` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigGenerationCadenceTypes
    implements TerraformEnum {
  newColumns('NEW_COLUMNS'),
  removedColumns('REMOVED_COLUMNS');

  const DataLossPreventionDiscoveryConfigGenerationCadenceTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.cloud_storage_target` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudStorageTarget {
  const DataLossPreventionDiscoveryConfigCloudStorageTarget({
    this.conditions,
    this.disabled,
    required this.filter,
    this.generationCadence,
  });

  final DataLossPreventionDiscoveryConfigCloudStorageTargetConditions?
  conditions;

  final DataLossPreventionDiscoveryConfigDisabled? disabled;

  final DataLossPreventionDiscoveryConfigCloudStorageTargetFilter filter;

  final DataLossPreventionDiscoveryConfigCloudStorageTargetGenerationCadence?
  generationCadence;

  Map<String, Object?> encode() => {
    'conditions': ?conditions?.encode(),
    'disabled': ?disabled?.encode(),
    'filter': filter.encode(),
    'generation_cadence': ?generationCadence?.encode(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudStorageTargetConditions {
  const DataLossPreventionDiscoveryConfigCloudStorageTargetConditions({
    this.createdAfter,
    this.minAge,
    this.cloudStorageConditions,
  });

  final TfArg<String>? createdAfter;

  final TfArg<String>? minAge;

  final DataLossPreventionDiscoveryConfigCloudStorageConditions?
  cloudStorageConditions;

  Map<String, Object?> encode() => {
    'created_after': ?createdAfter?.toTfJson(),
    'min_age': ?minAge?.toTfJson(),
    'cloud_storage_conditions': ?cloudStorageConditions?.encode(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.conditions.cloud_storage_conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudStorageConditions {
  const DataLossPreventionDiscoveryConfigCloudStorageConditions({
    this.includedBucketAttributes,
    this.includedObjectAttributes,
  });

  final List<TfArg<DataLossPreventionDiscoveryConfigIncludedBucketAttributes>>?
  includedBucketAttributes;

  final List<TfArg<DataLossPreventionDiscoveryConfigIncludedObjectAttributes>>?
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
enum DataLossPreventionDiscoveryConfigIncludedBucketAttributes
    implements TerraformEnum {
  allSupportedBuckets('ALL_SUPPORTED_BUCKETS'),
  autoclassDisabled('AUTOCLASS_DISABLED'),
  autoclassEnabled('AUTOCLASS_ENABLED');

  const DataLossPreventionDiscoveryConfigIncludedBucketAttributes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `included_object_attributes` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigIncludedObjectAttributes
    implements TerraformEnum {
  allSupportedObjects('ALL_SUPPORTED_OBJECTS'),
  standard('STANDARD'),
  nearline('NEARLINE'),
  coldline('COLDLINE'),
  archive('ARCHIVE'),
  regional('REGIONAL'),
  multiRegional('MULTI_REGIONAL'),
  durableReducedAvailability('DURABLE_REDUCED_AVAILABILITY');

  const DataLossPreventionDiscoveryConfigIncludedObjectAttributes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.cloud_storage_target.filter` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudStorageTargetFilter {
  const DataLossPreventionDiscoveryConfigCloudStorageTargetFilter({
    this.cloudStorageResourceReference,
    this.collection,
    this.others,
  });

  final DataLossPreventionDiscoveryConfigCloudStorageResourceReference?
  cloudStorageResourceReference;

  final DataLossPreventionDiscoveryConfigCloudStorageTargetCollection?
  collection;

  final DataLossPreventionDiscoveryConfigOthers? others;

  Map<String, Object?> encode() => {
    'cloud_storage_resource_reference': ?cloudStorageResourceReference
        ?.encode(),
    'collection': ?collection?.encode(),
    'others': ?others?.encode(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.cloud_storage_resource_reference` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudStorageResourceReference {
  const DataLossPreventionDiscoveryConfigCloudStorageResourceReference({
    this.bucketName,
    this.projectId,
  });

  final RefTo<GoogleStorageBucket>? bucketName;

  final TfArg<String>? projectId;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.encodeAs('name').toTfJson(),
    'project_id': ?projectId?.toTfJson(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.collection` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudStorageTargetCollection {
  const DataLossPreventionDiscoveryConfigCloudStorageTargetCollection({
    this.includeRegexes,
    this.includeTags,
  });

  final DataLossPreventionDiscoveryConfigCloudStorageTargetIncludeRegexes?
  includeRegexes;

  final DataLossPreventionDiscoveryConfigIncludeTags? includeTags;

  Map<String, Object?> encode() => {
    'include_regexes': ?includeRegexes?.encode(),
    'include_tags': ?includeTags?.encode(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.collection.include_regexes` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudStorageTargetIncludeRegexes {
  const DataLossPreventionDiscoveryConfigCloudStorageTargetIncludeRegexes({
    this.patterns,
  });

  final List<DataLossPreventionDiscoveryConfigCloudStorageTargetPatterns>?
  patterns;

  Map<String, Object?> encode() => {
    if (patterns != null) 'patterns': [for (final e in patterns!) e.encode()],
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.collection.include_regexes.patterns` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudStorageTargetPatterns {
  const DataLossPreventionDiscoveryConfigCloudStorageTargetPatterns({
    this.cloudStorageRegex,
  });

  final DataLossPreventionDiscoveryConfigCloudStorageRegex? cloudStorageRegex;

  Map<String, Object?> encode() => {
    'cloud_storage_regex': ?cloudStorageRegex?.encode(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.collection.include_regexes.patterns.cloud_storage_regex` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigCloudStorageRegex {
  const DataLossPreventionDiscoveryConfigCloudStorageRegex({
    this.bucketNameRegex,
    this.projectIdRegex,
  });

  final TfArg<String>? bucketNameRegex;

  final TfArg<String>? projectIdRegex;

  Map<String, Object?> encode() => {
    'bucket_name_regex': ?bucketNameRegex?.toTfJson(),
    'project_id_regex': ?projectIdRegex?.toTfJson(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.filter.collection.include_tags` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigIncludeTags {
  const DataLossPreventionDiscoveryConfigIncludeTags({this.tagFilters});

  final List<DataLossPreventionDiscoveryConfigTagFilters>? tagFilters;

  Map<String, Object?> encode() => {
    if (tagFilters != null)
      'tag_filters': [for (final e in tagFilters!) e.encode()],
  };
}

/// At most one of `namespaced_tag_value`, `namespaced_tag_key` on the `targets.cloud_storage_target.filter.collection.include_tags.tag_filters` block of `google_data_loss_prevention_discovery_config`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.namespacedTagValue(...)`.
sealed class DataLossPreventionDiscoveryConfigTagFilters {
  const DataLossPreventionDiscoveryConfigTagFilters();

  /// Sets `namespaced_tag_value`.
  const factory DataLossPreventionDiscoveryConfigTagFilters.namespacedTagValue(
    TfArg<String> namespacedTagValue,
  ) = DataLossPreventionDiscoveryConfigTagFiltersNamespacedTagValue;

  /// Sets `namespaced_tag_key`.
  const factory DataLossPreventionDiscoveryConfigTagFilters.namespacedTagKey(
    TfArg<String> namespacedTagKey,
  ) = DataLossPreventionDiscoveryConfigTagFiltersNamespacedTagKey;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [DataLossPreventionDiscoveryConfigTagFilters.namespacedTagValue] choice: sets `namespaced_tag_value`.
final class DataLossPreventionDiscoveryConfigTagFiltersNamespacedTagValue
    extends DataLossPreventionDiscoveryConfigTagFilters {
  const DataLossPreventionDiscoveryConfigTagFiltersNamespacedTagValue(
    this.namespacedTagValue,
  );

  final TfArg<String> namespacedTagValue;

  @override
  String get blockKey => 'namespaced_tag_value';

  @override
  Map<String, Object?> encode() => {
    'namespaced_tag_value': namespacedTagValue.toTfJson(),
  };
}

/// The [DataLossPreventionDiscoveryConfigTagFilters.namespacedTagKey] choice: sets `namespaced_tag_key`.
final class DataLossPreventionDiscoveryConfigTagFiltersNamespacedTagKey
    extends DataLossPreventionDiscoveryConfigTagFilters {
  const DataLossPreventionDiscoveryConfigTagFiltersNamespacedTagKey(
    this.namespacedTagKey,
  );

  final TfArg<String> namespacedTagKey;

  @override
  String get blockKey => 'namespaced_tag_key';

  @override
  Map<String, Object?> encode() => {
    'namespaced_tag_key': namespacedTagKey.toTfJson(),
  };
}

/// Typed helper for the `targets.cloud_storage_target.generation_cadence` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DataLossPreventionDiscoveryConfigCloudStorageTargetGenerationCadence {
  const DataLossPreventionDiscoveryConfigCloudStorageTargetGenerationCadence({
    this.refreshFrequency,
    this.inspectTemplateModifiedCadence,
  });

  final TfArg<DataLossPreventionDiscoveryConfigRefreshFrequency>?
  refreshFrequency;

  final DataLossPreventionDiscoveryConfigCadenceInspectTemplateModifiedCadence?
  inspectTemplateModifiedCadence;

  Map<String, Object?> encode() => {
    'refresh_frequency': ?refreshFrequency?.toTfJson(),
    'inspect_template_modified_cadence': ?inspectTemplateModifiedCadence
        ?.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigOtherCloudTarget {
  const DataLossPreventionDiscoveryConfigOtherCloudTarget({
    this.conditions,
    this.dataSourceType,
    this.disabled,
    required this.filter,
    this.generationCadence,
  });

  final DataLossPreventionDiscoveryConfigOtherCloudTargetConditions? conditions;

  final DataLossPreventionDiscoveryConfigDataSourceType? dataSourceType;

  final DataLossPreventionDiscoveryConfigDisabled? disabled;

  final DataLossPreventionDiscoveryConfigOtherCloudTargetFilter filter;

  final DataLossPreventionDiscoveryConfigCloudStorageTargetGenerationCadence?
  generationCadence;

  Map<String, Object?> encode() => {
    'conditions': ?conditions?.encode(),
    'data_source_type': ?dataSourceType?.encode(),
    'disabled': ?disabled?.encode(),
    'filter': filter.encode(),
    'generation_cadence': ?generationCadence?.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigOtherCloudTargetConditions {
  const DataLossPreventionDiscoveryConfigOtherCloudTargetConditions({
    this.minAge,
    this.amazonS3BucketConditions,
  });

  final TfArg<String>? minAge;

  final DataLossPreventionDiscoveryConfigAmazonS3BucketConditions?
  amazonS3BucketConditions;

  Map<String, Object?> encode() => {
    'min_age': ?minAge?.toTfJson(),
    'amazon_s3_bucket_conditions': ?amazonS3BucketConditions?.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.conditions.amazon_s3_bucket_conditions` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigAmazonS3BucketConditions {
  const DataLossPreventionDiscoveryConfigAmazonS3BucketConditions({
    this.bucketTypes,
    this.objectStorageClasses,
  });

  final List<TfArg<DataLossPreventionDiscoveryConfigBucketTypes>>? bucketTypes;

  final List<TfArg<DataLossPreventionDiscoveryConfigObjectStorageClasses>>?
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
enum DataLossPreventionDiscoveryConfigBucketTypes implements TerraformEnum {
  typeAllSupported('TYPE_ALL_SUPPORTED'),
  typeGeneralPurpose('TYPE_GENERAL_PURPOSE');

  const DataLossPreventionDiscoveryConfigBucketTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// `object_storage_classes` — derived from the provider schema description.
enum DataLossPreventionDiscoveryConfigObjectStorageClasses
    implements TerraformEnum {
  allSupportedClasses('ALL_SUPPORTED_CLASSES'),
  standard('STANDARD'),
  standardInfrequentAccess('STANDARD_INFREQUENT_ACCESS'),
  glacierInstantRetrieval('GLACIER_INSTANT_RETRIEVAL'),
  intelligentTiering('INTELLIGENT_TIERING');

  const DataLossPreventionDiscoveryConfigObjectStorageClasses(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `targets.other_cloud_target.data_source_type` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigDataSourceType {
  const DataLossPreventionDiscoveryConfigDataSourceType({this.dataSource});

  final TfArg<String>? dataSource;

  Map<String, Object?> encode() => {'data_source': ?dataSource?.toTfJson()};
}

/// Typed helper for the `targets.other_cloud_target.filter` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigOtherCloudTargetFilter {
  const DataLossPreventionDiscoveryConfigOtherCloudTargetFilter({
    this.collection,
    this.others,
    this.singleResource,
  });

  final DataLossPreventionDiscoveryConfigOtherCloudTargetCollection? collection;

  final DataLossPreventionDiscoveryConfigOthers? others;

  final DataLossPreventionDiscoveryConfigSingleResource? singleResource;

  Map<String, Object?> encode() => {
    'collection': ?collection?.encode(),
    'others': ?others?.encode(),
    'single_resource': ?singleResource?.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.collection` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigOtherCloudTargetCollection {
  const DataLossPreventionDiscoveryConfigOtherCloudTargetCollection({
    this.includeRegexes,
  });

  final DataLossPreventionDiscoveryConfigOtherCloudTargetIncludeRegexes?
  includeRegexes;

  Map<String, Object?> encode() => {
    'include_regexes': ?includeRegexes?.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.collection.include_regexes` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigOtherCloudTargetIncludeRegexes {
  const DataLossPreventionDiscoveryConfigOtherCloudTargetIncludeRegexes({
    this.patterns,
  });

  final List<DataLossPreventionDiscoveryConfigOtherCloudTargetPatterns>?
  patterns;

  Map<String, Object?> encode() => {
    if (patterns != null) 'patterns': [for (final e in patterns!) e.encode()],
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.collection.include_regexes.patterns` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigOtherCloudTargetPatterns {
  const DataLossPreventionDiscoveryConfigOtherCloudTargetPatterns({
    this.amazonS3BucketRegex,
  });

  final DataLossPreventionDiscoveryConfigAmazonS3BucketRegex?
  amazonS3BucketRegex;

  Map<String, Object?> encode() => {
    'amazon_s3_bucket_regex': ?amazonS3BucketRegex?.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.collection.include_regexes.patterns.amazon_s3_bucket_regex` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigAmazonS3BucketRegex {
  const DataLossPreventionDiscoveryConfigAmazonS3BucketRegex({
    this.bucketNameRegex,
    this.awsAccountRegex,
  });

  final TfArg<String>? bucketNameRegex;

  final DataLossPreventionDiscoveryConfigAwsAccountRegex? awsAccountRegex;

  Map<String, Object?> encode() => {
    'bucket_name_regex': ?bucketNameRegex?.toTfJson(),
    'aws_account_regex': ?awsAccountRegex?.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.collection.include_regexes.patterns.amazon_s3_bucket_regex.aws_account_regex` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigAwsAccountRegex {
  const DataLossPreventionDiscoveryConfigAwsAccountRegex({this.accountIdRegex});

  final TfArg<String>? accountIdRegex;

  Map<String, Object?> encode() => {
    'account_id_regex': ?accountIdRegex?.toTfJson(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.single_resource` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigSingleResource {
  const DataLossPreventionDiscoveryConfigSingleResource({this.amazonS3Bucket});

  final DataLossPreventionDiscoveryConfigAmazonS3Bucket? amazonS3Bucket;

  Map<String, Object?> encode() => {
    'amazon_s3_bucket': ?amazonS3Bucket?.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.single_resource.amazon_s3_bucket` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigAmazonS3Bucket {
  const DataLossPreventionDiscoveryConfigAmazonS3Bucket({
    this.bucketName,
    this.awsAccount,
  });

  final TfArg<String>? bucketName;

  final DataLossPreventionDiscoveryConfigAwsAccount? awsAccount;

  Map<String, Object?> encode() => {
    'bucket_name': ?bucketName?.toTfJson(),
    'aws_account': ?awsAccount?.encode(),
  };
}

/// Typed helper for the `targets.other_cloud_target.filter.single_resource.amazon_s3_bucket.aws_account` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigAwsAccount {
  const DataLossPreventionDiscoveryConfigAwsAccount({this.accountId});

  final TfArg<String>? accountId;

  Map<String, Object?> encode() => {'account_id': ?accountId?.toTfJson()};
}

/// Typed helper for the `targets.secrets_target` block of
/// `google_data_loss_prevention_discovery_config` (derived from provider schema).
@immutable
final class DataLossPreventionDiscoveryConfigSecretsTarget {
  const DataLossPreventionDiscoveryConfigSecretsTarget();

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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'inspect_templates': ?inspectTemplates,
           'location': location,
           'parent': parent,
           'status': ?status,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataLossPreventionDiscoveryConfig>`.
  RefTo<GoogleDataLossPreventionDiscoveryConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `inspect_templates` attribute.
  TfRef<List<String>> get inspectTemplates =>
      TfRef.attribute<List<String>>(this, 'inspect_templates');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
