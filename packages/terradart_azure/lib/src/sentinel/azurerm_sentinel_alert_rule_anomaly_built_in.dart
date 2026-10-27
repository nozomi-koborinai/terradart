// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_alert_rule_anomaly_built_in`.
const Set<String> _azurermSentinelAlertRuleAnomalyBuiltInSensitive = <String>{};

/// Sentinel Alert Rule Anomaly Built In enum for `mode`.
extension type const SentinelAlertRuleAnomalyBuiltInMode._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleAnomalyBuiltInMode.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleAnomalyBuiltInMode.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleAnomalyBuiltInMode.arg(TfArg<String> arg)
    : this._(arg);

  static const flighting = SentinelAlertRuleAnomalyBuiltInMode._(
    TfArgLiteral('Flighting'),
  );
  static const production = SentinelAlertRuleAnomalyBuiltInMode._(
    TfArgLiteral('Production'),
  );

  static const List<SentinelAlertRuleAnomalyBuiltInMode> values = [
    flighting,
    production,
  ];
}

/// Exactly one of `display_name`, `name` on `azurerm_sentinel_alert_rule_anomaly_built_in`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.displayName(...)`.
sealed class SentinelAlertRuleAnomalyBuiltInIdentifier {
  const SentinelAlertRuleAnomalyBuiltInIdentifier();

  /// Sets `display_name`.
  const factory SentinelAlertRuleAnomalyBuiltInIdentifier.displayName(
    TfArg<String> displayName,
  ) = SentinelAlertRuleAnomalyBuiltInIdentifierDisplayName;

  /// Sets `name`.
  const factory SentinelAlertRuleAnomalyBuiltInIdentifier.name(
    TfArg<String> name,
  ) = SentinelAlertRuleAnomalyBuiltInIdentifierName;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SentinelAlertRuleAnomalyBuiltInIdentifier.displayName] choice: sets `display_name`.
final class SentinelAlertRuleAnomalyBuiltInIdentifierDisplayName
    extends SentinelAlertRuleAnomalyBuiltInIdentifier {
  const SentinelAlertRuleAnomalyBuiltInIdentifierDisplayName(this.displayName);

  final TfArg<String> displayName;

  @internal
  @override
  String get blockKey => 'display_name';

  @internal
  @override
  Map<String, Object?> encode() => {'display_name': displayName.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'display_name': displayName};
}

/// The [SentinelAlertRuleAnomalyBuiltInIdentifier.name] choice: sets `name`.
final class SentinelAlertRuleAnomalyBuiltInIdentifierName
    extends SentinelAlertRuleAnomalyBuiltInIdentifier {
  const SentinelAlertRuleAnomalyBuiltInIdentifierName(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// Factory wrapper for `azurerm_sentinel_alert_rule_anomaly_built_in`.
final class AzurermSentinelAlertRuleAnomalyBuiltIn extends Resource {
  static const String tfType = 'azurerm_sentinel_alert_rule_anomaly_built_in';

  AzurermSentinelAlertRuleAnomalyBuiltIn(
    super.localName, {
    required SentinelAlertRuleAnomalyBuiltInIdentifier identifier,
    required TfArg<bool> enabled,
    required TfArg<String> logAnalyticsWorkspaceId,
    required SentinelAlertRuleAnomalyBuiltInMode mode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...identifier.argMap,
           'enabled': enabled,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'mode': mode,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelAlertRuleAnomalyBuiltInSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelAlertRuleAnomalyBuiltIn>`.
  RefTo<AzurermSentinelAlertRuleAnomalyBuiltIn> get ref => RefTo.of(this);

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

  /// Reference to `multi_select_observation` attribute.
  TfRef<List<Map<String, Object?>>> get multiSelectObservation =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'multi_select_observation',
      );

  /// Reference to `prioritized_exclude_observation` attribute.
  TfRef<List<Map<String, Object?>>> get prioritizedExcludeObservation =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'prioritized_exclude_observation',
      );

  /// Reference to `required_data_connector` attribute.
  TfRef<List<Map<String, Object?>>> get requiredDataConnector =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'required_data_connector',
      );

  /// Reference to `settings_definition_id` attribute.
  TfRef<String> get settingsDefinitionId =>
      TfRef.attribute<String>(this, 'settings_definition_id');

  /// Reference to `single_select_observation` attribute.
  TfRef<List<Map<String, Object?>>> get singleSelectObservation =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'single_select_observation',
      );

  /// Reference to `tactics` attribute.
  TfRef<List<String>> get tactics =>
      TfRef.attribute<List<String>>(this, 'tactics');

  /// Reference to `techniques` attribute.
  TfRef<List<String>> get techniques =>
      TfRef.attribute<List<String>>(this, 'techniques');

  /// Reference to `threshold_observation` attribute.
  TfRef<List<Map<String, Object?>>> get thresholdObservation =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'threshold_observation',
      );

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
