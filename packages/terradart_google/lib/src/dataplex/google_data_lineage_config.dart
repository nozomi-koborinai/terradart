// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_lineage_config`.
const Set<String> _googleDataLineageConfigSensitive = <String>{};

/// Typed helper for the `ingestion` block of
/// `google_data_lineage_config` (derived from provider schema).
@immutable
final class DataLineageConfigIngestion {
  const DataLineageConfigIngestion({required this.rule});

  final List<DataLineageConfigIngestionRule> rule;

  Map<String, Object?> encode() => {
    'rule': [for (final e in rule) e.encode()],
  };
}

/// Typed helper for the `ingestion.rule` block of
/// `google_data_lineage_config` (derived from provider schema).
@immutable
final class DataLineageConfigIngestionRule {
  const DataLineageConfigIngestionRule({
    required this.integrationSelector,
    required this.lineageEnablement,
  });

  final DataLineageConfigIngestionRuleIntegrationSelector integrationSelector;

  final DataLineageConfigIngestionRuleLineageEnablement lineageEnablement;

  Map<String, Object?> encode() => {
    'integration_selector': integrationSelector.encode(),
    'lineage_enablement': lineageEnablement.encode(),
  };
}

/// Typed helper for the `ingestion.rule.integration_selector` block of
/// `google_data_lineage_config` (derived from provider schema).
@immutable
final class DataLineageConfigIngestionRuleIntegrationSelector {
  const DataLineageConfigIngestionRuleIntegrationSelector({
    required this.integration,
  });

  final TfArg<DataLineageConfigIngestionRuleIntegrationSelectorIntegration>
  integration;

  Map<String, Object?> encode() => {'integration': integration.toTfJson()};
}

/// `integration` — derived from the provider schema description.
enum DataLineageConfigIngestionRuleIntegrationSelectorIntegration
    implements TerraformEnum {
  dataproc('DATAPROC'),
  lookerCore('LOOKER_CORE');

  const DataLineageConfigIngestionRuleIntegrationSelectorIntegration(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `ingestion.rule.lineage_enablement` block of
/// `google_data_lineage_config` (derived from provider schema).
@immutable
final class DataLineageConfigIngestionRuleLineageEnablement {
  const DataLineageConfigIngestionRuleLineageEnablement({
    required this.enabled,
  });

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {'enabled': enabled.toTfJson()};
}

/// Factory wrapper for `google_data_lineage_config`.
///
/// Configuration for Data Lineage.
///
/// Defines configuration options for Lineage customers to control behavior of
/// lineage systems.
///
/// Project/folder/org **Data Lineage config** — controls lineage ingestion
/// enablement for integrations such as Dataproc.
///
/// This is a singleton `PATCH` resource per parent + location. Prefer a
/// project parent (`projects/<id>`) and `location: global` for smoke stacks.
/// Enabling ingestion does not itself provision Dataproc or bill Dataplex
/// Metadata Storage; those SKUs apply when lineage data is produced/stored.
///
/// Enable `datalineage.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleDataLineageConfig(
///   localName: 'lineage',
///   parent: TfArg.literal('projects/<project-id>'),
///   location: TfArg.literal('global'),
///   ingestion: DataLineageConfigIngestion(
///     rule: [
///       DataLineageConfigIngestionRule(
///         integrationSelector: DataLineageConfigIngestionRuleIntegrationSelector(
///           integration: TfArg.literal(
///             DataLineageConfigIngestionRuleIntegrationSelectorIntegration.dataproc,
///           ),
///         ),
///         lineageEnablement: DataLineageConfigIngestionRuleLineageEnablement(
///           enabled: TfArg.literal(true),
///         ),
///       ),
///     ],
///   ),
/// );
/// ```
final class GoogleDataLineageConfig extends Resource {
  static const String tfType = 'google_data_lineage_config';

  GoogleDataLineageConfig({
    required super.localName,
    required TfArg<String> parent,
    required TfArg<String> location,
    required DataLineageConfigIngestion ingestion,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'location': location,
           'ingestion': TfArg.literal(ingestion.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataLineageConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
