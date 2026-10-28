// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_alert_rule_template`.
const Set<String> _azurermSentinelAlertRuleTemplateSensitive = <String>{};

/// Exactly one of `display_name`, `name` on `data.azurerm_sentinel_alert_rule_template`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.displayName(...)`.
sealed class DataSentinelAlertRuleTemplateIdentifier {
  const DataSentinelAlertRuleTemplateIdentifier();

  /// Sets `display_name`.
  const factory DataSentinelAlertRuleTemplateIdentifier.displayName(
    TfArg<String> displayName,
  ) = DataSentinelAlertRuleTemplateIdentifierDisplayName;

  /// Sets `name`.
  const factory DataSentinelAlertRuleTemplateIdentifier.name(
    TfArg<String> name,
  ) = DataSentinelAlertRuleTemplateIdentifierName;

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

/// The [DataSentinelAlertRuleTemplateIdentifier.displayName] choice: sets `display_name`.
final class DataSentinelAlertRuleTemplateIdentifierDisplayName
    extends DataSentinelAlertRuleTemplateIdentifier {
  const DataSentinelAlertRuleTemplateIdentifierDisplayName(this.displayName);

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

/// The [DataSentinelAlertRuleTemplateIdentifier.name] choice: sets `name`.
final class DataSentinelAlertRuleTemplateIdentifierName
    extends DataSentinelAlertRuleTemplateIdentifier {
  const DataSentinelAlertRuleTemplateIdentifierName(this.name);

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

/// Factory wrapper for `azurerm_sentinel_alert_rule_template`.
final class DataAzurermSentinelAlertRuleTemplate extends Data {
  static const String tfType = 'azurerm_sentinel_alert_rule_template';

  DataAzurermSentinelAlertRuleTemplate(
    super.localName, {
    required DataSentinelAlertRuleTemplateIdentifier identifier,
    required TfArg<String> logAnalyticsWorkspaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...identifier.argMap,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSentinelAlertRuleTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `nrt_template` attribute.
  TfRef<List<Map<String, Object?>>> get nrtTemplate =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'nrt_template');

  /// Reference to `scheduled_template` attribute.
  TfRef<List<Map<String, Object?>>> get scheduledTemplate =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scheduled_template');

  /// Reference to `security_incident_template` attribute.
  TfRef<List<Map<String, Object?>>> get securityIncidentTemplate =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'security_incident_template',
      );

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');
}
