// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_alert_rule_scheduled`.
const Set<String> _azurermSentinelAlertRuleScheduledSensitive = <String>{};

/// Sentinel Alert Rule Scheduled enum for `severity`.
extension type const SentinelAlertRuleScheduledSeverity._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleScheduledSeverity.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleScheduledSeverity.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleScheduledSeverity.arg(TfArg<String> arg) : this._(arg);

  static const high = SentinelAlertRuleScheduledSeverity._(
    TfArgLiteral('High'),
  );
  static const informational = SentinelAlertRuleScheduledSeverity._(
    TfArgLiteral('Informational'),
  );
  static const low = SentinelAlertRuleScheduledSeverity._(TfArgLiteral('Low'));
  static const medium = SentinelAlertRuleScheduledSeverity._(
    TfArgLiteral('Medium'),
  );

  static const List<SentinelAlertRuleScheduledSeverity> values = [
    high,
    informational,
    low,
    medium,
  ];
}

/// Sentinel Alert Rule Scheduled enum for `tactics`.
extension type const SentinelAlertRuleScheduledTactics._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleScheduledTactics.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleScheduledTactics.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleScheduledTactics.arg(TfArg<String> arg) : this._(arg);

  static const collection = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('Collection'),
  );
  static const commandandcontrol = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('CommandAndControl'),
  );
  static const credentialaccess = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('CredentialAccess'),
  );
  static const defenseevasion = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('DefenseEvasion'),
  );
  static const discovery = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('Discovery'),
  );
  static const execution = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('Execution'),
  );
  static const exfiltration = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('Exfiltration'),
  );
  static const impact = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('Impact'),
  );
  static const impairprocesscontrol = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('ImpairProcessControl'),
  );
  static const inhibitresponsefunction = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('InhibitResponseFunction'),
  );
  static const initialaccess = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('InitialAccess'),
  );
  static const lateralmovement = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('LateralMovement'),
  );
  static const persistence = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('Persistence'),
  );
  static const preattack = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('PreAttack'),
  );
  static const privilegeescalation = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('PrivilegeEscalation'),
  );
  static const reconnaissance = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('Reconnaissance'),
  );
  static const resourcedevelopment = SentinelAlertRuleScheduledTactics._(
    TfArgLiteral('ResourceDevelopment'),
  );

  static const List<SentinelAlertRuleScheduledTactics> values = [
    collection,
    commandandcontrol,
    credentialaccess,
    defenseevasion,
    discovery,
    execution,
    exfiltration,
    impact,
    impairprocesscontrol,
    inhibitresponsefunction,
    initialaccess,
    lateralmovement,
    persistence,
    preattack,
    privilegeescalation,
    reconnaissance,
    resourcedevelopment,
  ];
}

/// Sentinel Alert Rule Scheduled Trigger enum for `trigger_operator`.
extension type const SentinelAlertRuleScheduledTriggerOperator._(
  TfArg<String> _
) implements TfArg<String> {
  SentinelAlertRuleScheduledTriggerOperator.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleScheduledTriggerOperator.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleScheduledTriggerOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const equal = SentinelAlertRuleScheduledTriggerOperator._(
    TfArgLiteral('Equal'),
  );
  static const greaterthan = SentinelAlertRuleScheduledTriggerOperator._(
    TfArgLiteral('GreaterThan'),
  );
  static const lessthan = SentinelAlertRuleScheduledTriggerOperator._(
    TfArgLiteral('LessThan'),
  );
  static const notequal = SentinelAlertRuleScheduledTriggerOperator._(
    TfArgLiteral('NotEqual'),
  );

  static const List<SentinelAlertRuleScheduledTriggerOperator> values = [
    equal,
    greaterthan,
    lessthan,
    notequal,
  ];
}

/// Typed helper for the `alert_details_override` block of
/// `azurerm_sentinel_alert_rule_scheduled` (derived from provider schema).
@immutable
final class SentinelAlertRuleScheduledAlertDetailsOverride {
  const SentinelAlertRuleScheduledAlertDetailsOverride({
    this.descriptionFormat,
    this.displayNameFormat,
    this.severityColumnName,
    this.tacticsColumnName,
    this.dynamicProperty,
  });

  final TfArg<String>? descriptionFormat;

  final TfArg<String>? displayNameFormat;

  final TfArg<String>? severityColumnName;

  final TfArg<String>? tacticsColumnName;

  final List<SentinelAlertRuleScheduledDynamicProperty>? dynamicProperty;

  @internal
  Map<String, Object?> encode() => {
    'description_format': ?descriptionFormat?.toTfJson(),
    'display_name_format': ?displayNameFormat?.toTfJson(),
    'severity_column_name': ?severityColumnName?.toTfJson(),
    'tactics_column_name': ?tacticsColumnName?.toTfJson(),
    if (dynamicProperty != null)
      'dynamic_property': [for (final e in dynamicProperty!) e.encode()],
  };
}

/// Typed helper for the `alert_details_override.dynamic_property` block of
/// `azurerm_sentinel_alert_rule_scheduled` (derived from provider schema).
@immutable
final class SentinelAlertRuleScheduledDynamicProperty {
  const SentinelAlertRuleScheduledDynamicProperty({
    required this.name,
    required this.value,
  });

  final SentinelAlertRuleScheduledDynamicPropertyName name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const SentinelAlertRuleScheduledDynamicPropertyName._(
  TfArg<String> _
) implements TfArg<String> {
  SentinelAlertRuleScheduledDynamicPropertyName.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleScheduledDynamicPropertyName.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleScheduledDynamicPropertyName.arg(TfArg<String> arg)
    : this._(arg);

  static const alertlink = SentinelAlertRuleScheduledDynamicPropertyName._(
    TfArgLiteral('AlertLink'),
  );
  static const confidencelevel =
      SentinelAlertRuleScheduledDynamicPropertyName._(
        TfArgLiteral('ConfidenceLevel'),
      );
  static const confidencescore =
      SentinelAlertRuleScheduledDynamicPropertyName._(
        TfArgLiteral('ConfidenceScore'),
      );
  static const extendedlinks = SentinelAlertRuleScheduledDynamicPropertyName._(
    TfArgLiteral('ExtendedLinks'),
  );
  static const productcomponentname =
      SentinelAlertRuleScheduledDynamicPropertyName._(
        TfArgLiteral('ProductComponentName'),
      );
  static const productname = SentinelAlertRuleScheduledDynamicPropertyName._(
    TfArgLiteral('ProductName'),
  );
  static const providername = SentinelAlertRuleScheduledDynamicPropertyName._(
    TfArgLiteral('ProviderName'),
  );
  static const remediationsteps =
      SentinelAlertRuleScheduledDynamicPropertyName._(
        TfArgLiteral('RemediationSteps'),
      );
  static const subtechniques = SentinelAlertRuleScheduledDynamicPropertyName._(
    TfArgLiteral('SubTechniques'),
  );
  static const techniques = SentinelAlertRuleScheduledDynamicPropertyName._(
    TfArgLiteral('Techniques'),
  );

  static const List<SentinelAlertRuleScheduledDynamicPropertyName> values = [
    alertlink,
    confidencelevel,
    confidencescore,
    extendedlinks,
    productcomponentname,
    productname,
    providername,
    remediationsteps,
    subtechniques,
    techniques,
  ];
}

/// Typed helper for the `entity_mapping` block of
/// `azurerm_sentinel_alert_rule_scheduled` (derived from provider schema).
@immutable
final class SentinelAlertRuleScheduledEntityMapping {
  const SentinelAlertRuleScheduledEntityMapping({
    required this.entityType,
    required this.fieldMapping,
  });

  final SentinelAlertRuleScheduledEntityType entityType;

  final List<SentinelAlertRuleScheduledFieldMapping> fieldMapping;

  @internal
  Map<String, Object?> encode() => {
    'entity_type': entityType.toTfJson(),
    'field_mapping': [for (final e in fieldMapping) e.encode()],
  };
}

/// `entity_type` — derived from the provider schema description.
extension type const SentinelAlertRuleScheduledEntityType._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleScheduledEntityType.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleScheduledEntityType.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleScheduledEntityType.arg(TfArg<String> arg)
    : this._(arg);

  static const account = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('Account'),
  );
  static const azureresource = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('AzureResource'),
  );
  static const cloudapplication = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('CloudApplication'),
  );
  static const dns = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('DNS'),
  );
  static const file = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('File'),
  );
  static const filehash = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('FileHash'),
  );
  static const host = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('Host'),
  );
  static const ip = SentinelAlertRuleScheduledEntityType._(TfArgLiteral('IP'));
  static const mailcluster = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('MailCluster'),
  );
  static const mailmessage = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('MailMessage'),
  );
  static const mailbox = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('Mailbox'),
  );
  static const malware = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('Malware'),
  );
  static const process = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('Process'),
  );
  static const registrykey = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('RegistryKey'),
  );
  static const registryvalue = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('RegistryValue'),
  );
  static const securitygroup = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('SecurityGroup'),
  );
  static const submissionmail = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('SubmissionMail'),
  );
  static const url = SentinelAlertRuleScheduledEntityType._(
    TfArgLiteral('URL'),
  );

  static const List<SentinelAlertRuleScheduledEntityType> values = [
    account,
    azureresource,
    cloudapplication,
    dns,
    file,
    filehash,
    host,
    ip,
    mailcluster,
    mailmessage,
    mailbox,
    malware,
    process,
    registrykey,
    registryvalue,
    securitygroup,
    submissionmail,
    url,
  ];
}

/// Typed helper for the `entity_mapping.field_mapping` block of
/// `azurerm_sentinel_alert_rule_scheduled` (derived from provider schema).
@immutable
final class SentinelAlertRuleScheduledFieldMapping {
  const SentinelAlertRuleScheduledFieldMapping({
    required this.columnName,
    required this.identifier,
  });

  final TfArg<String> columnName;

  final TfArg<String> identifier;

  @internal
  Map<String, Object?> encode() => {
    'column_name': columnName.toTfJson(),
    'identifier': identifier.toTfJson(),
  };
}

/// Typed helper for the `event_grouping` block of
/// `azurerm_sentinel_alert_rule_scheduled` (derived from provider schema).
@immutable
final class SentinelAlertRuleScheduledEventGrouping {
  const SentinelAlertRuleScheduledEventGrouping({
    required this.aggregationMethod,
  });

  final SentinelAlertRuleScheduledAggregationMethod aggregationMethod;

  @internal
  Map<String, Object?> encode() => {
    'aggregation_method': aggregationMethod.toTfJson(),
  };
}

/// `aggregation_method` — derived from the provider schema description.
extension type const SentinelAlertRuleScheduledAggregationMethod._(
  TfArg<String> _
) implements TfArg<String> {
  SentinelAlertRuleScheduledAggregationMethod.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleScheduledAggregationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleScheduledAggregationMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const alertperresult = SentinelAlertRuleScheduledAggregationMethod._(
    TfArgLiteral('AlertPerResult'),
  );
  static const singlealert = SentinelAlertRuleScheduledAggregationMethod._(
    TfArgLiteral('SingleAlert'),
  );

  static const List<SentinelAlertRuleScheduledAggregationMethod> values = [
    alertperresult,
    singlealert,
  ];
}

/// Typed helper for the `incident` block of
/// `azurerm_sentinel_alert_rule_scheduled` (derived from provider schema).
@immutable
final class SentinelAlertRuleScheduledIncident {
  const SentinelAlertRuleScheduledIncident({
    required this.createIncidentEnabled,
    required this.grouping,
  });

  final TfArg<bool> createIncidentEnabled;

  final SentinelAlertRuleScheduledGrouping grouping;

  @internal
  Map<String, Object?> encode() => {
    'create_incident_enabled': createIncidentEnabled.toTfJson(),
    'grouping': grouping.encode(),
  };
}

/// Typed helper for the `incident.grouping` block of
/// `azurerm_sentinel_alert_rule_scheduled` (derived from provider schema).
@immutable
final class SentinelAlertRuleScheduledGrouping {
  const SentinelAlertRuleScheduledGrouping({
    this.byAlertDetails,
    this.byCustomDetails,
    this.byEntities,
    this.enabled,
    this.entityMatchingMethod,
    this.lookbackDuration,
    this.reopenClosedIncidents,
  });

  final List<SentinelAlertRuleScheduledByAlertDetails>? byAlertDetails;

  final TfArg<List<String>>? byCustomDetails;

  final List<SentinelAlertRuleScheduledByEntities>? byEntities;

  final TfArg<bool>? enabled;

  final SentinelAlertRuleScheduledEntityMatchingMethod? entityMatchingMethod;

  final TfArg<String>? lookbackDuration;

  final TfArg<bool>? reopenClosedIncidents;

  @internal
  Map<String, Object?> encode() => {
    if (byAlertDetails != null)
      'by_alert_details': [for (final e in byAlertDetails!) e.toTfJson()],
    'by_custom_details': ?byCustomDetails?.toTfJson(),
    if (byEntities != null)
      'by_entities': [for (final e in byEntities!) e.toTfJson()],
    'enabled': ?enabled?.toTfJson(),
    'entity_matching_method': ?entityMatchingMethod?.toTfJson(),
    'lookback_duration': ?lookbackDuration?.toTfJson(),
    'reopen_closed_incidents': ?reopenClosedIncidents?.toTfJson(),
  };
}

/// `by_alert_details` — derived from the provider schema description.
extension type const SentinelAlertRuleScheduledByAlertDetails._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleScheduledByAlertDetails.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleScheduledByAlertDetails.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleScheduledByAlertDetails.arg(TfArg<String> arg)
    : this._(arg);

  static const displayname = SentinelAlertRuleScheduledByAlertDetails._(
    TfArgLiteral('DisplayName'),
  );
  static const severity = SentinelAlertRuleScheduledByAlertDetails._(
    TfArgLiteral('Severity'),
  );

  static const List<SentinelAlertRuleScheduledByAlertDetails> values = [
    displayname,
    severity,
  ];
}

/// `by_entities` — derived from the provider schema description.
extension type const SentinelAlertRuleScheduledByEntities._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleScheduledByEntities.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleScheduledByEntities.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleScheduledByEntities.arg(TfArg<String> arg)
    : this._(arg);

  static const account = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('Account'),
  );
  static const azureresource = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('AzureResource'),
  );
  static const cloudapplication = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('CloudApplication'),
  );
  static const dns = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('DNS'),
  );
  static const file = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('File'),
  );
  static const filehash = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('FileHash'),
  );
  static const host = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('Host'),
  );
  static const ip = SentinelAlertRuleScheduledByEntities._(TfArgLiteral('IP'));
  static const mailcluster = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('MailCluster'),
  );
  static const mailmessage = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('MailMessage'),
  );
  static const mailbox = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('Mailbox'),
  );
  static const malware = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('Malware'),
  );
  static const process = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('Process'),
  );
  static const registrykey = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('RegistryKey'),
  );
  static const registryvalue = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('RegistryValue'),
  );
  static const securitygroup = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('SecurityGroup'),
  );
  static const submissionmail = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('SubmissionMail'),
  );
  static const url = SentinelAlertRuleScheduledByEntities._(
    TfArgLiteral('URL'),
  );

  static const List<SentinelAlertRuleScheduledByEntities> values = [
    account,
    azureresource,
    cloudapplication,
    dns,
    file,
    filehash,
    host,
    ip,
    mailcluster,
    mailmessage,
    mailbox,
    malware,
    process,
    registrykey,
    registryvalue,
    securitygroup,
    submissionmail,
    url,
  ];
}

/// `entity_matching_method` — derived from the provider schema description.
extension type const SentinelAlertRuleScheduledEntityMatchingMethod._(
  TfArg<String> _
) implements TfArg<String> {
  SentinelAlertRuleScheduledEntityMatchingMethod.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleScheduledEntityMatchingMethod.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleScheduledEntityMatchingMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const allentities = SentinelAlertRuleScheduledEntityMatchingMethod._(
    TfArgLiteral('AllEntities'),
  );
  static const anyalert = SentinelAlertRuleScheduledEntityMatchingMethod._(
    TfArgLiteral('AnyAlert'),
  );
  static const selected = SentinelAlertRuleScheduledEntityMatchingMethod._(
    TfArgLiteral('Selected'),
  );

  static const List<SentinelAlertRuleScheduledEntityMatchingMethod> values = [
    allentities,
    anyalert,
    selected,
  ];
}

/// Typed helper for the `sentinel_entity_mapping` block of
/// `azurerm_sentinel_alert_rule_scheduled` (derived from provider schema).
@immutable
final class SentinelAlertRuleScheduledSentinelEntityMapping {
  const SentinelAlertRuleScheduledSentinelEntityMapping({
    required this.columnName,
  });

  final TfArg<String> columnName;

  @internal
  Map<String, Object?> encode() => {'column_name': columnName.toTfJson()};
}

/// Factory wrapper for `azurerm_sentinel_alert_rule_scheduled`.
final class AzurermSentinelAlertRuleScheduled extends Resource {
  static const String tfType = 'azurerm_sentinel_alert_rule_scheduled';

  AzurermSentinelAlertRuleScheduled(
    super.localName, {
    TfArg<String>? alertRuleTemplateGuid,
    TfArg<String>? alertRuleTemplateVersion,
    TfArg<Map<String, String>>? customDetails,
    TfArg<String>? description,
    required TfArg<String> displayName,
    TfArg<bool>? enabled,
    required TfArg<String> logAnalyticsWorkspaceId,
    required TfArg<String> name,
    required TfArg<String> query,
    TfArg<String>? queryFrequency,
    TfArg<String>? queryPeriod,
    required SentinelAlertRuleScheduledSeverity severity,
    TfArg<String>? suppressionDuration,
    TfArg<bool>? suppressionEnabled,
    List<SentinelAlertRuleScheduledTactics>? tactics,
    TfArg<List<String>>? techniques,
    SentinelAlertRuleScheduledTriggerOperator? triggerOperator,
    TfArg<num>? triggerThreshold,
    List<SentinelAlertRuleScheduledAlertDetailsOverride>? alertDetailsOverride,
    List<SentinelAlertRuleScheduledEntityMapping>? entityMapping,
    SentinelAlertRuleScheduledEventGrouping? eventGrouping,
    SentinelAlertRuleScheduledIncident? incident,
    List<SentinelAlertRuleScheduledSentinelEntityMapping>?
    sentinelEntityMapping,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alert_rule_template_guid': ?alertRuleTemplateGuid,
           'alert_rule_template_version': ?alertRuleTemplateVersion,
           'custom_details': ?customDetails,
           'description': ?description,
           'display_name': displayName,
           'enabled': ?enabled,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': name,
           'query': query,
           'query_frequency': ?queryFrequency,
           'query_period': ?queryPeriod,
           'severity': severity,
           'suppression_duration': ?suppressionDuration,
           'suppression_enabled': ?suppressionEnabled,
           if (tactics != null)
             'tactics': TfArg.literal([for (final e in tactics) e.toTfJson()]),
           'techniques': ?techniques,
           'trigger_operator': ?triggerOperator,
           'trigger_threshold': ?triggerThreshold,
           if (alertDetailsOverride != null)
             'alert_details_override': TfArg.literal([
               for (final e in alertDetailsOverride) e.encode(),
             ]),
           if (entityMapping != null)
             'entity_mapping': TfArg.literal([
               for (final e in entityMapping) e.encode(),
             ]),
           if (eventGrouping != null)
             'event_grouping': TfArg.literal(eventGrouping.encode()),
           if (incident != null) 'incident': TfArg.literal(incident.encode()),
           if (sentinelEntityMapping != null)
             'sentinel_entity_mapping': TfArg.literal([
               for (final e in sentinelEntityMapping) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSentinelAlertRuleScheduledSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelAlertRuleScheduled>`.
  RefTo<AzurermSentinelAlertRuleScheduled> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alert_rule_template_guid` attribute.
  TfRef<String> get alertRuleTemplateGuid =>
      TfRef.attribute<String>(this, 'alert_rule_template_guid');

  /// Reference to `alert_rule_template_version` attribute.
  TfRef<String> get alertRuleTemplateVersion =>
      TfRef.attribute<String>(this, 'alert_rule_template_version');

  /// Reference to `custom_details` attribute.
  TfRef<Map<String, String>> get customDetails =>
      TfRef.attribute<Map<String, String>>(this, 'custom_details');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `query` attribute.
  TfRef<String> get query => TfRef.attribute<String>(this, 'query');

  /// Reference to `query_frequency` attribute.
  TfRef<String> get queryFrequency =>
      TfRef.attribute<String>(this, 'query_frequency');

  /// Reference to `query_period` attribute.
  TfRef<String> get queryPeriod =>
      TfRef.attribute<String>(this, 'query_period');

  /// Reference to `severity` attribute.
  TfRef<String> get severity => TfRef.attribute<String>(this, 'severity');

  /// Reference to `suppression_duration` attribute.
  TfRef<String> get suppressionDuration =>
      TfRef.attribute<String>(this, 'suppression_duration');

  /// Reference to `suppression_enabled` attribute.
  TfRef<bool> get suppressionEnabled =>
      TfRef.attribute<bool>(this, 'suppression_enabled');

  /// Reference to `tactics` attribute.
  TfRef<List<String>> get tactics =>
      TfRef.attribute<List<String>>(this, 'tactics');

  /// Reference to `techniques` attribute.
  TfRef<List<String>> get techniques =>
      TfRef.attribute<List<String>>(this, 'techniques');

  /// Reference to `trigger_operator` attribute.
  TfRef<String> get triggerOperator =>
      TfRef.attribute<String>(this, 'trigger_operator');

  /// Reference to `trigger_threshold` attribute.
  TfRef<num> get triggerThreshold =>
      TfRef.attribute<num>(this, 'trigger_threshold');
}
