// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_alert_rule_anomaly_duplicate`.
const Set<String> _azurermSentinelAlertRuleAnomalyDuplicateSensitive =
    <String>{};

/// Sentinel Alert Rule Anomaly Duplicate enum for `mode`.
extension type const SentinelAlertRuleAnomalyDuplicateMode._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleAnomalyDuplicateMode.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleAnomalyDuplicateMode.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleAnomalyDuplicateMode.arg(TfArg<String> arg)
    : this._(arg);

  static const flighting = SentinelAlertRuleAnomalyDuplicateMode._(
    TfArgLiteral('Flighting'),
  );
  static const production = SentinelAlertRuleAnomalyDuplicateMode._(
    TfArgLiteral('Production'),
  );

  static const List<SentinelAlertRuleAnomalyDuplicateMode> values = [
    flighting,
    production,
  ];
}

/// Typed helper for the `multi_select_observation` block of
/// `azurerm_sentinel_alert_rule_anomaly_duplicate` (derived from provider schema).
@immutable
final class SentinelAlertRuleAnomalyDuplicateMultiSelectObservation {
  const SentinelAlertRuleAnomalyDuplicateMultiSelectObservation({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `prioritized_exclude_observation` block of
/// `azurerm_sentinel_alert_rule_anomaly_duplicate` (derived from provider schema).
@immutable
final class SentinelAlertRuleAnomalyDuplicatePrioritizedExcludeObservation {
  const SentinelAlertRuleAnomalyDuplicatePrioritizedExcludeObservation({
    this.exclude,
    required this.name,
    this.prioritize,
  });

  final TfArg<String>? exclude;

  final TfArg<String> name;

  final TfArg<String>? prioritize;

  @internal
  Map<String, Object?> encode() => {
    'exclude': ?exclude?.toTfJson(),
    'name': name.toTfJson(),
    'prioritize': ?prioritize?.toTfJson(),
  };
}

/// Typed helper for the `single_select_observation` block of
/// `azurerm_sentinel_alert_rule_anomaly_duplicate` (derived from provider schema).
@immutable
final class SentinelAlertRuleAnomalyDuplicateSingleSelectObservation {
  const SentinelAlertRuleAnomalyDuplicateSingleSelectObservation({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `threshold_observation` block of
/// `azurerm_sentinel_alert_rule_anomaly_duplicate` (derived from provider schema).
@immutable
final class SentinelAlertRuleAnomalyDuplicateThresholdObservation {
  const SentinelAlertRuleAnomalyDuplicateThresholdObservation({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_sentinel_alert_rule_anomaly_duplicate`.
final class AzurermSentinelAlertRuleAnomalyDuplicate extends Resource {
  static const String tfType = 'azurerm_sentinel_alert_rule_anomaly_duplicate';

  AzurermSentinelAlertRuleAnomalyDuplicate(
    super.localName, {
    required TfArg<String> builtInRuleId,
    required TfArg<String> displayName,
    required TfArg<bool> enabled,
    required TfArg<String> logAnalyticsWorkspaceId,
    required SentinelAlertRuleAnomalyDuplicateMode mode,
    List<SentinelAlertRuleAnomalyDuplicateMultiSelectObservation>?
    multiSelectObservation,
    List<SentinelAlertRuleAnomalyDuplicatePrioritizedExcludeObservation>?
    prioritizedExcludeObservation,
    List<SentinelAlertRuleAnomalyDuplicateSingleSelectObservation>?
    singleSelectObservation,
    List<SentinelAlertRuleAnomalyDuplicateThresholdObservation>?
    thresholdObservation,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'built_in_rule_id': builtInRuleId,
           'display_name': displayName,
           'enabled': enabled,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'mode': mode,
           if (multiSelectObservation != null)
             'multi_select_observation': TfArg.literal([
               for (final e in multiSelectObservation) e.encode(),
             ]),
           if (prioritizedExcludeObservation != null)
             'prioritized_exclude_observation': TfArg.literal([
               for (final e in prioritizedExcludeObservation) e.encode(),
             ]),
           if (singleSelectObservation != null)
             'single_select_observation': TfArg.literal([
               for (final e in singleSelectObservation) e.encode(),
             ]),
           if (thresholdObservation != null)
             'threshold_observation': TfArg.literal([
               for (final e in thresholdObservation) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelAlertRuleAnomalyDuplicateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelAlertRuleAnomalyDuplicate>`.
  RefTo<AzurermSentinelAlertRuleAnomalyDuplicate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `anomaly_settings_version` attribute.
  TfRef<num> get anomalySettingsVersion =>
      TfRef.attribute<num>(this, 'anomaly_settings_version');

  /// Reference to `anomaly_version` attribute.
  TfRef<String> get anomalyVersion =>
      TfRef.attribute<String>(this, 'anomaly_version');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `is_default_settings` attribute.
  TfRef<bool> get isDefaultSettings =>
      TfRef.attribute<bool>(this, 'is_default_settings');

  /// Reference to `required_data_connector` attribute.
  TfRef<List<Map<String, Object?>>> get requiredDataConnector =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'required_data_connector',
      );

  /// Reference to `settings_definition_id` attribute.
  TfRef<String> get settingsDefinitionId =>
      TfRef.attribute<String>(this, 'settings_definition_id');

  /// Reference to `tactics` attribute.
  TfRef<List<String>> get tactics =>
      TfRef.attribute<List<String>>(this, 'tactics');

  /// Reference to `techniques` attribute.
  TfRef<List<String>> get techniques =>
      TfRef.attribute<List<String>>(this, 'techniques');

  /// Reference to `built_in_rule_id` attribute.
  TfRef<String> get builtInRuleId =>
      TfRef.attribute<String>(this, 'built_in_rule_id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');
}
