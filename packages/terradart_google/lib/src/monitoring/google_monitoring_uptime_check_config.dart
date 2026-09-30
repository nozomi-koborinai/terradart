// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_uptime_check_config`.
const Set<String> _googleMonitoringUptimeCheckConfigSensitive = <String>{
  'http_check.auth_info.password',
};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// Checker pool selector for `google_monitoring_uptime_check_config.checker_type`.
///
/// Schema enum_values: `["STATIC_IP_CHECKERS", "VPC_CHECKERS"]`.
enum MonitoringUptimeCheckCheckerType implements TerraformEnum {
  staticIpCheckers('STATIC_IP_CHECKERS'),
  vpcCheckers('VPC_CHECKERS');

  const MonitoringUptimeCheckCheckerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Region selector for `google_monitoring_uptime_check_config.selected_regions`.
///
/// The Terraform schema declares `selected_regions` as a plain
/// `list(string)` (no `enum_values` block) — the valid set is documented
/// in the GCP Cloud Monitoring uptime check API reference. The values
/// below mirror that documented set. Callers that need a region not
/// covered here can still pass a raw `TfArg<List<String>>` via
/// [GoogleMonitoringUptimeCheckConfig.selectedRegions] (the API
/// surface accepts string values directly).
enum MonitoringUptimeCheckRegion implements TerraformEnum {
  usa('USA'),
  usaOregon('USA_OREGON'),
  usaIowa('USA_IOWA'),
  usaVirginia('USA_VIRGINIA'),
  europe('EUROPE'),
  southAmerica('SOUTH_AMERICA'),
  asiaPacific('ASIA_PACIFIC');

  const MonitoringUptimeCheckRegion(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// HTTP check enums
// ===========================================================================

/// HTTP method for `http_check.request_method`.
///
/// Schema enum_values: `["METHOD_UNSPECIFIED", "GET", "POST"]`.
/// Defaults to `GET` when unset.
enum MonitoringUptimeCheckHttpMethod implements TerraformEnum {
  methodUnspecified('METHOD_UNSPECIFIED'),
  get('GET'),
  post('POST');

  const MonitoringUptimeCheckHttpMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Content-type for `http_check.content_type` (the standard
/// `Content-Type` header sent on probe requests).
///
/// Schema enum_values: `["TYPE_UNSPECIFIED", "URL_ENCODED", "USER_PROVIDED"]`.
/// When `USER_PROVIDED` is selected, the caller must also set
/// [MonitoringUptimeCheckConfigHttpCheck.customContentType] with the literal
/// header value. Using `URL_ENCODED` together with `customContentType`
/// is rejected by the API.
enum MonitoringUptimeCheckContentType implements TerraformEnum {
  typeUnspecified('TYPE_UNSPECIFIED'),
  urlEncoded('URL_ENCODED'),
  userProvided('USER_PROVIDED');

  const MonitoringUptimeCheckContentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Service Agent authentication mode for
/// `http_check.service_agent_authentication.type`.
///
/// Schema enum_values:
/// `["SERVICE_AGENT_AUTHENTICATION_TYPE_UNSPECIFIED", "OIDC_TOKEN"]`.
enum MonitoringUptimeCheckServiceAgentAuthType implements TerraformEnum {
  serviceAgentAuthenticationTypeUnspecified(
    'SERVICE_AGENT_AUTHENTICATION_TYPE_UNSPECIFIED',
  ),
  oidcToken('OIDC_TOKEN');

  const MonitoringUptimeCheckServiceAgentAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// HTTP status class for `http_check.accepted_response_status_codes[].status_class`.
///
/// Schema enum_values: `["STATUS_CLASS_1XX", "STATUS_CLASS_2XX",
/// "STATUS_CLASS_3XX", "STATUS_CLASS_4XX", "STATUS_CLASS_5XX",
/// "STATUS_CLASS_ANY"]`.
enum MonitoringUptimeCheckStatusClass implements TerraformEnum {
  statusClass1xx('STATUS_CLASS_1XX'),
  statusClass2xx('STATUS_CLASS_2XX'),
  statusClass3xx('STATUS_CLASS_3XX'),
  statusClass4xx('STATUS_CLASS_4XX'),
  statusClass5xx('STATUS_CLASS_5XX'),
  statusClassAny('STATUS_CLASS_ANY');

  const MonitoringUptimeCheckStatusClass(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// Content-matcher enums
// ===========================================================================

/// Match mode for `content_matchers[].matcher`. Defaults to
/// [containsString] on the GCP API.
///
/// Schema enum_values: `["CONTAINS_STRING", "NOT_CONTAINS_STRING",
/// "MATCHES_REGEX", "NOT_MATCHES_REGEX", "MATCHES_JSON_PATH",
/// "NOT_MATCHES_JSON_PATH"]`.
enum MonitoringUptimeCheckMatcher implements TerraformEnum {
  containsString('CONTAINS_STRING'),
  notContainsString('NOT_CONTAINS_STRING'),
  matchesRegex('MATCHES_REGEX'),
  notMatchesRegex('NOT_MATCHES_REGEX'),
  matchesJsonPath('MATCHES_JSON_PATH'),
  notMatchesJsonPath('NOT_MATCHES_JSON_PATH');

  const MonitoringUptimeCheckMatcher(this.terraformValue);
  @override
  final String terraformValue;
}

/// JSONPath match mode for
/// `content_matchers[].json_path_matcher.json_matcher`.
/// Defaults to [exactMatch] on the GCP API.
///
/// Schema enum_values: `["EXACT_MATCH", "REGEX_MATCH"]`.
enum MonitoringUptimeCheckJsonMatcher implements TerraformEnum {
  exactMatch('EXACT_MATCH'),
  regexMatch('REGEX_MATCH');

  const MonitoringUptimeCheckJsonMatcher(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// Resource-group enum
// ===========================================================================

/// Member-resource type for `resource_group.resource_type`.
///
/// Schema enum_values: `["RESOURCE_TYPE_UNSPECIFIED", "INSTANCE",
/// "AWS_ELB_LOAD_BALANCER"]`.
enum MonitoringUptimeCheckResourceType implements TerraformEnum {
  resourceTypeUnspecified('RESOURCE_TYPE_UNSPECIFIED'),
  instance('INSTANCE'),
  awsElbLoadBalancer('AWS_ELB_LOAD_BALANCER');

  const MonitoringUptimeCheckResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `monitored_resource`, `resource_group`, `synthetic_monitor` on `google_monitoring_uptime_check_config`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.monitoredResource(...)`.
sealed class MonitoringUptimeCheckConfigTarget {
  const MonitoringUptimeCheckConfigTarget();

  /// Sets `monitored_resource`.
  const factory MonitoringUptimeCheckConfigTarget.monitoredResource(
    MonitoringUptimeCheckConfigMonitoredResource monitoredResource,
  ) = MonitoringUptimeCheckConfigTargetMonitoredResource;

  /// Sets `resource_group`.
  const factory MonitoringUptimeCheckConfigTarget.resourceGroup(
    MonitoringUptimeCheckConfigResourceGroup resourceGroup,
  ) = MonitoringUptimeCheckConfigTargetResourceGroup;

  /// Sets `synthetic_monitor`.
  const factory MonitoringUptimeCheckConfigTarget.syntheticMonitor(
    MonitoringUptimeCheckConfigSyntheticMonitor syntheticMonitor,
  ) = MonitoringUptimeCheckConfigTargetSyntheticMonitor;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MonitoringUptimeCheckConfigTarget.monitoredResource] choice: sets `monitored_resource`.
final class MonitoringUptimeCheckConfigTargetMonitoredResource
    extends MonitoringUptimeCheckConfigTarget {
  const MonitoringUptimeCheckConfigTargetMonitoredResource(
    this.monitoredResource,
  );

  final MonitoringUptimeCheckConfigMonitoredResource monitoredResource;

  @override
  String get blockKey => 'monitored_resource';

  @override
  Map<String, Object?> encode() => {
    'monitored_resource': monitoredResource.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'monitored_resource': TfArg.literal(monitoredResource.encode()),
  };
}

/// The [MonitoringUptimeCheckConfigTarget.resourceGroup] choice: sets `resource_group`.
final class MonitoringUptimeCheckConfigTargetResourceGroup
    extends MonitoringUptimeCheckConfigTarget {
  const MonitoringUptimeCheckConfigTargetResourceGroup(this.resourceGroup);

  final MonitoringUptimeCheckConfigResourceGroup resourceGroup;

  @override
  String get blockKey => 'resource_group';

  @override
  Map<String, Object?> encode() => {'resource_group': resourceGroup.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'resource_group': TfArg.literal(resourceGroup.encode()),
  };
}

/// The [MonitoringUptimeCheckConfigTarget.syntheticMonitor] choice: sets `synthetic_monitor`.
final class MonitoringUptimeCheckConfigTargetSyntheticMonitor
    extends MonitoringUptimeCheckConfigTarget {
  const MonitoringUptimeCheckConfigTargetSyntheticMonitor(
    this.syntheticMonitor,
  );

  final MonitoringUptimeCheckConfigSyntheticMonitor syntheticMonitor;

  @override
  String get blockKey => 'synthetic_monitor';

  @override
  Map<String, Object?> encode() => {
    'synthetic_monitor': syntheticMonitor.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'synthetic_monitor': TfArg.literal(syntheticMonitor.encode()),
  };
}

/// Typed helper for the `content_matchers` block of
/// `google_monitoring_uptime_check_config` (derived from provider schema).
@immutable
final class MonitoringUptimeCheckConfigContentMatchers {
  const MonitoringUptimeCheckConfigContentMatchers({
    required this.content,
    this.matcher,
    this.jsonPathMatcher,
  });

  final TfArg<String> content;

  final TfArg<MonitoringUptimeCheckMatcher>? matcher;

  final MonitoringUptimeCheckConfigContentMatchersJsonPathMatcher?
  jsonPathMatcher;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'matcher': ?matcher?.toTfJson(),
    'json_path_matcher': ?jsonPathMatcher?.encode(),
  };
}

/// Typed helper for the `content_matchers.json_path_matcher` block of
/// `google_monitoring_uptime_check_config` (derived from provider schema).
@immutable
final class MonitoringUptimeCheckConfigContentMatchersJsonPathMatcher {
  const MonitoringUptimeCheckConfigContentMatchersJsonPathMatcher({
    this.jsonMatcher,
    required this.jsonPath,
  });

  final TfArg<MonitoringUptimeCheckJsonMatcher>? jsonMatcher;

  final TfArg<String> jsonPath;

  Map<String, Object?> encode() => {
    'json_matcher': ?jsonMatcher?.toTfJson(),
    'json_path': jsonPath.toTfJson(),
  };
}

/// Typed helper for the `http_check` block of
/// `google_monitoring_uptime_check_config` (derived from provider schema).
@immutable
final class MonitoringUptimeCheckConfigHttpCheck {
  const MonitoringUptimeCheckConfigHttpCheck({
    this.body,
    this.contentType,
    this.customContentType,
    this.headers,
    this.maskHeaders,
    this.path,
    this.port,
    this.requestMethod,
    this.useSsl,
    this.validateSsl,
    this.acceptedResponseStatusCodes,
    this.authInfo,
    this.pingConfig,
    this.serviceAgentAuthentication,
  });

  final TfArg<String>? body;

  final TfArg<MonitoringUptimeCheckContentType>? contentType;

  final TfArg<String>? customContentType;

  final TfArg<Map<String, String>>? headers;

  final TfArg<bool>? maskHeaders;

  final TfArg<String>? path;

  final TfArg<num>? port;

  final TfArg<MonitoringUptimeCheckHttpMethod>? requestMethod;

  final TfArg<bool>? useSsl;

  final TfArg<bool>? validateSsl;

  final List<MonitoringUptimeCheckConfigHttpCheckAcceptedResponseStatusCodes>?
  acceptedResponseStatusCodes;

  final MonitoringUptimeCheckConfigHttpCheckAuthInfo? authInfo;

  final MonitoringUptimeCheckConfigHttpCheckPingConfig? pingConfig;

  final MonitoringUptimeCheckConfigHttpCheckServiceAgentAuthentication?
  serviceAgentAuthentication;

  Map<String, Object?> encode() => {
    'body': ?body?.toTfJson(),
    'content_type': ?contentType?.toTfJson(),
    'custom_content_type': ?customContentType?.toTfJson(),
    'headers': ?headers?.toTfJson(),
    'mask_headers': ?maskHeaders?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    'request_method': ?requestMethod?.toTfJson(),
    'use_ssl': ?useSsl?.toTfJson(),
    'validate_ssl': ?validateSsl?.toTfJson(),
    if (acceptedResponseStatusCodes != null)
      'accepted_response_status_codes': [
        for (final e in acceptedResponseStatusCodes!) e.encode(),
      ],
    'auth_info': ?authInfo?.encode(),
    'ping_config': ?pingConfig?.encode(),
    'service_agent_authentication': ?serviceAgentAuthentication?.encode(),
  };
}

/// Typed helper for the `http_check.accepted_response_status_codes` block of
/// `google_monitoring_uptime_check_config` (derived from provider schema).
@immutable
final class MonitoringUptimeCheckConfigHttpCheckAcceptedResponseStatusCodes {
  const MonitoringUptimeCheckConfigHttpCheckAcceptedResponseStatusCodes({
    this.statusClass,
    this.statusValue,
  });

  final TfArg<MonitoringUptimeCheckStatusClass>? statusClass;

  final TfArg<num>? statusValue;

  Map<String, Object?> encode() => {
    'status_class': ?statusClass?.toTfJson(),
    'status_value': ?statusValue?.toTfJson(),
  };
}

/// Typed helper for the `http_check.auth_info` block of
/// `google_monitoring_uptime_check_config` (derived from provider schema).
@immutable
final class MonitoringUptimeCheckConfigHttpCheckAuthInfo {
  const MonitoringUptimeCheckConfigHttpCheckAuthInfo({
    required this.password,
    this.passwordWoVersion,
    required this.username,
  });

  final MonitoringUptimeCheckConfigHttpCheckAuthInfoPassword password;

  final TfArg<String>? passwordWoVersion;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    ...password.encode(),
    'password_wo_version': ?passwordWoVersion?.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Exactly one of `password`, `password_wo` on the `http_check.auth_info` block of `google_monitoring_uptime_check_config`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.password(...)`.
sealed class MonitoringUptimeCheckConfigHttpCheckAuthInfoPassword {
  const MonitoringUptimeCheckConfigHttpCheckAuthInfoPassword();

  /// Sets `password`.
  const factory MonitoringUptimeCheckConfigHttpCheckAuthInfoPassword.password(
    TfArg<String> password,
  ) = MonitoringUptimeCheckConfigHttpCheckAuthInfoPasswordChoice;

  /// Sets `password_wo`.
  const factory MonitoringUptimeCheckConfigHttpCheckAuthInfoPassword.passwordWo(
    TfArg<String> passwordWo,
  ) = MonitoringUptimeCheckConfigHttpCheckAuthInfoPasswordWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MonitoringUptimeCheckConfigHttpCheckAuthInfoPassword.password] choice: sets `password`.
final class MonitoringUptimeCheckConfigHttpCheckAuthInfoPasswordChoice
    extends MonitoringUptimeCheckConfigHttpCheckAuthInfoPassword {
  const MonitoringUptimeCheckConfigHttpCheckAuthInfoPasswordChoice(
    this.password,
  );

  final TfArg<String> password;

  @override
  String get blockKey => 'password';

  @override
  Map<String, Object?> encode() => {'password': password.toTfJson()};
}

/// The [MonitoringUptimeCheckConfigHttpCheckAuthInfoPassword.passwordWo] choice: sets `password_wo`.
final class MonitoringUptimeCheckConfigHttpCheckAuthInfoPasswordWo
    extends MonitoringUptimeCheckConfigHttpCheckAuthInfoPassword {
  const MonitoringUptimeCheckConfigHttpCheckAuthInfoPasswordWo(this.passwordWo);

  final TfArg<String> passwordWo;

  @override
  String get blockKey => 'password_wo';

  @override
  Map<String, Object?> encode() => {'password_wo': passwordWo.toTfJson()};
}

/// Typed helper for the `http_check.ping_config` block of
/// `google_monitoring_uptime_check_config` (derived from provider schema).
@immutable
final class MonitoringUptimeCheckConfigHttpCheckPingConfig {
  const MonitoringUptimeCheckConfigHttpCheckPingConfig({
    required this.pingsCount,
  });

  final TfArg<num> pingsCount;

  Map<String, Object?> encode() => {'pings_count': pingsCount.toTfJson()};
}

/// Typed helper for the `http_check.service_agent_authentication` block of
/// `google_monitoring_uptime_check_config` (derived from provider schema).
@immutable
final class MonitoringUptimeCheckConfigHttpCheckServiceAgentAuthentication {
  const MonitoringUptimeCheckConfigHttpCheckServiceAgentAuthentication({
    this.type,
  });

  final TfArg<MonitoringUptimeCheckServiceAgentAuthType>? type;

  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// Typed helper for the `monitored_resource` block of
/// `google_monitoring_uptime_check_config` (derived from provider schema).
@immutable
final class MonitoringUptimeCheckConfigMonitoredResource {
  const MonitoringUptimeCheckConfigMonitoredResource({
    required this.labels,
    required this.type,
  });

  final TfArg<Map<String, String>> labels;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'labels': labels.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `resource_group` block of
/// `google_monitoring_uptime_check_config` (derived from provider schema).
@immutable
final class MonitoringUptimeCheckConfigResourceGroup {
  const MonitoringUptimeCheckConfigResourceGroup({
    this.groupId,
    this.resourceType,
  });

  final TfArg<String>? groupId;

  final TfArg<MonitoringUptimeCheckResourceType>? resourceType;

  Map<String, Object?> encode() => {
    'group_id': ?groupId?.toTfJson(),
    'resource_type': ?resourceType?.toTfJson(),
  };
}

/// Typed helper for the `synthetic_monitor` block of
/// `google_monitoring_uptime_check_config` (derived from provider schema).
@immutable
final class MonitoringUptimeCheckConfigSyntheticMonitor {
  const MonitoringUptimeCheckConfigSyntheticMonitor({
    required this.cloudFunctionV2,
  });

  final MonitoringUptimeCheckConfigSyntheticMonitorCloudFunctionV2
  cloudFunctionV2;

  Map<String, Object?> encode() => {
    'cloud_function_v2': cloudFunctionV2.encode(),
  };
}

/// Typed helper for the `synthetic_monitor.cloud_function_v2` block of
/// `google_monitoring_uptime_check_config` (derived from provider schema).
@immutable
final class MonitoringUptimeCheckConfigSyntheticMonitorCloudFunctionV2 {
  const MonitoringUptimeCheckConfigSyntheticMonitorCloudFunctionV2({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `tcp_check` block of
/// `google_monitoring_uptime_check_config` (derived from provider schema).
@immutable
final class MonitoringUptimeCheckConfigTcpCheck {
  const MonitoringUptimeCheckConfigTcpCheck({
    required this.port,
    this.pingConfig,
  });

  final TfArg<num> port;

  final MonitoringUptimeCheckConfigTcpCheckPingConfig? pingConfig;

  Map<String, Object?> encode() => {
    'port': port.toTfJson(),
    'ping_config': ?pingConfig?.encode(),
  };
}

/// Typed helper for the `tcp_check.ping_config` block of
/// `google_monitoring_uptime_check_config` (derived from provider schema).
@immutable
final class MonitoringUptimeCheckConfigTcpCheckPingConfig {
  const MonitoringUptimeCheckConfigTcpCheckPingConfig({
    required this.pingsCount,
  });

  final TfArg<num> pingsCount;

  Map<String, Object?> encode() => {'pings_count': pingsCount.toTfJson()};
}

/// Factory wrapper for `google_monitoring_uptime_check_config`.
///
/// This message configures which resources and services to monitor for
/// availability.
///
/// An uptime check is a periodic probe (HTTP / HTTPS, plain TCP, or a
/// Synthetic Monitor Cloud Function) launched from Google-managed checker
/// pools (or your own VPC checkers) against a target resource.
///
/// `timeout` is a Duration string for the per-probe budget (e.g. `'10s'`,
/// valid range 1-60 seconds).
///
/// ## Probe shape — pick exactly one
///
/// The Terraform provider enforces an `exactly_one_of` contract across
/// the probe-type blocks. Set **exactly one** of:
/// - [httpCheck] — HTTP or HTTPS probe (toggle [HttpCheckConfig.useSsl]
///   for HTTPS).
/// - [tcpCheck] — raw TCP connect probe.
/// - [syntheticMonitor] — invoke a Cloud Functions V2 instance that runs
///   custom probe logic.
///
/// ## Target shape — pick exactly one
///
/// Also pick **exactly one** [MonitoringUptimeCheckConfigTarget]:
/// - [MonitoringUptimeCheckConfigMonitoredResource] (e.g. an `uptime_url`).
/// - [MonitoringUptimeCheckConfigResourceGroup] — every member of a
///   `google_monitoring_group`.
/// - [MonitoringUptimeCheckConfigSyntheticMonitor] — Cloud Functions V2 probe.
///
/// ## Period / region semantics
///
/// - `period` is the cadence between probes. The GCP API accepts only
///   the four discrete Duration strings `'60s'`, `'300s'`, `'600s'`,
///   `'900s'`. Defaults to `'300s'` when unset.
/// - `selectedRegions` controls where probes originate. Must include
///   enough regions to cover at least 3 distinct locations, or the
///   API rejects the request. Leave unset to probe from every region.
///
/// ## Checker pool
///
/// `checkerType` selects between Google-managed public checkers
/// ([MonitoringUptimeCheckCheckerType.staticIpCheckers]) and
/// VPC-internal checkers ([MonitoringUptimeCheckCheckerType.vpcCheckers]).
/// The latter is mandatory when [monitoredResource] has type
/// `'servicedirectory_service'`.
///
/// Example (HTTPS uptime check against a public URL):
/// ```dart
/// final apiUptime = GoogleMonitoringUptimeCheckConfig(
///   localName: 'api_uptime',
///   displayName: TfArg.literal('Public API healthz'),
///   timeout: TfArg.literal('10s'),
///   period: TfArg.literal('60s'),
///   httpCheck: MonitoringUptimeCheckConfigHttpCheck(
///     path: .literal('/healthz'),
///     port: .literal(443),
///     useSsl: .literal(true),
///     validateSsl: .literal(true),
///     requestMethod: .literal(.get),
///   ),
///   target: .monitoredResource(
///     MonitoringUptimeCheckConfigMonitoredResource(
///       type: .literal('uptime_url'),
///       labels: .literal({'host': 'api.example.com', 'project_id': 'my-project'}),
///     ),
///   ),
///   contentMatchers: [
///     MonitoringUptimeCheckConfigContentMatchers(
///       content: .literal('"status":"ok"'),
///       matcher: .literal(.containsString),
///     ),
///   ],
///   selectedRegions: [
///     MonitoringUptimeCheckRegion.usa,
///     MonitoringUptimeCheckRegion.europe,
///     MonitoringUptimeCheckRegion.asiaPacific,
///   ],
/// );
/// ```
final class GoogleMonitoringUptimeCheckConfig extends Resource {
  static const String tfType = 'google_monitoring_uptime_check_config';

  GoogleMonitoringUptimeCheckConfig({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> timeout,
    TfArg<String>? period,
    List<MonitoringUptimeCheckRegion>? selectedRegions,
    TfArg<MonitoringUptimeCheckCheckerType>? checkerType,
    required MonitoringUptimeCheckConfigTarget target,
    MonitoringUptimeCheckConfigHttpCheck? httpCheck,
    MonitoringUptimeCheckConfigTcpCheck? tcpCheck,
    List<MonitoringUptimeCheckConfigContentMatchers>? contentMatchers,
    TfArg<bool>? logCheckFailures,
    TfArg<Map<String, String>>? userLabels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'timeout': timeout,
           'period': ?period,
           if (selectedRegions != null)
             'selected_regions': TfArg.literal(
               selectedRegions.map((r) => r.terraformValue).toList(),
             ),
           'checker_type': ?checkerType,
           if (httpCheck != null)
             'http_check': TfArg.literal(httpCheck.encode()),
           if (tcpCheck != null) 'tcp_check': TfArg.literal(tcpCheck.encode()),
           if (contentMatchers != null)
             'content_matchers': TfArg.literal([
               for (final e in contentMatchers) e.encode(),
             ]),
           'log_check_failures': ?logCheckFailures,
           'user_labels': ?userLabels,
           'project': ?project,
           ...target.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMonitoringUptimeCheckConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMonitoringUptimeCheckConfig>`.
  RefTo<GoogleMonitoringUptimeCheckConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `uptime_check_id` attribute.
  TfRef<String> get uptimeCheckId =>
      TfRef.attribute<String>(this, 'uptime_check_id');

  /// Reference to `checker_type` attribute.
  TfRef<String> get checkerTypeRef =>
      TfRef.attribute<String>(this, 'checker_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `log_check_failures` attribute.
  TfRef<bool> get logCheckFailuresRef =>
      TfRef.attribute<bool>(this, 'log_check_failures');

  /// Reference to `period` attribute.
  TfRef<String> get periodRef => TfRef.attribute<String>(this, 'period');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `selected_regions` attribute.
  TfRef<List<String>> get selectedRegionsRef =>
      TfRef.attribute<List<String>>(this, 'selected_regions');

  /// Reference to `timeout` attribute.
  TfRef<String> get timeoutRef => TfRef.attribute<String>(this, 'timeout');

  /// Reference to `user_labels` attribute.
  TfRef<Map<String, String>> get userLabelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'user_labels');

  /// Reference to `uptime_check_id` (the bare ID segment, without the
  /// `projects/.../uptimeCheckConfigs/` prefix).
  TfRef<String> get uptimeCheckIdRef =>
      TfRef.attribute<String>(this, 'uptime_check_id');
}
