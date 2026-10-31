// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_alert_rule_nrt`.
const Set<String> _azurermSentinelAlertRuleNrtSensitive = <String>{};

/// Sentinel Alert Rule Nrt enum for `severity`.
extension type const SentinelAlertRuleNrtSeverity._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleNrtSeverity.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleNrtSeverity.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleNrtSeverity.arg(TfArg<String> arg) : this._(arg);

  static const high = SentinelAlertRuleNrtSeverity._(TfArgLiteral('High'));
  static const informational = SentinelAlertRuleNrtSeverity._(
    TfArgLiteral('Informational'),
  );
  static const low = SentinelAlertRuleNrtSeverity._(TfArgLiteral('Low'));
  static const medium = SentinelAlertRuleNrtSeverity._(TfArgLiteral('Medium'));

  static const List<SentinelAlertRuleNrtSeverity> values = [
    high,
    informational,
    low,
    medium,
  ];
}

/// Sentinel Alert Rule Nrt enum for `tactics`.
extension type const SentinelAlertRuleNrtTactics._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleNrtTactics.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleNrtTactics.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleNrtTactics.arg(TfArg<String> arg) : this._(arg);

  static const collection = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('Collection'),
  );
  static const commandandcontrol = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('CommandAndControl'),
  );
  static const credentialaccess = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('CredentialAccess'),
  );
  static const defenseevasion = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('DefenseEvasion'),
  );
  static const discovery = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('Discovery'),
  );
  static const execution = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('Execution'),
  );
  static const exfiltration = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('Exfiltration'),
  );
  static const impact = SentinelAlertRuleNrtTactics._(TfArgLiteral('Impact'));
  static const impairprocesscontrol = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('ImpairProcessControl'),
  );
  static const inhibitresponsefunction = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('InhibitResponseFunction'),
  );
  static const initialaccess = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('InitialAccess'),
  );
  static const lateralmovement = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('LateralMovement'),
  );
  static const persistence = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('Persistence'),
  );
  static const preattack = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('PreAttack'),
  );
  static const privilegeescalation = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('PrivilegeEscalation'),
  );
  static const reconnaissance = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('Reconnaissance'),
  );
  static const resourcedevelopment = SentinelAlertRuleNrtTactics._(
    TfArgLiteral('ResourceDevelopment'),
  );

  static const List<SentinelAlertRuleNrtTactics> values = [
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

/// Typed helper for the `alert_details_override` block of
/// `azurerm_sentinel_alert_rule_nrt` (derived from provider schema).
@immutable
final class SentinelAlertRuleNrtAlertDetailsOverride {
  const SentinelAlertRuleNrtAlertDetailsOverride({
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

  final List<SentinelAlertRuleNrtDynamicProperty>? dynamicProperty;

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
/// `azurerm_sentinel_alert_rule_nrt` (derived from provider schema).
@immutable
final class SentinelAlertRuleNrtDynamicProperty {
  const SentinelAlertRuleNrtDynamicProperty({
    required this.name,
    required this.value,
  });

  final SentinelAlertRuleNrtDynamicPropertyName name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const SentinelAlertRuleNrtDynamicPropertyName._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleNrtDynamicPropertyName.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleNrtDynamicPropertyName.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleNrtDynamicPropertyName.arg(TfArg<String> arg)
    : this._(arg);

  static const alertlink = SentinelAlertRuleNrtDynamicPropertyName._(
    TfArgLiteral('AlertLink'),
  );
  static const confidencelevel = SentinelAlertRuleNrtDynamicPropertyName._(
    TfArgLiteral('ConfidenceLevel'),
  );
  static const confidencescore = SentinelAlertRuleNrtDynamicPropertyName._(
    TfArgLiteral('ConfidenceScore'),
  );
  static const extendedlinks = SentinelAlertRuleNrtDynamicPropertyName._(
    TfArgLiteral('ExtendedLinks'),
  );
  static const productcomponentname = SentinelAlertRuleNrtDynamicPropertyName._(
    TfArgLiteral('ProductComponentName'),
  );
  static const productname = SentinelAlertRuleNrtDynamicPropertyName._(
    TfArgLiteral('ProductName'),
  );
  static const providername = SentinelAlertRuleNrtDynamicPropertyName._(
    TfArgLiteral('ProviderName'),
  );
  static const remediationsteps = SentinelAlertRuleNrtDynamicPropertyName._(
    TfArgLiteral('RemediationSteps'),
  );
  static const subtechniques = SentinelAlertRuleNrtDynamicPropertyName._(
    TfArgLiteral('SubTechniques'),
  );
  static const techniques = SentinelAlertRuleNrtDynamicPropertyName._(
    TfArgLiteral('Techniques'),
  );

  static const List<SentinelAlertRuleNrtDynamicPropertyName> values = [
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
/// `azurerm_sentinel_alert_rule_nrt` (derived from provider schema).
@immutable
final class SentinelAlertRuleNrtEntityMapping {
  const SentinelAlertRuleNrtEntityMapping({
    required this.entityType,
    required this.fieldMapping,
  });

  final SentinelAlertRuleNrtEntityType entityType;

  final List<SentinelAlertRuleNrtFieldMapping> fieldMapping;

  @internal
  Map<String, Object?> encode() => {
    'entity_type': entityType.toTfJson(),
    'field_mapping': [for (final e in fieldMapping) e.encode()],
  };
}

/// `entity_type` — derived from the provider schema description.
extension type const SentinelAlertRuleNrtEntityType._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleNrtEntityType.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleNrtEntityType.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleNrtEntityType.arg(TfArg<String> arg) : this._(arg);

  static const account = SentinelAlertRuleNrtEntityType._(
    TfArgLiteral('Account'),
  );
  static const azureresource = SentinelAlertRuleNrtEntityType._(
    TfArgLiteral('AzureResource'),
  );
  static const cloudapplication = SentinelAlertRuleNrtEntityType._(
    TfArgLiteral('CloudApplication'),
  );
  static const dns = SentinelAlertRuleNrtEntityType._(TfArgLiteral('DNS'));
  static const file = SentinelAlertRuleNrtEntityType._(TfArgLiteral('File'));
  static const filehash = SentinelAlertRuleNrtEntityType._(
    TfArgLiteral('FileHash'),
  );
  static const host = SentinelAlertRuleNrtEntityType._(TfArgLiteral('Host'));
  static const ip = SentinelAlertRuleNrtEntityType._(TfArgLiteral('IP'));
  static const mailcluster = SentinelAlertRuleNrtEntityType._(
    TfArgLiteral('MailCluster'),
  );
  static const mailmessage = SentinelAlertRuleNrtEntityType._(
    TfArgLiteral('MailMessage'),
  );
  static const mailbox = SentinelAlertRuleNrtEntityType._(
    TfArgLiteral('Mailbox'),
  );
  static const malware = SentinelAlertRuleNrtEntityType._(
    TfArgLiteral('Malware'),
  );
  static const process = SentinelAlertRuleNrtEntityType._(
    TfArgLiteral('Process'),
  );
  static const registrykey = SentinelAlertRuleNrtEntityType._(
    TfArgLiteral('RegistryKey'),
  );
  static const registryvalue = SentinelAlertRuleNrtEntityType._(
    TfArgLiteral('RegistryValue'),
  );
  static const securitygroup = SentinelAlertRuleNrtEntityType._(
    TfArgLiteral('SecurityGroup'),
  );
  static const submissionmail = SentinelAlertRuleNrtEntityType._(
    TfArgLiteral('SubmissionMail'),
  );
  static const url = SentinelAlertRuleNrtEntityType._(TfArgLiteral('URL'));

  static const List<SentinelAlertRuleNrtEntityType> values = [
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
/// `azurerm_sentinel_alert_rule_nrt` (derived from provider schema).
@immutable
final class SentinelAlertRuleNrtFieldMapping {
  const SentinelAlertRuleNrtFieldMapping({
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
/// `azurerm_sentinel_alert_rule_nrt` (derived from provider schema).
@immutable
final class SentinelAlertRuleNrtEventGrouping {
  const SentinelAlertRuleNrtEventGrouping({required this.aggregationMethod});

  final SentinelAlertRuleNrtAggregationMethod aggregationMethod;

  @internal
  Map<String, Object?> encode() => {
    'aggregation_method': aggregationMethod.toTfJson(),
  };
}

/// `aggregation_method` — derived from the provider schema description.
extension type const SentinelAlertRuleNrtAggregationMethod._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleNrtAggregationMethod.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleNrtAggregationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleNrtAggregationMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const alertperresult = SentinelAlertRuleNrtAggregationMethod._(
    TfArgLiteral('AlertPerResult'),
  );
  static const singlealert = SentinelAlertRuleNrtAggregationMethod._(
    TfArgLiteral('SingleAlert'),
  );

  static const List<SentinelAlertRuleNrtAggregationMethod> values = [
    alertperresult,
    singlealert,
  ];
}

/// Typed helper for the `incident` block of
/// `azurerm_sentinel_alert_rule_nrt` (derived from provider schema).
@immutable
final class SentinelAlertRuleNrtIncident {
  const SentinelAlertRuleNrtIncident({
    required this.createIncidentEnabled,
    required this.grouping,
  });

  final TfArg<bool> createIncidentEnabled;

  final SentinelAlertRuleNrtGrouping grouping;

  @internal
  Map<String, Object?> encode() => {
    'create_incident_enabled': createIncidentEnabled.toTfJson(),
    'grouping': grouping.encode(),
  };
}

/// Typed helper for the `incident.grouping` block of
/// `azurerm_sentinel_alert_rule_nrt` (derived from provider schema).
@immutable
final class SentinelAlertRuleNrtGrouping {
  const SentinelAlertRuleNrtGrouping({
    this.byAlertDetails,
    this.byCustomDetails,
    this.byEntities,
    this.enabled,
    this.entityMatchingMethod,
    this.lookbackDuration,
    this.reopenClosedIncidents,
  });

  final EnumList<SentinelAlertRuleNrtByAlertDetails>? byAlertDetails;

  final TfArg<List<String>>? byCustomDetails;

  final EnumList<SentinelAlertRuleNrtByEntities>? byEntities;

  final TfArg<bool>? enabled;

  final SentinelAlertRuleNrtEntityMatchingMethod? entityMatchingMethod;

  final TfArg<String>? lookbackDuration;

  final TfArg<bool>? reopenClosedIncidents;

  @internal
  Map<String, Object?> encode() => {
    'by_alert_details': ?byAlertDetails?.toTfJson(),
    'by_custom_details': ?byCustomDetails?.toTfJson(),
    'by_entities': ?byEntities?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'entity_matching_method': ?entityMatchingMethod?.toTfJson(),
    'lookback_duration': ?lookbackDuration?.toTfJson(),
    'reopen_closed_incidents': ?reopenClosedIncidents?.toTfJson(),
  };
}

/// `by_alert_details` — derived from the provider schema description.
extension type const SentinelAlertRuleNrtByAlertDetails._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleNrtByAlertDetails.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleNrtByAlertDetails.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleNrtByAlertDetails.arg(TfArg<String> arg) : this._(arg);

  static const displayname = SentinelAlertRuleNrtByAlertDetails._(
    TfArgLiteral('DisplayName'),
  );
  static const severity = SentinelAlertRuleNrtByAlertDetails._(
    TfArgLiteral('Severity'),
  );

  static const List<SentinelAlertRuleNrtByAlertDetails> values = [
    displayname,
    severity,
  ];
}

/// `by_entities` — derived from the provider schema description.
extension type const SentinelAlertRuleNrtByEntities._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleNrtByEntities.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleNrtByEntities.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleNrtByEntities.arg(TfArg<String> arg) : this._(arg);

  static const account = SentinelAlertRuleNrtByEntities._(
    TfArgLiteral('Account'),
  );
  static const azureresource = SentinelAlertRuleNrtByEntities._(
    TfArgLiteral('AzureResource'),
  );
  static const cloudapplication = SentinelAlertRuleNrtByEntities._(
    TfArgLiteral('CloudApplication'),
  );
  static const dns = SentinelAlertRuleNrtByEntities._(TfArgLiteral('DNS'));
  static const file = SentinelAlertRuleNrtByEntities._(TfArgLiteral('File'));
  static const filehash = SentinelAlertRuleNrtByEntities._(
    TfArgLiteral('FileHash'),
  );
  static const host = SentinelAlertRuleNrtByEntities._(TfArgLiteral('Host'));
  static const ip = SentinelAlertRuleNrtByEntities._(TfArgLiteral('IP'));
  static const mailcluster = SentinelAlertRuleNrtByEntities._(
    TfArgLiteral('MailCluster'),
  );
  static const mailmessage = SentinelAlertRuleNrtByEntities._(
    TfArgLiteral('MailMessage'),
  );
  static const mailbox = SentinelAlertRuleNrtByEntities._(
    TfArgLiteral('Mailbox'),
  );
  static const malware = SentinelAlertRuleNrtByEntities._(
    TfArgLiteral('Malware'),
  );
  static const process = SentinelAlertRuleNrtByEntities._(
    TfArgLiteral('Process'),
  );
  static const registrykey = SentinelAlertRuleNrtByEntities._(
    TfArgLiteral('RegistryKey'),
  );
  static const registryvalue = SentinelAlertRuleNrtByEntities._(
    TfArgLiteral('RegistryValue'),
  );
  static const securitygroup = SentinelAlertRuleNrtByEntities._(
    TfArgLiteral('SecurityGroup'),
  );
  static const submissionmail = SentinelAlertRuleNrtByEntities._(
    TfArgLiteral('SubmissionMail'),
  );
  static const url = SentinelAlertRuleNrtByEntities._(TfArgLiteral('URL'));

  static const List<SentinelAlertRuleNrtByEntities> values = [
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
extension type const SentinelAlertRuleNrtEntityMatchingMethod._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAlertRuleNrtEntityMatchingMethod.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAlertRuleNrtEntityMatchingMethod.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAlertRuleNrtEntityMatchingMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const allentities = SentinelAlertRuleNrtEntityMatchingMethod._(
    TfArgLiteral('AllEntities'),
  );
  static const anyalert = SentinelAlertRuleNrtEntityMatchingMethod._(
    TfArgLiteral('AnyAlert'),
  );
  static const selected = SentinelAlertRuleNrtEntityMatchingMethod._(
    TfArgLiteral('Selected'),
  );

  static const List<SentinelAlertRuleNrtEntityMatchingMethod> values = [
    allentities,
    anyalert,
    selected,
  ];
}

/// Typed helper for the `sentinel_entity_mapping` block of
/// `azurerm_sentinel_alert_rule_nrt` (derived from provider schema).
@immutable
final class SentinelAlertRuleNrtSentinelEntityMapping {
  const SentinelAlertRuleNrtSentinelEntityMapping({required this.columnName});

  final TfArg<String> columnName;

  @internal
  Map<String, Object?> encode() => {'column_name': columnName.toTfJson()};
}

/// Factory wrapper for `azurerm_sentinel_alert_rule_nrt`.
final class AzurermSentinelAlertRuleNrt extends Resource {
  static const String tfType = 'azurerm_sentinel_alert_rule_nrt';

  AzurermSentinelAlertRuleNrt(
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
    required SentinelAlertRuleNrtSeverity severity,
    TfArg<String>? suppressionDuration,
    TfArg<bool>? suppressionEnabled,
    EnumList<SentinelAlertRuleNrtTactics>? tactics,
    TfArg<List<String>>? techniques,
    List<SentinelAlertRuleNrtAlertDetailsOverride>? alertDetailsOverride,
    List<SentinelAlertRuleNrtEntityMapping>? entityMapping,
    required SentinelAlertRuleNrtEventGrouping eventGrouping,
    SentinelAlertRuleNrtIncident? incident,
    List<SentinelAlertRuleNrtSentinelEntityMapping>? sentinelEntityMapping,
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
           'severity': severity,
           'suppression_duration': ?suppressionDuration,
           'suppression_enabled': ?suppressionEnabled,
           'tactics': ?tactics,
           'techniques': ?techniques,
           if (alertDetailsOverride != null)
             'alert_details_override': TfArg.literal([
               for (final e in alertDetailsOverride) e.encode(),
             ]),
           if (entityMapping != null)
             'entity_mapping': TfArg.literal([
               for (final e in entityMapping) e.encode(),
             ]),
           'event_grouping': TfArg.literal(eventGrouping.encode()),
           if (incident != null) 'incident': TfArg.literal(incident.encode()),
           if (sentinelEntityMapping != null)
             'sentinel_entity_mapping': TfArg.literal([
               for (final e in sentinelEntityMapping) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSentinelAlertRuleNrtSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelAlertRuleNrt>`.
  RefTo<AzurermSentinelAlertRuleNrt> get ref => RefTo.of(this);

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
}
