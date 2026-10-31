// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_data_collection_rule`.
const Set<String> _azurermMonitorDataCollectionRuleSensitive = <String>{};

/// Monitor Data Collection Rule enum for `kind`.
extension type const MonitorDataCollectionRuleKind._(TfArg<String> _)
    implements TfArg<String> {
  MonitorDataCollectionRuleKind.variable(String name)
    : this._(TfArg.variable(name));
  MonitorDataCollectionRuleKind.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorDataCollectionRuleKind.arg(TfArg<String> arg) : this._(arg);

  static const linux = MonitorDataCollectionRuleKind._(TfArgLiteral('Linux'));
  static const windows = MonitorDataCollectionRuleKind._(
    TfArgLiteral('Windows'),
  );
  static const agentdirecttostore = MonitorDataCollectionRuleKind._(
    TfArgLiteral('AgentDirectToStore'),
  );
  static const workspacetransforms = MonitorDataCollectionRuleKind._(
    TfArgLiteral('WorkspaceTransforms'),
  );
  static const direct = MonitorDataCollectionRuleKind._(TfArgLiteral('Direct'));

  static const List<MonitorDataCollectionRuleKind> values = [
    linux,
    windows,
    agentdirecttostore,
    workspacetransforms,
    direct,
  ];
}

/// Typed helper for the `data_flow` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleDataFlow {
  const MonitorDataCollectionRuleDataFlow({
    this.builtInTransform,
    required this.destinations,
    this.outputStream,
    required this.streams,
    this.transformKql,
  });

  final TfArg<String>? builtInTransform;

  final TfArg<List<String>> destinations;

  final TfArg<String>? outputStream;

  final TfArg<List<String>> streams;

  final TfArg<String>? transformKql;

  @internal
  Map<String, Object?> encode() => {
    'built_in_transform': ?builtInTransform?.toTfJson(),
    'destinations': destinations.toTfJson(),
    'output_stream': ?outputStream?.toTfJson(),
    'streams': streams.toTfJson(),
    'transform_kql': ?transformKql?.toTfJson(),
  };
}

/// Typed helper for the `data_sources` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleDataSources {
  const MonitorDataCollectionRuleDataSources({
    this.dataImport,
    this.extension,
    this.iisLog,
    this.logFile,
    this.performanceCounter,
    this.platformTelemetry,
    this.prometheusForwarder,
    this.syslog,
    this.windowsEventLog,
    this.windowsFirewallLog,
  });

  final MonitorDataCollectionRuleDataImport? dataImport;

  final List<MonitorDataCollectionRuleExtension>? extension;

  final List<MonitorDataCollectionRuleIisLog>? iisLog;

  final List<MonitorDataCollectionRuleLogFile>? logFile;

  final List<MonitorDataCollectionRulePerformanceCounter>? performanceCounter;

  final List<MonitorDataCollectionRulePlatformTelemetry>? platformTelemetry;

  final List<MonitorDataCollectionRulePrometheusForwarder>? prometheusForwarder;

  final List<MonitorDataCollectionRuleSyslog>? syslog;

  final List<MonitorDataCollectionRuleWindowsEventLog>? windowsEventLog;

  final List<MonitorDataCollectionRuleWindowsFirewallLog>? windowsFirewallLog;

  @internal
  Map<String, Object?> encode() => {
    'data_import': ?dataImport?.encode(),
    if (extension != null)
      'extension': [for (final e in extension!) e.encode()],
    if (iisLog != null) 'iis_log': [for (final e in iisLog!) e.encode()],
    if (logFile != null) 'log_file': [for (final e in logFile!) e.encode()],
    if (performanceCounter != null)
      'performance_counter': [for (final e in performanceCounter!) e.encode()],
    if (platformTelemetry != null)
      'platform_telemetry': [for (final e in platformTelemetry!) e.encode()],
    if (prometheusForwarder != null)
      'prometheus_forwarder': [
        for (final e in prometheusForwarder!) e.encode(),
      ],
    if (syslog != null) 'syslog': [for (final e in syslog!) e.encode()],
    if (windowsEventLog != null)
      'windows_event_log': [for (final e in windowsEventLog!) e.encode()],
    if (windowsFirewallLog != null)
      'windows_firewall_log': [for (final e in windowsFirewallLog!) e.encode()],
  };
}

/// Typed helper for the `data_sources.data_import` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleDataImport {
  const MonitorDataCollectionRuleDataImport({required this.eventHubDataSource});

  final List<MonitorDataCollectionRuleEventHubDataSource> eventHubDataSource;

  @internal
  Map<String, Object?> encode() => {
    'event_hub_data_source': [for (final e in eventHubDataSource) e.encode()],
  };
}

/// Typed helper for the `data_sources.data_import.event_hub_data_source` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleEventHubDataSource {
  const MonitorDataCollectionRuleEventHubDataSource({
    this.consumerGroup,
    required this.name,
    required this.stream,
  });

  final TfArg<String>? consumerGroup;

  final TfArg<String> name;

  final TfArg<String> stream;

  @internal
  Map<String, Object?> encode() => {
    'consumer_group': ?consumerGroup?.toTfJson(),
    'name': name.toTfJson(),
    'stream': stream.toTfJson(),
  };
}

/// Typed helper for the `data_sources.extension` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleExtension {
  const MonitorDataCollectionRuleExtension({
    this.extensionJson,
    required this.extensionName,
    this.inputDataSources,
    required this.name,
    required this.streams,
  });

  final TfArg<String>? extensionJson;

  final TfArg<String> extensionName;

  final TfArg<List<String>>? inputDataSources;

  final TfArg<String> name;

  final TfArg<List<String>> streams;

  @internal
  Map<String, Object?> encode() => {
    'extension_json': ?extensionJson?.toTfJson(),
    'extension_name': extensionName.toTfJson(),
    'input_data_sources': ?inputDataSources?.toTfJson(),
    'name': name.toTfJson(),
    'streams': streams.toTfJson(),
  };
}

/// Typed helper for the `data_sources.iis_log` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleIisLog {
  const MonitorDataCollectionRuleIisLog({
    this.logDirectories,
    required this.name,
    required this.streams,
  });

  final TfArg<List<String>>? logDirectories;

  final TfArg<String> name;

  final TfArg<List<String>> streams;

  @internal
  Map<String, Object?> encode() => {
    'log_directories': ?logDirectories?.toTfJson(),
    'name': name.toTfJson(),
    'streams': streams.toTfJson(),
  };
}

/// Typed helper for the `data_sources.log_file` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleLogFile {
  const MonitorDataCollectionRuleLogFile({
    required this.filePatterns,
    required this.format,
    required this.name,
    required this.streams,
    this.settings,
  });

  final TfArg<List<String>> filePatterns;

  final MonitorDataCollectionRuleFormat format;

  final TfArg<String> name;

  final TfArg<List<String>> streams;

  final MonitorDataCollectionRuleSettings? settings;

  @internal
  Map<String, Object?> encode() => {
    'file_patterns': filePatterns.toTfJson(),
    'format': format.toTfJson(),
    'name': name.toTfJson(),
    'streams': streams.toTfJson(),
    'settings': ?settings?.encode(),
  };
}

/// `format` — derived from the provider schema description.
extension type const MonitorDataCollectionRuleFormat._(TfArg<String> _)
    implements TfArg<String> {
  MonitorDataCollectionRuleFormat.variable(String name)
    : this._(TfArg.variable(name));
  MonitorDataCollectionRuleFormat.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorDataCollectionRuleFormat.arg(TfArg<String> arg) : this._(arg);

  static const json = MonitorDataCollectionRuleFormat._(TfArgLiteral('json'));
  static const text = MonitorDataCollectionRuleFormat._(TfArgLiteral('text'));

  static const List<MonitorDataCollectionRuleFormat> values = [json, text];
}

/// Typed helper for the `data_sources.log_file.settings` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleSettings {
  const MonitorDataCollectionRuleSettings({required this.text});

  final MonitorDataCollectionRuleText text;

  @internal
  Map<String, Object?> encode() => {'text': text.encode()};
}

/// Typed helper for the `data_sources.log_file.settings.text` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleText {
  const MonitorDataCollectionRuleText({
    required this.recordStartTimestampFormat,
  });

  final MonitorDataCollectionRuleRecordStartTimestampFormat
  recordStartTimestampFormat;

  @internal
  Map<String, Object?> encode() => {
    'record_start_timestamp_format': recordStartTimestampFormat.toTfJson(),
  };
}

/// `record_start_timestamp_format` — derived from the provider schema description.
extension type const MonitorDataCollectionRuleRecordStartTimestampFormat._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorDataCollectionRuleRecordStartTimestampFormat.variable(String name)
    : this._(TfArg.variable(name));
  MonitorDataCollectionRuleRecordStartTimestampFormat.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MonitorDataCollectionRuleRecordStartTimestampFormat.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const ddMmmYyyyHhMmSsZzz =
      MonitorDataCollectionRuleRecordStartTimestampFormat._(
        TfArgLiteral('dd/MMM/yyyy:HH:mm:ss zzz'),
      );
  static const ddmmyyHhMmSs =
      MonitorDataCollectionRuleRecordStartTimestampFormat._(
        TfArgLiteral('ddMMyy HH:mm:ss'),
      );
  static const iso8601 = MonitorDataCollectionRuleRecordStartTimestampFormat._(
    TfArgLiteral('ISO 8601'),
  );
  static const mDYyyyHhMmSsAmPm =
      MonitorDataCollectionRuleRecordStartTimestampFormat._(
        TfArgLiteral('M/D/YYYY HH:MM:SS AM/PM'),
      );
  static const mmmDHhMmSs =
      MonitorDataCollectionRuleRecordStartTimestampFormat._(
        TfArgLiteral('MMM d hh:mm:ss'),
      );
  static const monDdYyyyHhMmSs =
      MonitorDataCollectionRuleRecordStartTimestampFormat._(
        TfArgLiteral('Mon DD, YYYY HH:MM:SS'),
      );
  static const yyyyMmDdHhMmSs =
      MonitorDataCollectionRuleRecordStartTimestampFormat._(
        TfArgLiteral('YYYY-MM-DD HH:MM:SS'),
      );
  static const yymmddHhMmSs =
      MonitorDataCollectionRuleRecordStartTimestampFormat._(
        TfArgLiteral('yyMMdd HH:mm:ss'),
      );
  static const yyyyMmDdthhMmSsk =
      MonitorDataCollectionRuleRecordStartTimestampFormat._(
        TfArgLiteral('yyyy-MM-ddTHH:mm:ssK'),
      );

  static const List<MonitorDataCollectionRuleRecordStartTimestampFormat>
  values = [
    ddMmmYyyyHhMmSsZzz,
    ddmmyyHhMmSs,
    iso8601,
    mDYyyyHhMmSsAmPm,
    mmmDHhMmSs,
    monDdYyyyHhMmSs,
    yyyyMmDdHhMmSs,
    yymmddHhMmSs,
    yyyyMmDdthhMmSsk,
  ];
}

/// Typed helper for the `data_sources.performance_counter` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRulePerformanceCounter {
  const MonitorDataCollectionRulePerformanceCounter({
    required this.counterSpecifiers,
    required this.name,
    required this.samplingFrequencyInSeconds,
    required this.streams,
  });

  final TfArg<List<String>> counterSpecifiers;

  final TfArg<String> name;

  final TfArg<num> samplingFrequencyInSeconds;

  final TfArg<List<String>> streams;

  @internal
  Map<String, Object?> encode() => {
    'counter_specifiers': counterSpecifiers.toTfJson(),
    'name': name.toTfJson(),
    'sampling_frequency_in_seconds': samplingFrequencyInSeconds.toTfJson(),
    'streams': streams.toTfJson(),
  };
}

/// Typed helper for the `data_sources.platform_telemetry` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRulePlatformTelemetry {
  const MonitorDataCollectionRulePlatformTelemetry({
    required this.name,
    required this.streams,
  });

  final TfArg<String> name;

  final TfArg<List<String>> streams;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'streams': streams.toTfJson(),
  };
}

/// Typed helper for the `data_sources.prometheus_forwarder` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRulePrometheusForwarder {
  const MonitorDataCollectionRulePrometheusForwarder({
    required this.name,
    required this.streams,
    this.labelIncludeFilter,
  });

  final TfArg<String> name;

  final EnumList<MonitorDataCollectionRuleStreams> streams;

  final List<MonitorDataCollectionRuleLabelIncludeFilter>? labelIncludeFilter;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'streams': streams.toTfJson(),
    if (labelIncludeFilter != null)
      'label_include_filter': [for (final e in labelIncludeFilter!) e.encode()],
  };
}

/// `streams` — derived from the provider schema description.
extension type const MonitorDataCollectionRuleStreams._(TfArg<String> _)
    implements TfArg<String> {
  MonitorDataCollectionRuleStreams.variable(String name)
    : this._(TfArg.variable(name));
  MonitorDataCollectionRuleStreams.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorDataCollectionRuleStreams.arg(TfArg<String> arg) : this._(arg);

  static const microsoftPrometheusmetrics = MonitorDataCollectionRuleStreams._(
    TfArgLiteral('Microsoft-PrometheusMetrics'),
  );

  static const List<MonitorDataCollectionRuleStreams> values = [
    microsoftPrometheusmetrics,
  ];
}

/// Typed helper for the `data_sources.prometheus_forwarder.label_include_filter` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleLabelIncludeFilter {
  const MonitorDataCollectionRuleLabelIncludeFilter({
    required this.label,
    required this.value,
  });

  final MonitorDataCollectionRuleLabel label;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'label': label.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `label` — derived from the provider schema description.
extension type const MonitorDataCollectionRuleLabel._(TfArg<String> _)
    implements TfArg<String> {
  MonitorDataCollectionRuleLabel.variable(String name)
    : this._(TfArg.variable(name));
  MonitorDataCollectionRuleLabel.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorDataCollectionRuleLabel.arg(TfArg<String> arg) : this._(arg);

  static const microsoftMetricsIncludeLabel = MonitorDataCollectionRuleLabel._(
    TfArgLiteral('microsoft_metrics_include_label'),
  );

  static const List<MonitorDataCollectionRuleLabel> values = [
    microsoftMetricsIncludeLabel,
  ];
}

/// Typed helper for the `data_sources.syslog` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleSyslog {
  const MonitorDataCollectionRuleSyslog({
    required this.facilityNames,
    required this.logLevels,
    required this.name,
    required this.streams,
  });

  final EnumList<MonitorDataCollectionRuleFacilityNames> facilityNames;

  final EnumList<MonitorDataCollectionRuleLogLevels> logLevels;

  final TfArg<String> name;

  final TfArg<List<String>> streams;

  @internal
  Map<String, Object?> encode() => {
    'facility_names': facilityNames.toTfJson(),
    'log_levels': logLevels.toTfJson(),
    'name': name.toTfJson(),
    'streams': streams.toTfJson(),
  };
}

/// `facility_names` — derived from the provider schema description.
extension type const MonitorDataCollectionRuleFacilityNames._(TfArg<String> _)
    implements TfArg<String> {
  MonitorDataCollectionRuleFacilityNames.variable(String name)
    : this._(TfArg.variable(name));
  MonitorDataCollectionRuleFacilityNames.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorDataCollectionRuleFacilityNames.arg(TfArg<String> arg)
    : this._(arg);

  static const alert = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('alert'),
  );
  static const value = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('*'),
  );
  static const audit = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('audit'),
  );
  static const auth = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('auth'),
  );
  static const authpriv = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('authpriv'),
  );
  static const clock = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('clock'),
  );
  static const cron = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('cron'),
  );
  static const daemon = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('daemon'),
  );
  static const ftp = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('ftp'),
  );
  static const kern = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('kern'),
  );
  static const local5 = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('local5'),
  );
  static const local4 = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('local4'),
  );
  static const local1 = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('local1'),
  );
  static const local7 = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('local7'),
  );
  static const local6 = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('local6'),
  );
  static const local3 = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('local3'),
  );
  static const local2 = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('local2'),
  );
  static const local0 = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('local0'),
  );
  static const lpr = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('lpr'),
  );
  static const mail = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('mail'),
  );
  static const mark = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('mark'),
  );
  static const news = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('news'),
  );
  static const nopri = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('nopri'),
  );
  static const ntp = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('ntp'),
  );
  static const syslog = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('syslog'),
  );
  static const user = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('user'),
  );
  static const uucp = MonitorDataCollectionRuleFacilityNames._(
    TfArgLiteral('uucp'),
  );

  static const List<MonitorDataCollectionRuleFacilityNames> values = [
    alert,
    value,
    audit,
    auth,
    authpriv,
    clock,
    cron,
    daemon,
    ftp,
    kern,
    local5,
    local4,
    local1,
    local7,
    local6,
    local3,
    local2,
    local0,
    lpr,
    mail,
    mark,
    news,
    nopri,
    ntp,
    syslog,
    user,
    uucp,
  ];
}

/// `log_levels` — derived from the provider schema description.
extension type const MonitorDataCollectionRuleLogLevels._(TfArg<String> _)
    implements TfArg<String> {
  MonitorDataCollectionRuleLogLevels.variable(String name)
    : this._(TfArg.variable(name));
  MonitorDataCollectionRuleLogLevels.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorDataCollectionRuleLogLevels.arg(TfArg<String> arg) : this._(arg);

  static const alert = MonitorDataCollectionRuleLogLevels._(
    TfArgLiteral('Alert'),
  );
  static const value = MonitorDataCollectionRuleLogLevels._(TfArgLiteral('*'));
  static const critical = MonitorDataCollectionRuleLogLevels._(
    TfArgLiteral('Critical'),
  );
  static const debug = MonitorDataCollectionRuleLogLevels._(
    TfArgLiteral('Debug'),
  );
  static const emergency = MonitorDataCollectionRuleLogLevels._(
    TfArgLiteral('Emergency'),
  );
  static const error = MonitorDataCollectionRuleLogLevels._(
    TfArgLiteral('Error'),
  );
  static const info = MonitorDataCollectionRuleLogLevels._(
    TfArgLiteral('Info'),
  );
  static const notice = MonitorDataCollectionRuleLogLevels._(
    TfArgLiteral('Notice'),
  );
  static const warning = MonitorDataCollectionRuleLogLevels._(
    TfArgLiteral('Warning'),
  );

  static const List<MonitorDataCollectionRuleLogLevels> values = [
    alert,
    value,
    critical,
    debug,
    emergency,
    error,
    info,
    notice,
    warning,
  ];
}

/// Typed helper for the `data_sources.windows_event_log` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleWindowsEventLog {
  const MonitorDataCollectionRuleWindowsEventLog({
    required this.name,
    required this.streams,
    required this.xPathQueries,
  });

  final TfArg<String> name;

  final TfArg<List<String>> streams;

  final TfArg<List<String>> xPathQueries;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'streams': streams.toTfJson(),
    'x_path_queries': xPathQueries.toTfJson(),
  };
}

/// Typed helper for the `data_sources.windows_firewall_log` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleWindowsFirewallLog {
  const MonitorDataCollectionRuleWindowsFirewallLog({
    required this.name,
    required this.streams,
  });

  final TfArg<String> name;

  final TfArg<List<String>> streams;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'streams': streams.toTfJson(),
  };
}

/// Typed helper for the `destinations` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleDestinations {
  const MonitorDataCollectionRuleDestinations({
    this.azureMonitorMetrics,
    this.eventHub,
    this.eventHubDirect,
    this.logAnalytics,
    this.monitorAccount,
    this.storageBlob,
    this.storageBlobDirect,
    this.storageTableDirect,
  });

  final MonitorDataCollectionRuleAzureMonitorMetrics? azureMonitorMetrics;

  final MonitorDataCollectionRuleEventHub? eventHub;

  final MonitorDataCollectionRuleEventHubDirect? eventHubDirect;

  final List<MonitorDataCollectionRuleLogAnalytics>? logAnalytics;

  final List<MonitorDataCollectionRuleMonitorAccount>? monitorAccount;

  final List<MonitorDataCollectionRuleStorageBlob>? storageBlob;

  final List<MonitorDataCollectionRuleStorageBlobDirect>? storageBlobDirect;

  final List<MonitorDataCollectionRuleStorageTableDirect>? storageTableDirect;

  @internal
  Map<String, Object?> encode() => {
    'azure_monitor_metrics': ?azureMonitorMetrics?.encode(),
    'event_hub': ?eventHub?.encode(),
    'event_hub_direct': ?eventHubDirect?.encode(),
    if (logAnalytics != null)
      'log_analytics': [for (final e in logAnalytics!) e.encode()],
    if (monitorAccount != null)
      'monitor_account': [for (final e in monitorAccount!) e.encode()],
    if (storageBlob != null)
      'storage_blob': [for (final e in storageBlob!) e.encode()],
    if (storageBlobDirect != null)
      'storage_blob_direct': [for (final e in storageBlobDirect!) e.encode()],
    if (storageTableDirect != null)
      'storage_table_direct': [for (final e in storageTableDirect!) e.encode()],
  };
}

/// Typed helper for the `destinations.azure_monitor_metrics` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleAzureMonitorMetrics {
  const MonitorDataCollectionRuleAzureMonitorMetrics({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `destinations.event_hub` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleEventHub {
  const MonitorDataCollectionRuleEventHub({
    required this.eventHubId,
    required this.name,
  });

  final TfArg<String> eventHubId;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'event_hub_id': eventHubId.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `destinations.event_hub_direct` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleEventHubDirect {
  const MonitorDataCollectionRuleEventHubDirect({
    required this.eventHubId,
    required this.name,
  });

  final TfArg<String> eventHubId;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'event_hub_id': eventHubId.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `destinations.log_analytics` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleLogAnalytics {
  const MonitorDataCollectionRuleLogAnalytics({
    required this.name,
    required this.workspaceResourceId,
  });

  final TfArg<String> name;

  final TfArg<String> workspaceResourceId;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'workspace_resource_id': workspaceResourceId.toTfJson(),
  };
}

/// Typed helper for the `destinations.monitor_account` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleMonitorAccount {
  const MonitorDataCollectionRuleMonitorAccount({
    required this.monitorAccountId,
    required this.name,
  });

  final TfArg<String> monitorAccountId;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'monitor_account_id': monitorAccountId.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `destinations.storage_blob` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleStorageBlob {
  const MonitorDataCollectionRuleStorageBlob({
    required this.containerName,
    required this.name,
    required this.storageAccountId,
  });

  final TfArg<String> containerName;

  final TfArg<String> name;

  final TfArg<String> storageAccountId;

  @internal
  Map<String, Object?> encode() => {
    'container_name': containerName.toTfJson(),
    'name': name.toTfJson(),
    'storage_account_id': storageAccountId.toTfJson(),
  };
}

/// Typed helper for the `destinations.storage_blob_direct` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleStorageBlobDirect {
  const MonitorDataCollectionRuleStorageBlobDirect({
    required this.containerName,
    required this.name,
    required this.storageAccountId,
  });

  final TfArg<String> containerName;

  final TfArg<String> name;

  final TfArg<String> storageAccountId;

  @internal
  Map<String, Object?> encode() => {
    'container_name': containerName.toTfJson(),
    'name': name.toTfJson(),
    'storage_account_id': storageAccountId.toTfJson(),
  };
}

/// Typed helper for the `destinations.storage_table_direct` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleStorageTableDirect {
  const MonitorDataCollectionRuleStorageTableDirect({
    required this.name,
    required this.storageAccountId,
    required this.tableName,
  });

  final TfArg<String> name;

  final TfArg<String> storageAccountId;

  final TfArg<String> tableName;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'storage_account_id': storageAccountId.toTfJson(),
    'table_name': tableName.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleIdentity {
  const MonitorDataCollectionRuleIdentity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `stream_declaration` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleStreamDeclaration {
  const MonitorDataCollectionRuleStreamDeclaration({
    required this.streamName,
    required this.column,
  });

  final TfArg<String> streamName;

  final List<MonitorDataCollectionRuleColumn> column;

  @internal
  Map<String, Object?> encode() => {
    'stream_name': streamName.toTfJson(),
    'column': [for (final e in column) e.encode()],
  };
}

/// Typed helper for the `stream_declaration.column` block of
/// `azurerm_monitor_data_collection_rule` (derived from provider schema).
@immutable
final class MonitorDataCollectionRuleColumn {
  const MonitorDataCollectionRuleColumn({
    required this.name,
    required this.type,
  });

  final TfArg<String> name;

  final MonitorDataCollectionRuleType type;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const MonitorDataCollectionRuleType._(TfArg<String> _)
    implements TfArg<String> {
  MonitorDataCollectionRuleType.variable(String name)
    : this._(TfArg.variable(name));
  MonitorDataCollectionRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorDataCollectionRuleType.arg(TfArg<String> arg) : this._(arg);

  static const boolean = MonitorDataCollectionRuleType._(
    TfArgLiteral('boolean'),
  );
  static const datetime = MonitorDataCollectionRuleType._(
    TfArgLiteral('datetime'),
  );
  static const dynamic = MonitorDataCollectionRuleType._(
    TfArgLiteral('dynamic'),
  );
  static const int = MonitorDataCollectionRuleType._(TfArgLiteral('int'));
  static const long = MonitorDataCollectionRuleType._(TfArgLiteral('long'));
  static const real = MonitorDataCollectionRuleType._(TfArgLiteral('real'));
  static const string = MonitorDataCollectionRuleType._(TfArgLiteral('string'));

  static const List<MonitorDataCollectionRuleType> values = [
    boolean,
    datetime,
    dynamic,
    int,
    long,
    real,
    string,
  ];
}

/// Factory wrapper for `azurerm_monitor_data_collection_rule`.
final class AzurermMonitorDataCollectionRule extends Resource {
  static const String tfType = 'azurerm_monitor_data_collection_rule';

  AzurermMonitorDataCollectionRule(
    super.localName, {
    TfArg<String>? dataCollectionEndpointId,
    TfArg<String>? description,
    MonitorDataCollectionRuleKind? kind,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required List<MonitorDataCollectionRuleDataFlow> dataFlow,
    MonitorDataCollectionRuleDataSources? dataSources,
    required MonitorDataCollectionRuleDestinations destinations,
    MonitorDataCollectionRuleIdentity? identity,
    List<MonitorDataCollectionRuleStreamDeclaration>? streamDeclaration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_collection_endpoint_id': ?dataCollectionEndpointId,
           'description': ?description,
           'kind': ?kind,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'data_flow': TfArg.literal([for (final e in dataFlow) e.encode()]),
           if (dataSources != null)
             'data_sources': TfArg.literal(dataSources.encode()),
           'destinations': TfArg.literal(destinations.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (streamDeclaration != null)
             'stream_declaration': TfArg.literal([
               for (final e in streamDeclaration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMonitorDataCollectionRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorDataCollectionRule>`.
  RefTo<AzurermMonitorDataCollectionRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `immutable_id` attribute.
  TfRef<String> get immutableId =>
      TfRef.attribute<String>(this, 'immutable_id');

  /// Reference to `logs_ingestion_endpoint` attribute.
  TfRef<String> get logsIngestionEndpoint =>
      TfRef.attribute<String>(this, 'logs_ingestion_endpoint');

  /// Reference to `metrics_ingestion_endpoint` attribute.
  TfRef<String> get metricsIngestionEndpoint =>
      TfRef.attribute<String>(this, 'metrics_ingestion_endpoint');

  /// Reference to `data_collection_endpoint_id` attribute.
  TfRef<String> get dataCollectionEndpointId =>
      TfRef.attribute<String>(this, 'data_collection_endpoint_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
