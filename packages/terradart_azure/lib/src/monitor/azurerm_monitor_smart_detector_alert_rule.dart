// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_smart_detector_alert_rule`.
const Set<String> _azurermMonitorSmartDetectorAlertRuleSensitive = <String>{};

/// Monitor Smart Detector Alert Rule Detector enum for `detector_type`.
extension type const MonitorSmartDetectorAlertRuleDetectorType._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorSmartDetectorAlertRuleDetectorType.variable(String name)
    : this._(TfArg.variable(name));
  MonitorSmartDetectorAlertRuleDetectorType.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorSmartDetectorAlertRuleDetectorType.arg(TfArg<String> arg)
    : this._(arg);

  static const failureanomaliesdetector =
      MonitorSmartDetectorAlertRuleDetectorType._(
        TfArgLiteral('FailureAnomaliesDetector'),
      );
  static const requestperformancedegradationdetector =
      MonitorSmartDetectorAlertRuleDetectorType._(
        TfArgLiteral('RequestPerformanceDegradationDetector'),
      );
  static const dependencyperformancedegradationdetector =
      MonitorSmartDetectorAlertRuleDetectorType._(
        TfArgLiteral('DependencyPerformanceDegradationDetector'),
      );
  static const exceptionvolumechangeddetector =
      MonitorSmartDetectorAlertRuleDetectorType._(
        TfArgLiteral('ExceptionVolumeChangedDetector'),
      );
  static const traceseveritydetector =
      MonitorSmartDetectorAlertRuleDetectorType._(
        TfArgLiteral('TraceSeverityDetector'),
      );
  static const memoryleakdetector = MonitorSmartDetectorAlertRuleDetectorType._(
    TfArgLiteral('MemoryLeakDetector'),
  );

  static const List<MonitorSmartDetectorAlertRuleDetectorType> values = [
    failureanomaliesdetector,
    requestperformancedegradationdetector,
    dependencyperformancedegradationdetector,
    exceptionvolumechangeddetector,
    traceseveritydetector,
    memoryleakdetector,
  ];
}

/// Monitor Smart Detector Alert Rule enum for `severity`.
extension type const MonitorSmartDetectorAlertRuleSeverity._(TfArg<String> _)
    implements TfArg<String> {
  MonitorSmartDetectorAlertRuleSeverity.variable(String name)
    : this._(TfArg.variable(name));
  MonitorSmartDetectorAlertRuleSeverity.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorSmartDetectorAlertRuleSeverity.arg(TfArg<String> arg)
    : this._(arg);

  static const sev4 = MonitorSmartDetectorAlertRuleSeverity._(
    TfArgLiteral('Sev4'),
  );
  static const sev1 = MonitorSmartDetectorAlertRuleSeverity._(
    TfArgLiteral('Sev1'),
  );
  static const sev3 = MonitorSmartDetectorAlertRuleSeverity._(
    TfArgLiteral('Sev3'),
  );
  static const sev2 = MonitorSmartDetectorAlertRuleSeverity._(
    TfArgLiteral('Sev2'),
  );
  static const sev0 = MonitorSmartDetectorAlertRuleSeverity._(
    TfArgLiteral('Sev0'),
  );

  static const List<MonitorSmartDetectorAlertRuleSeverity> values = [
    sev4,
    sev1,
    sev3,
    sev2,
    sev0,
  ];
}

/// Typed helper for the `action_group` block of
/// `azurerm_monitor_smart_detector_alert_rule` (derived from provider schema).
@immutable
final class MonitorSmartDetectorAlertRuleActionGroup {
  const MonitorSmartDetectorAlertRuleActionGroup({
    this.emailSubject,
    required this.ids,
    this.webhookPayload,
  });

  final TfArg<String>? emailSubject;

  final TfArg<List<String>> ids;

  final TfArg<String>? webhookPayload;

  @internal
  Map<String, Object?> encode() => {
    'email_subject': ?emailSubject?.toTfJson(),
    'ids': ids.toTfJson(),
    'webhook_payload': ?webhookPayload?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_monitor_smart_detector_alert_rule`.
final class AzurermMonitorSmartDetectorAlertRule extends Resource {
  static const String tfType = 'azurerm_monitor_smart_detector_alert_rule';

  AzurermMonitorSmartDetectorAlertRule(
    super.localName, {
    TfArg<String>? description,
    required MonitorSmartDetectorAlertRuleDetectorType detectorType,
    TfArg<bool>? enabled,
    required TfArg<String> frequency,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<List<String>> scopeResourceIds,
    required MonitorSmartDetectorAlertRuleSeverity severity,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? throttlingDuration,
    required MonitorSmartDetectorAlertRuleActionGroup actionGroup,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'detector_type': detectorType,
           'enabled': ?enabled,
           'frequency': frequency,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scope_resource_ids': scopeResourceIds,
           'severity': severity,
           'tags': ?tags,
           'throttling_duration': ?throttlingDuration,
           'action_group': TfArg.literal(actionGroup.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMonitorSmartDetectorAlertRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorSmartDetectorAlertRule>`.
  RefTo<AzurermMonitorSmartDetectorAlertRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `detector_type` attribute.
  TfRef<String> get detectorType =>
      TfRef.attribute<String>(this, 'detector_type');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scope_resource_ids` attribute.
  TfRef<List<String>> get scopeResourceIds =>
      TfRef.attribute<List<String>>(this, 'scope_resource_ids');

  /// Reference to `severity` attribute.
  TfRef<String> get severity => TfRef.attribute<String>(this, 'severity');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `throttling_duration` attribute.
  TfRef<String> get throttlingDuration =>
      TfRef.attribute<String>(this, 'throttling_duration');
}
