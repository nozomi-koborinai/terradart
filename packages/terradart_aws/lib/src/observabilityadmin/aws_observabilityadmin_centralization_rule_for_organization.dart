// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_observabilityadmin_centralization_rule_for_organization`.
const Set<String>
_awsObservabilityadminCentralizationRuleForOrganizationSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_observabilityadmin_centralization_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminCentralizationRuleForOrganizationRule {
  const ObservabilityadminCentralizationRuleForOrganizationRule({
    this.destination,
    this.source,
  });

  final List<
    ObservabilityadminCentralizationRuleForOrganizationRuleDestination
  >?
  destination;

  final List<ObservabilityadminCentralizationRuleForOrganizationRuleSource>?
  source;

  Map<String, Object?> encode() => {
    if (destination != null)
      'destination': [for (final e in destination!) e.encode()],
    if (source != null) 'source': [for (final e in source!) e.encode()],
  };
}

/// Typed helper for the `rule.destination` block of
/// `aws_observabilityadmin_centralization_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminCentralizationRuleForOrganizationRuleDestination {
  const ObservabilityadminCentralizationRuleForOrganizationRuleDestination({
    required this.account,
    required this.region,
    this.destinationLogsConfiguration,
    this.destinationMetricsConfiguration,
  });

  final TfArg<String> account;

  final TfArg<String> region;

  final List<
    ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration
  >?
  destinationLogsConfiguration;

  final List<
    ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfiguration
  >?
  destinationMetricsConfiguration;

  Map<String, Object?> encode() => {
    'account': account.toTfJson(),
    'region': region.toTfJson(),
    if (destinationLogsConfiguration != null)
      'destination_logs_configuration': [
        for (final e in destinationLogsConfiguration!) e.encode(),
      ],
    if (destinationMetricsConfiguration != null)
      'destination_metrics_configuration': [
        for (final e in destinationMetricsConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `rule.destination.destination_logs_configuration` block of
/// `aws_observabilityadmin_centralization_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration {
  const ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration({
    this.backupConfiguration,
    this.logGroupNameConfiguration,
    this.logsEncryptionConfiguration,
    this.tagPropagationConfiguration,
  });

  final List<
    ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration
  >?
  backupConfiguration;

  final List<
    ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogGroupNameConfiguration
  >?
  logGroupNameConfiguration;

  final List<
    ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration
  >?
  logsEncryptionConfiguration;

  final List<
    ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationTagPropagationConfiguration
  >?
  tagPropagationConfiguration;

  Map<String, Object?> encode() => {
    if (backupConfiguration != null)
      'backup_configuration': [
        for (final e in backupConfiguration!) e.encode(),
      ],
    if (logGroupNameConfiguration != null)
      'log_group_name_configuration': [
        for (final e in logGroupNameConfiguration!) e.encode(),
      ],
    if (logsEncryptionConfiguration != null)
      'logs_encryption_configuration': [
        for (final e in logsEncryptionConfiguration!) e.encode(),
      ],
    if (tagPropagationConfiguration != null)
      'tag_propagation_configuration': [
        for (final e in tagPropagationConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `rule.destination.destination_logs_configuration.backup_configuration` block of
/// `aws_observabilityadmin_centralization_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration {
  const ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration({
    this.kmsKeyArn,
    this.region,
  });

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? region;

  Map<String, Object?> encode() => {
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.encodeAs('arn').toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
  };
}

/// Typed helper for the `rule.destination.destination_logs_configuration.log_group_name_configuration` block of
/// `aws_observabilityadmin_centralization_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogGroupNameConfiguration {
  const ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogGroupNameConfiguration({
    required this.logGroupNamePattern,
  });

  final TfArg<String> logGroupNamePattern;

  Map<String, Object?> encode() => {
    'log_group_name_pattern': logGroupNamePattern.toTfJson(),
  };
}

/// Typed helper for the `rule.destination.destination_logs_configuration.logs_encryption_configuration` block of
/// `aws_observabilityadmin_centralization_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration {
  const ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration({
    this.encryptionConflictResolutionStrategy,
    this.encryptionScope,
    required this.encryptionStrategy,
    this.kmsKeyArn,
  });

  final TfArg<
    ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfigurationEncryptionConflictResolutionStrategy
  >?
  encryptionConflictResolutionStrategy;

  final TfArg<
    ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfigurationEncryptionScope
  >?
  encryptionScope;

  final TfArg<
    ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfigurationEncryptionStrategy
  >
  encryptionStrategy;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  Map<String, Object?> encode() => {
    if (encryptionConflictResolutionStrategy != null)
      'encryption_conflict_resolution_strategy':
          encryptionConflictResolutionStrategy!.toTfJson(),
    if (encryptionScope != null)
      'encryption_scope': encryptionScope!.toTfJson(),
    'encryption_strategy': encryptionStrategy.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.encodeAs('arn').toTfJson(),
  };
}

/// `encryption_conflict_resolution_strategy` — derived from the provider schema description.
enum ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfigurationEncryptionConflictResolutionStrategy
    implements TerraformEnum {
  allow('ALLOW'),
  skip('SKIP');

  const ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfigurationEncryptionConflictResolutionStrategy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `encryption_scope` — derived from the provider schema description.
enum ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfigurationEncryptionScope
    implements TerraformEnum {
  encryptedSourceOnly('ENCRYPTED_SOURCE_ONLY'),
  newDestinationLogGroups('NEW_DESTINATION_LOG_GROUPS');

  const ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfigurationEncryptionScope(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `encryption_strategy` — derived from the provider schema description.
enum ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfigurationEncryptionStrategy
    implements TerraformEnum {
  customerManaged('CUSTOMER_MANAGED'),
  awsOwned('AWS_OWNED');

  const ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfigurationEncryptionStrategy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.destination.destination_logs_configuration.tag_propagation_configuration` block of
/// `aws_observabilityadmin_centralization_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationTagPropagationConfiguration {
  const ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationTagPropagationConfiguration({
    required this.destinationRoleArn,
    this.tagConflictResolutionStrategy,
  });

  final TfArg<String> destinationRoleArn;

  final TfArg<
    ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationTagPropagationConfigurationTagConflictResolutionStrategy
  >?
  tagConflictResolutionStrategy;

  Map<String, Object?> encode() => {
    'destination_role_arn': destinationRoleArn.toTfJson(),
    if (tagConflictResolutionStrategy != null)
      'tag_conflict_resolution_strategy': tagConflictResolutionStrategy!
          .toTfJson(),
  };
}

/// `tag_conflict_resolution_strategy` — derived from the provider schema description.
enum ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationTagPropagationConfigurationTagConflictResolutionStrategy
    implements TerraformEnum {
  inSync('IN_SYNC'),
  addOnly('ADD_ONLY'),
  updateSync('UPDATE_SYNC');

  const ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationTagPropagationConfigurationTagConflictResolutionStrategy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.destination.destination_metrics_configuration` block of
/// `aws_observabilityadmin_centralization_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfiguration {
  const ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfiguration({
    this.backupConfiguration,
  });

  final List<
    ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfigurationBackupConfiguration
  >?
  backupConfiguration;

  Map<String, Object?> encode() => {
    if (backupConfiguration != null)
      'backup_configuration': [
        for (final e in backupConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `rule.destination.destination_metrics_configuration.backup_configuration` block of
/// `aws_observabilityadmin_centralization_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfigurationBackupConfiguration {
  const ObservabilityadminCentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfigurationBackupConfiguration({
    required this.region,
  });

  final TfArg<String> region;

  Map<String, Object?> encode() => {'region': region.toTfJson()};
}

/// Typed helper for the `rule.source` block of
/// `aws_observabilityadmin_centralization_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminCentralizationRuleForOrganizationRuleSource {
  const ObservabilityadminCentralizationRuleForOrganizationRuleSource({
    required this.regions,
    required this.scope,
    this.sourceLogsConfiguration,
    this.sourceMetricsConfiguration,
  });

  final TfArg<List<Object?>> regions;

  final TfArg<String> scope;

  final List<
    ObservabilityadminCentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration
  >?
  sourceLogsConfiguration;

  final List<
    ObservabilityadminCentralizationRuleForOrganizationRuleSourceSourceMetricsConfiguration
  >?
  sourceMetricsConfiguration;

  Map<String, Object?> encode() => {
    'regions': regions.toTfJson(),
    'scope': scope.toTfJson(),
    if (sourceLogsConfiguration != null)
      'source_logs_configuration': [
        for (final e in sourceLogsConfiguration!) e.encode(),
      ],
    if (sourceMetricsConfiguration != null)
      'source_metrics_configuration': [
        for (final e in sourceMetricsConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `rule.source.source_logs_configuration` block of
/// `aws_observabilityadmin_centralization_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminCentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration {
  const ObservabilityadminCentralizationRuleForOrganizationRuleSourceSourceLogsConfiguration({
    this.dataSourceSelectionCriteria,
    required this.encryptedLogGroupStrategy,
    this.logGroupSelectionCriteria,
  });

  final TfArg<String>? dataSourceSelectionCriteria;

  final TfArg<
    ObservabilityadminCentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationEncryptedLogGroupStrategy
  >
  encryptedLogGroupStrategy;

  final TfArg<String>? logGroupSelectionCriteria;

  Map<String, Object?> encode() => {
    if (dataSourceSelectionCriteria != null)
      'data_source_selection_criteria': dataSourceSelectionCriteria!.toTfJson(),
    'encrypted_log_group_strategy': encryptedLogGroupStrategy.toTfJson(),
    if (logGroupSelectionCriteria != null)
      'log_group_selection_criteria': logGroupSelectionCriteria!.toTfJson(),
  };
}

/// `encrypted_log_group_strategy` — derived from the provider schema description.
enum ObservabilityadminCentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationEncryptedLogGroupStrategy
    implements TerraformEnum {
  allow('ALLOW'),
  skip('SKIP');

  const ObservabilityadminCentralizationRuleForOrganizationRuleSourceSourceLogsConfigurationEncryptedLogGroupStrategy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.source.source_metrics_configuration` block of
/// `aws_observabilityadmin_centralization_rule_for_organization` (derived from provider schema).
@immutable
final class ObservabilityadminCentralizationRuleForOrganizationRuleSourceSourceMetricsConfiguration {
  const ObservabilityadminCentralizationRuleForOrganizationRuleSourceSourceMetricsConfiguration({
    required this.metricsSelectionCriteria,
  });

  final TfArg<String> metricsSelectionCriteria;

  Map<String, Object?> encode() => {
    'metrics_selection_criteria': metricsSelectionCriteria.toTfJson(),
  };
}

/// Factory wrapper for `aws_observabilityadmin_centralization_rule_for_organization`.
final class AwsObservabilityadminCentralizationRuleForOrganization
    extends Resource {
  static const String tfType =
      'aws_observabilityadmin_centralization_rule_for_organization';

  AwsObservabilityadminCentralizationRuleForOrganization({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> ruleName,
    TfArg<Map<String, String>>? tags,
    List<ObservabilityadminCentralizationRuleForOrganizationRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'rule_name': ruleName,
           if (tags != null) 'tags': tags,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsObservabilityadminCentralizationRuleForOrganizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsObservabilityadminCentralizationRuleForOrganization>`.
  RefTo<AwsObservabilityadminCentralizationRuleForOrganization> get ref =>
      RefTo.of(this);

  /// Reference to `rule_arn` attribute.
  TfRef<String> get ruleArn => TfRef.attribute<String>(this, 'rule_arn');

  /// Reference to `tag_propagation_failure_reason` attribute.
  TfRef<String> get tagPropagationFailureReason =>
      TfRef.attribute<String>(this, 'tag_propagation_failure_reason');

  /// Reference to `tag_propagation_status` attribute.
  TfRef<String> get tagPropagationStatus =>
      TfRef.attribute<String>(this, 'tag_propagation_status');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
