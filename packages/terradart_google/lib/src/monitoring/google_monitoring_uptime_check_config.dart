// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
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
enum MonitoringUptimeCheckCheckerType {
  staticIpCheckers('STATIC_IP_CHECKERS'),
  vpcCheckers('VPC_CHECKERS');

  const MonitoringUptimeCheckCheckerType(this.terraformValue);
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
enum MonitoringUptimeCheckRegion {
  usa('USA'),
  usaOregon('USA_OREGON'),
  usaIowa('USA_IOWA'),
  usaVirginia('USA_VIRGINIA'),
  europe('EUROPE'),
  southAmerica('SOUTH_AMERICA'),
  asiaPacific('ASIA_PACIFIC');

  const MonitoringUptimeCheckRegion(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// HTTP check enums
// ===========================================================================

/// HTTP method for `http_check.request_method`.
///
/// Schema enum_values: `["METHOD_UNSPECIFIED", "GET", "POST"]`.
/// Defaults to `GET` when unset.
enum MonitoringUptimeCheckHttpMethod {
  methodUnspecified('METHOD_UNSPECIFIED'),
  get('GET'),
  post('POST');

  const MonitoringUptimeCheckHttpMethod(this.terraformValue);
  final String terraformValue;
}

/// Content-type for `http_check.content_type` (the standard
/// `Content-Type` header sent on probe requests).
///
/// Schema enum_values: `["TYPE_UNSPECIFIED", "URL_ENCODED", "USER_PROVIDED"]`.
/// When `USER_PROVIDED` is selected, the caller must also set
/// [MonitoringUptimeCheckHttpCheck.customContentType] with the literal
/// header value. Using `URL_ENCODED` together with `customContentType`
/// is rejected by the API.
enum MonitoringUptimeCheckContentType {
  typeUnspecified('TYPE_UNSPECIFIED'),
  urlEncoded('URL_ENCODED'),
  userProvided('USER_PROVIDED');

  const MonitoringUptimeCheckContentType(this.terraformValue);
  final String terraformValue;
}

/// Service Agent authentication mode for
/// `http_check.service_agent_authentication.type`.
///
/// Schema enum_values:
/// `["SERVICE_AGENT_AUTHENTICATION_TYPE_UNSPECIFIED", "OIDC_TOKEN"]`.
enum MonitoringUptimeCheckServiceAgentAuthType {
  serviceAgentAuthenticationTypeUnspecified(
    'SERVICE_AGENT_AUTHENTICATION_TYPE_UNSPECIFIED',
  ),
  oidcToken('OIDC_TOKEN');

  const MonitoringUptimeCheckServiceAgentAuthType(this.terraformValue);
  final String terraformValue;
}

/// HTTP status class for `http_check.accepted_response_status_codes[].status_class`.
///
/// Schema enum_values: `["STATUS_CLASS_1XX", "STATUS_CLASS_2XX",
/// "STATUS_CLASS_3XX", "STATUS_CLASS_4XX", "STATUS_CLASS_5XX",
/// "STATUS_CLASS_ANY"]`.
enum MonitoringUptimeCheckStatusClass {
  statusClass1xx('STATUS_CLASS_1XX'),
  statusClass2xx('STATUS_CLASS_2XX'),
  statusClass3xx('STATUS_CLASS_3XX'),
  statusClass4xx('STATUS_CLASS_4XX'),
  statusClass5xx('STATUS_CLASS_5XX'),
  statusClassAny('STATUS_CLASS_ANY');

  const MonitoringUptimeCheckStatusClass(this.terraformValue);
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
enum MonitoringUptimeCheckMatcher {
  containsString('CONTAINS_STRING'),
  notContainsString('NOT_CONTAINS_STRING'),
  matchesRegex('MATCHES_REGEX'),
  notMatchesRegex('NOT_MATCHES_REGEX'),
  matchesJsonPath('MATCHES_JSON_PATH'),
  notMatchesJsonPath('NOT_MATCHES_JSON_PATH');

  const MonitoringUptimeCheckMatcher(this.terraformValue);
  final String terraformValue;
}

/// JSONPath match mode for
/// `content_matchers[].json_path_matcher.json_matcher`.
/// Defaults to [exactMatch] on the GCP API.
///
/// Schema enum_values: `["EXACT_MATCH", "REGEX_MATCH"]`.
enum MonitoringUptimeCheckJsonMatcher {
  exactMatch('EXACT_MATCH'),
  regexMatch('REGEX_MATCH');

  const MonitoringUptimeCheckJsonMatcher(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// Resource-group enum
// ===========================================================================

/// Member-resource type for `resource_group.resource_type`.
///
/// Schema enum_values: `["RESOURCE_TYPE_UNSPECIFIED", "INSTANCE",
/// "AWS_ELB_LOAD_BALANCER"]`.
enum MonitoringUptimeCheckResourceType {
  resourceTypeUnspecified('RESOURCE_TYPE_UNSPECIFIED'),
  instance('INSTANCE'),
  awsElbLoadBalancer('AWS_ELB_LOAD_BALANCER');

  const MonitoringUptimeCheckResourceType(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// monitored_resource + resource_group (mutually exclusive target descriptors)
// ===========================================================================

/// `monitored_resource` block (max=1). Directly target a single monitored
/// resource (e.g. an `uptime_url` against a public hostname, or a
/// `gce_instance`). Mutually exclusive with [MonitoringUptimeCheckResourceGroup].
class MonitoringUptimeCheckMonitoredResource {
  const MonitoringUptimeCheckMonitoredResource({
    required this.type,
    required this.labels,
  });

  /// Monitored-resource type, e.g. `'uptime_url'`, `'gce_instance'`,
  /// `'gae_app'`, `'aws_ec2_instance'`, `'k8s_service'`,
  /// `'servicedirectory_service'`.
  final String type;

  /// Values for every label declared by the monitored-resource
  /// descriptor (e.g. `{'host': 'api.example.com', 'project_id': '...'}`
  /// for `uptime_url`).
  final Map<String, String> labels;

  Map<String, Object?> toArgMap() => {'type': type, 'labels': labels};
}

/// `resource_group` block (max=1). Target every member of a Cloud
/// Monitoring group resource. Mutually exclusive with
/// [MonitoringUptimeCheckMonitoredResource].
class MonitoringUptimeCheckResourceGroup {
  const MonitoringUptimeCheckResourceGroup({this.groupId, this.resourceType});

  /// The `name` of a `google_monitoring_group` resource.
  final String? groupId;

  /// Member-resource type filter applied within the group.
  final MonitoringUptimeCheckResourceType? resourceType;

  Map<String, Object?> toArgMap() => {
    if (groupId != null) 'group_id': groupId,
    if (resourceType != null) 'resource_type': resourceType!.terraformValue,
  };
}

// ===========================================================================
// http_check + nested helpers (auth_info, ping_config,
// accepted_response_status_codes, service_agent_authentication)
// ===========================================================================

/// `http_check.auth_info` block (max=1) — Basic-auth username/password
/// pair. `password` is **schema-flagged sensitive** and is automatically
/// masked on synth (see `extraSensitiveFields` in this resource's
/// wrapper override). Do not use alongside
/// [MonitoringUptimeCheckServiceAgentAuthentication].
class MonitoringUptimeCheckHttpAuthInfo {
  const MonitoringUptimeCheckHttpAuthInfo({
    required this.username,
    this.password,
    this.passwordWo,
    this.passwordWoVersion,
  });

  final String username;

  /// **Sensitive.** Plaintext password — masked in rendered Terraform JSON.
  final String? password;

  /// Write-only variant of [password] (Terraform 1.11+ write-only
  /// attribute). Use this when the password is sourced from a secret
  /// store and should never be tracked in state.
  final String? passwordWo;

  /// Bump this version string whenever [passwordWo] changes so Terraform
  /// recognizes the rotation.
  final String? passwordWoVersion;

  Map<String, Object?> toArgMap() => {
    'username': username,
    if (password != null) 'password': password,
    if (passwordWo != null) 'password_wo': passwordWo,
    if (passwordWoVersion != null) 'password_wo_version': passwordWoVersion,
  };
}

/// `http_check.ping_config` / `tcp_check.ping_config` block (max=1) —
/// configures ICMP pings emitted alongside the main probe (max 3 pings).
class MonitoringUptimeCheckPingConfig {
  const MonitoringUptimeCheckPingConfig({required this.pingsCount});

  /// Number of ICMP pings (max 3).
  final int pingsCount;

  Map<String, Object?> toArgMap() => {'pings_count': pingsCount};
}

/// `http_check.accepted_response_status_codes[]` entry. Either
/// [statusClass] (a code range bucket) or [statusValue] (a literal
/// status code) should be set per entry. When the list is empty,
/// the API accepts the default 200-299 range.
class MonitoringUptimeCheckAcceptedResponseStatus {
  const MonitoringUptimeCheckAcceptedResponseStatus({
    this.statusClass,
    this.statusValue,
  });

  final MonitoringUptimeCheckStatusClass? statusClass;
  final int? statusValue;

  Map<String, Object?> toArgMap() => {
    if (statusClass != null) 'status_class': statusClass!.terraformValue,
    if (statusValue != null) 'status_value': statusValue,
  };
}

/// `http_check.service_agent_authentication` block (max=1) — emit an
/// OIDC token signed by the Monitoring service agent on the probe
/// request. Mutually exclusive with [MonitoringUptimeCheckHttpAuthInfo].
class MonitoringUptimeCheckServiceAgentAuthentication {
  const MonitoringUptimeCheckServiceAgentAuthentication({this.type});

  final MonitoringUptimeCheckServiceAgentAuthType? type;

  Map<String, Object?> toArgMap() => {
    if (type != null) 'type': type!.terraformValue,
  };
}

/// `http_check` block (max=1). Mutually exclusive with [tcpCheck] and
/// [syntheticMonitor] on the parent resource — the Terraform provider
/// enforces the `exactly_one_of` contract at apply time.
class MonitoringUptimeCheckHttpCheck {
  const MonitoringUptimeCheckHttpCheck({
    this.requestMethod,
    this.contentType,
    this.customContentType,
    this.port,
    this.path,
    this.useSsl,
    this.validateSsl,
    this.maskHeaders,
    this.headers,
    this.body,
    this.authInfo,
    this.serviceAgentAuthentication,
    this.acceptedResponseStatusCodes,
    this.pingConfig,
  });

  /// HTTP method to issue. Defaults to
  /// [MonitoringUptimeCheckHttpMethod.get] when unset.
  final MonitoringUptimeCheckHttpMethod? requestMethod;

  /// `Content-Type` header strategy.
  final MonitoringUptimeCheckContentType? contentType;

  /// Literal Content-Type header value. Required when [contentType] is
  /// [MonitoringUptimeCheckContentType.userProvided]; must be left
  /// unset when [contentType] is
  /// [MonitoringUptimeCheckContentType.urlEncoded].
  final String? customContentType;

  /// TCP port. Defaults to 80 when [useSsl] is false, 443 when true.
  final int? port;

  /// Request path. Defaults to `'/'`. A leading `/` is auto-prepended
  /// when missing.
  final String? path;

  /// `true` switches the probe to HTTPS.
  final bool? useSsl;

  /// Validate the SSL certificate chain (only meaningful when [useSsl]
  /// is true and [monitoredResource] type is `'uptime_url'`).
  final bool? validateSsl;

  /// Encrypt header values in stored configs; on Get/List the server
  /// returns `'******'` for masked headers.
  final bool? maskHeaders;

  /// Extra request headers (max 100 entries). Duplicate keys are
  /// rejected by the API — comma-join duplicates as a single value.
  final Map<String, String>? headers;

  /// Request body. Base64-encoded over the wire — pass the raw bytes
  /// here; the codegen layer handles encoding. Required to be empty
  /// when [requestMethod] is [MonitoringUptimeCheckHttpMethod.get].
  final String? body;

  /// Basic auth credentials. Mutually exclusive with
  /// [serviceAgentAuthentication].
  final MonitoringUptimeCheckHttpAuthInfo? authInfo;

  /// Service Agent OIDC authentication. Mutually exclusive with
  /// [authInfo]. Requires [useSsl] = true.
  final MonitoringUptimeCheckServiceAgentAuthentication?
  serviceAgentAuthentication;

  /// Custom set of HTTP status codes to treat as healthy. When unset,
  /// the API accepts 200-299.
  final List<MonitoringUptimeCheckAcceptedResponseStatus>?
  acceptedResponseStatusCodes;

  /// Optional companion ICMP ping configuration.
  final MonitoringUptimeCheckPingConfig? pingConfig;

  Map<String, Object?> toArgMap() => {
    if (requestMethod != null) 'request_method': requestMethod!.terraformValue,
    if (contentType != null) 'content_type': contentType!.terraformValue,
    if (customContentType != null) 'custom_content_type': customContentType,
    if (port != null) 'port': port,
    if (path != null) 'path': path,
    if (useSsl != null) 'use_ssl': useSsl,
    if (validateSsl != null) 'validate_ssl': validateSsl,
    if (maskHeaders != null) 'mask_headers': maskHeaders,
    if (headers != null) 'headers': headers,
    if (body != null) 'body': body,
    if (authInfo != null) 'auth_info': [authInfo!.toArgMap()],
    if (serviceAgentAuthentication != null)
      'service_agent_authentication': [serviceAgentAuthentication!.toArgMap()],
    if (acceptedResponseStatusCodes != null)
      'accepted_response_status_codes': acceptedResponseStatusCodes!
          .map((s) => s.toArgMap())
          .toList(),
    if (pingConfig != null) 'ping_config': [pingConfig!.toArgMap()],
  };
}

// ===========================================================================
// tcp_check
// ===========================================================================

/// `tcp_check` block (max=1). Mutually exclusive with [httpCheck] and
/// [syntheticMonitor] on the parent resource.
class MonitoringUptimeCheckTcpCheck {
  const MonitoringUptimeCheckTcpCheck({required this.port, this.pingConfig});

  /// TCP port to connect to (combined with the host derived from
  /// [monitoredResource]).
  final int port;

  /// Optional companion ICMP ping configuration.
  final MonitoringUptimeCheckPingConfig? pingConfig;

  Map<String, Object?> toArgMap() => {
    'port': port,
    if (pingConfig != null) 'ping_config': [pingConfig!.toArgMap()],
  };
}

// ===========================================================================
// synthetic_monitor + cloud_function_v2
// ===========================================================================

/// `synthetic_monitor.cloud_function_v2` block (min=1, max=1) — target
/// Cloud Functions V2 instance that implements the probe logic.
class MonitoringUptimeCheckCloudFunctionV2 {
  const MonitoringUptimeCheckCloudFunctionV2({required this.name});

  /// Fully-qualified Cloud Functions V2 function name, e.g.
  /// `'projects/p/locations/us-central1/functions/my-probe'`.
  final String name;

  Map<String, Object?> toArgMap() => {'name': name};
}

/// `synthetic_monitor` block (max=1). Mutually exclusive with
/// [httpCheck] and [tcpCheck] on the parent resource.
class MonitoringUptimeCheckSyntheticMonitor {
  const MonitoringUptimeCheckSyntheticMonitor({required this.cloudFunctionV2});

  final MonitoringUptimeCheckCloudFunctionV2 cloudFunctionV2;

  Map<String, Object?> toArgMap() => {
    'cloud_function_v2': [cloudFunctionV2.toArgMap()],
  };
}

// ===========================================================================
// content_matchers + json_path_matcher
// ===========================================================================

/// `content_matchers[].json_path_matcher` block (max=1). Used by the
/// `MATCHES_JSON_PATH` / `NOT_MATCHES_JSON_PATH` parent matchers.
class MonitoringUptimeCheckJsonPathMatcher {
  const MonitoringUptimeCheckJsonPathMatcher({
    required this.jsonPath,
    this.jsonMatcher,
  });

  /// JSONPath expression to resolve before applying the [jsonMatcher].
  final String jsonPath;
  final MonitoringUptimeCheckJsonMatcher? jsonMatcher;

  Map<String, Object?> toArgMap() => {
    'json_path': jsonPath,
    if (jsonMatcher != null) 'json_matcher': jsonMatcher!.terraformValue,
  };
}

/// One entry in `google_monitoring_uptime_check_config.content_matchers`.
///
/// Only the first entry is currently honored by the GCP API — the
/// schema reserves the list shape for future expansion.
class MonitoringUptimeCheckContentMatcher {
  const MonitoringUptimeCheckContentMatcher({
    required this.content,
    this.matcher,
    this.jsonPathMatcher,
  });

  /// Content to match (max 1024 bytes). Interpretation depends on
  /// [matcher] — literal substring for `CONTAINS_*`, regex for
  /// `MATCHES_REGEX*`, etc.
  final String content;

  /// Match mode. Defaults to
  /// [MonitoringUptimeCheckMatcher.containsString] on the API side.
  final MonitoringUptimeCheckMatcher? matcher;

  /// Required when [matcher] is
  /// [MonitoringUptimeCheckMatcher.matchesJsonPath] or
  /// [MonitoringUptimeCheckMatcher.notMatchesJsonPath].
  final MonitoringUptimeCheckJsonPathMatcher? jsonPathMatcher;

  Map<String, Object?> toArgMap() => {
    'content': content,
    if (matcher != null) 'matcher': matcher!.terraformValue,
    if (jsonPathMatcher != null)
      'json_path_matcher': [jsonPathMatcher!.toArgMap()],
  };
}

/// Factory wrapper for `google_monitoring_uptime_check_config` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Manages a Cloud Monitoring **uptime check** — a periodic probe (HTTP /
/// HTTPS, plain TCP, or a Synthetic Monitor Cloud Function) launched from
/// Google-managed checker pools (or your own VPC checkers) against a
/// target resource.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_monitoring_uptime_check_config.`).
/// - `displayName`: human-friendly label shown in the Monitoring console.
/// - `timeout`: Duration string for the per-probe budget (e.g. `'10s'`).
///   Valid range 1-60 seconds.
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
/// Also pick **exactly one** target descriptor:
/// - [monitoredResource] — directly target a single
///   [MonitoringUptimeCheckMonitoredResource] (e.g. an `uptime_url`).
/// - [resourceGroup] — target every member of a `google_monitoring_group`
///   resource (referenced by [MonitoringUptimeCheckResourceGroup.groupId]).
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
///   httpCheck: const MonitoringUptimeCheckHttpCheck(
///     path: '/healthz',
///     port: 443,
///     useSsl: true,
///     validateSsl: true,
///     requestMethod: MonitoringUptimeCheckHttpMethod.get,
///   ),
///   monitoredResource: const MonitoringUptimeCheckMonitoredResource(
///     type: 'uptime_url',
///     labels: {'host': 'api.example.com', 'project_id': 'my-project'},
///   ),
///   contentMatchers: const [
///     MonitoringUptimeCheckContentMatcher(
///       content: '"status":"ok"',
///       matcher: MonitoringUptimeCheckMatcher.containsString,
///     ),
///   ],
///   selectedRegions: [
///     MonitoringUptimeCheckRegion.usa,
///     MonitoringUptimeCheckRegion.europe,
///     MonitoringUptimeCheckRegion.asiaPacific,
///   ],
/// );
/// ```
///
/// Composition pattern: extends `Resource<$GoogleMonitoringUptimeCheckConfig>`
/// for runtime behavior. Nested-block helpers ([MonitoringUptimeCheckHttpCheck],
/// [MonitoringUptimeCheckTcpCheck], [MonitoringUptimeCheckContentMatcher],
/// [MonitoringUptimeCheckMonitoredResource], [MonitoringUptimeCheckResourceGroup],
/// [MonitoringUptimeCheckSyntheticMonitor], etc.) are modeled in the
/// `prelude` below.
final class GoogleMonitoringUptimeCheckConfig extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_monitoring_uptime_check_config';

  GoogleMonitoringUptimeCheckConfig({
    required super.localName,
    required TfArg<String> displayName,
    required TfArg<String> timeout,
    TfArg<String>? period,
    List<MonitoringUptimeCheckRegion>? selectedRegions,
    TfArg<MonitoringUptimeCheckCheckerType>? checkerType,
    MonitoringUptimeCheckMonitoredResource? monitoredResource,
    MonitoringUptimeCheckResourceGroup? resourceGroup,
    MonitoringUptimeCheckHttpCheck? httpCheck,
    MonitoringUptimeCheckTcpCheck? tcpCheck,
    MonitoringUptimeCheckSyntheticMonitor? syntheticMonitor,
    List<MonitoringUptimeCheckContentMatcher>? contentMatchers,
    TfArg<bool>? logCheckFailures,
    TfArg<Map<String, String>>? userLabels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'display_name': displayName,
           'timeout': timeout,
           if (period != null) 'period': period,
           if (selectedRegions != null)
             'selected_regions': TfArg.literal(
               selectedRegions.map((r) => r.terraformValue).toList(),
             ),
           if (checkerType != null) 'checker_type': checkerType,
           if (monitoredResource != null)
             'monitored_resource': TfArg.literal([
               monitoredResource.toArgMap(),
             ]),
           if (resourceGroup != null)
             'resource_group': TfArg.literal([resourceGroup.toArgMap()]),
           if (httpCheck != null)
             'http_check': TfArg.literal([httpCheck.toArgMap()]),
           if (tcpCheck != null)
             'tcp_check': TfArg.literal([tcpCheck.toArgMap()]),
           if (syntheticMonitor != null)
             'synthetic_monitor': TfArg.literal([syntheticMonitor.toArgMap()]),
           if (contentMatchers != null)
             'content_matchers': TfArg.literal(
               contentMatchers.map((c) => c.toArgMap()).toList(),
             ),
           if (logCheckFailures != null) 'log_check_failures': logCheckFailures,
           if (userLabels != null) 'user_labels': userLabels,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleMonitoringUptimeCheckConfigSensitive;

  /// Reference to `id` attribute (the uptime check's full resource name,
  /// `projects/{project}/uptimeCheckConfigs/{uptime_check_id}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute (same shape as [id]; populated by
  /// Cloud Monitoring on create).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `uptime_check_id` (the bare ID segment, without the
  /// `projects/.../uptimeCheckConfigs/` prefix).
  TfRef<String> get uptimeCheckIdRef =>
      TfRef.attribute<String>(this, 'uptime_check_id');
}
