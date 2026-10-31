// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_alert_rule_fusion`.
const Set<String> _azurermSentinelAlertRuleFusionSensitive = <String>{};

/// Typed helper for the `source` block of
/// `azurerm_sentinel_alert_rule_fusion` (derived from provider schema).
@immutable
final class SentinelAlertRuleFusionSource {
  const SentinelAlertRuleFusionSource({
    this.enabled,
    required this.name,
    this.subType,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final List<SentinelAlertRuleFusionSubType>? subType;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    if (subType != null) 'sub_type': [for (final e in subType!) e.encode()],
  };
}

/// Typed helper for the `source.sub_type` block of
/// `azurerm_sentinel_alert_rule_fusion` (derived from provider schema).
@immutable
final class SentinelAlertRuleFusionSubType {
  const SentinelAlertRuleFusionSubType({
    this.enabled,
    required this.name,
    required this.severitiesAllowed,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final EnumList<SentinelAlertRuleFusionSeveritiesAllowed> severitiesAllowed;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    'severities_allowed': severitiesAllowed.toTfJson(),
  };
}

/// `severities_allowed` — derived from the provider schema description.
extension type const SentinelAlertRuleFusionSeveritiesAllowed._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleFusionSeveritiesAllowed.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleFusionSeveritiesAllowed.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleFusionSeveritiesAllowed.arg(TfArg<String> arg)
    : this._(arg);

  static const high = SentinelAlertRuleFusionSeveritiesAllowed._(
    TfArgLiteral('High'),
  );
  static const informational = SentinelAlertRuleFusionSeveritiesAllowed._(
    TfArgLiteral('Informational'),
  );
  static const low = SentinelAlertRuleFusionSeveritiesAllowed._(
    TfArgLiteral('Low'),
  );
  static const medium = SentinelAlertRuleFusionSeveritiesAllowed._(
    TfArgLiteral('Medium'),
  );

  static const List<SentinelAlertRuleFusionSeveritiesAllowed> values = [
    high,
    informational,
    low,
    medium,
  ];
}

/// Factory wrapper for `azurerm_sentinel_alert_rule_fusion`.
final class AzurermSentinelAlertRuleFusion extends Resource {
  static const String tfType = 'azurerm_sentinel_alert_rule_fusion';

  AzurermSentinelAlertRuleFusion(
    super.localName, {
    required TfArg<String> alertRuleTemplateGuid,
    TfArg<bool>? enabled,
    required TfArg<String> logAnalyticsWorkspaceId,
    List<SentinelAlertRuleFusionSource>? source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alert_rule_template_guid': alertRuleTemplateGuid,
           'enabled': ?enabled,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           if (source != null)
             'source': TfArg.literal([for (final e in source) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSentinelAlertRuleFusionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelAlertRuleFusion>`.
  RefTo<AzurermSentinelAlertRuleFusion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alert_rule_template_guid` attribute.
  TfRef<String> get alertRuleTemplateGuid =>
      TfRef.attribute<String>(this, 'alert_rule_template_guid');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');
}
