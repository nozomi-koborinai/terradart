// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_application_gateway`.
const Set<String> _azurermApplicationGatewaySensitive = <String>{
  'ssl_certificate.data',
  'ssl_certificate.password',
  'trusted_client_certificate.data',
  'trusted_root_certificate.data',
};

/// Typed helper for the `autoscale_configuration` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayAutoscaleConfiguration {
  const ApplicationGatewayAutoscaleConfiguration({
    this.maxCapacity,
    required this.minCapacity,
  });

  final TfArg<num>? maxCapacity;

  final TfArg<num> minCapacity;

  @internal
  Map<String, Object?> encode() => {
    'max_capacity': ?maxCapacity?.toTfJson(),
    'min_capacity': minCapacity.toTfJson(),
  };
}

/// Typed helper for the `backend` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayBackend {
  const ApplicationGatewayBackend({
    this.clientIpPreservationEnabled,
    this.hostName,
    required this.name,
    required this.port,
    this.probeName,
    required this.protocol,
    this.timeoutInSeconds,
    this.trustedRootCertificateNames,
  });

  final TfArg<bool>? clientIpPreservationEnabled;

  final TfArg<String>? hostName;

  final TfArg<String> name;

  final TfArg<num> port;

  final TfArg<String>? probeName;

  final ApplicationGatewayBackendProtocol protocol;

  final TfArg<num>? timeoutInSeconds;

  final TfArg<List<String>>? trustedRootCertificateNames;

  @internal
  Map<String, Object?> encode() => {
    'client_ip_preservation_enabled': ?clientIpPreservationEnabled?.toTfJson(),
    'host_name': ?hostName?.toTfJson(),
    'name': name.toTfJson(),
    'port': port.toTfJson(),
    'probe_name': ?probeName?.toTfJson(),
    'protocol': protocol.toTfJson(),
    'timeout_in_seconds': ?timeoutInSeconds?.toTfJson(),
    'trusted_root_certificate_names': ?trustedRootCertificateNames?.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const ApplicationGatewayBackendProtocol._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayBackendProtocol.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayBackendProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayBackendProtocol.arg(TfArg<String> arg) : this._(arg);

  static const tcp = ApplicationGatewayBackendProtocol._(TfArgLiteral('Tcp'));
  static const tls = ApplicationGatewayBackendProtocol._(TfArgLiteral('Tls'));

  static const List<ApplicationGatewayBackendProtocol> values = [tcp, tls];
}

/// Typed helper for the `backend_address_pool` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayBackendAddressPool {
  const ApplicationGatewayBackendAddressPool({
    this.fqdns,
    this.ipAddresses,
    required this.name,
  });

  final TfArg<List<String>>? fqdns;

  final TfArg<List<String>>? ipAddresses;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'fqdns': ?fqdns?.toTfJson(),
    'ip_addresses': ?ipAddresses?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `backend_http_settings` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayBackendHttpSettings {
  const ApplicationGatewayBackendHttpSettings({
    this.affinityCookieName,
    this.certificateChainValidationEnabled,
    required this.cookieBasedAffinity,
    this.dedicatedBackendConnectionEnabled,
    this.hostName,
    required this.name,
    this.path,
    this.pickHostNameFromBackendAddress,
    required this.port,
    this.probeName,
    required this.protocol,
    this.requestTimeout,
    this.sniName,
    this.sniValidationEnabled,
    this.trustedRootCertificateNames,
    this.connectionDraining,
  });

  final TfArg<String>? affinityCookieName;

  final TfArg<bool>? certificateChainValidationEnabled;

  final ApplicationGatewayCookieBasedAffinity cookieBasedAffinity;

  final TfArg<bool>? dedicatedBackendConnectionEnabled;

  final TfArg<String>? hostName;

  final TfArg<String> name;

  final TfArg<String>? path;

  final TfArg<bool>? pickHostNameFromBackendAddress;

  final TfArg<num> port;

  final TfArg<String>? probeName;

  final ApplicationGatewayBackendHttpSettingsProtocol protocol;

  final TfArg<num>? requestTimeout;

  final TfArg<String>? sniName;

  final TfArg<bool>? sniValidationEnabled;

  final TfArg<List<String>>? trustedRootCertificateNames;

  final ApplicationGatewayConnectionDraining? connectionDraining;

  @internal
  Map<String, Object?> encode() => {
    'affinity_cookie_name': ?affinityCookieName?.toTfJson(),
    'certificate_chain_validation_enabled': ?certificateChainValidationEnabled
        ?.toTfJson(),
    'cookie_based_affinity': cookieBasedAffinity.toTfJson(),
    'dedicated_backend_connection_enabled': ?dedicatedBackendConnectionEnabled
        ?.toTfJson(),
    'host_name': ?hostName?.toTfJson(),
    'name': name.toTfJson(),
    'path': ?path?.toTfJson(),
    'pick_host_name_from_backend_address': ?pickHostNameFromBackendAddress
        ?.toTfJson(),
    'port': port.toTfJson(),
    'probe_name': ?probeName?.toTfJson(),
    'protocol': protocol.toTfJson(),
    'request_timeout': ?requestTimeout?.toTfJson(),
    'sni_name': ?sniName?.toTfJson(),
    'sni_validation_enabled': ?sniValidationEnabled?.toTfJson(),
    'trusted_root_certificate_names': ?trustedRootCertificateNames?.toTfJson(),
    'connection_draining': ?connectionDraining?.encode(),
  };
}

/// `cookie_based_affinity` — derived from the provider schema description.
extension type const ApplicationGatewayCookieBasedAffinity._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayCookieBasedAffinity.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayCookieBasedAffinity.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayCookieBasedAffinity.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = ApplicationGatewayCookieBasedAffinity._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = ApplicationGatewayCookieBasedAffinity._(
    TfArgLiteral('Enabled'),
  );

  static const List<ApplicationGatewayCookieBasedAffinity> values = [
    disabled,
    enabled,
  ];
}

/// `protocol` — derived from the provider schema description.
extension type const ApplicationGatewayBackendHttpSettingsProtocol._(
  TfArg<String> _
) implements TfArg<String> {
  ApplicationGatewayBackendHttpSettingsProtocol.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayBackendHttpSettingsProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayBackendHttpSettingsProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const http = ApplicationGatewayBackendHttpSettingsProtocol._(
    TfArgLiteral('Http'),
  );
  static const https = ApplicationGatewayBackendHttpSettingsProtocol._(
    TfArgLiteral('Https'),
  );

  static const List<ApplicationGatewayBackendHttpSettingsProtocol> values = [
    http,
    https,
  ];
}

/// Typed helper for the `backend_http_settings.connection_draining` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayConnectionDraining {
  const ApplicationGatewayConnectionDraining({
    required this.drainTimeoutSec,
    required this.enabled,
  });

  final TfArg<num> drainTimeoutSec;

  final TfArg<bool> enabled;

  @internal
  Map<String, Object?> encode() => {
    'drain_timeout_sec': drainTimeoutSec.toTfJson(),
    'enabled': enabled.toTfJson(),
  };
}

/// Typed helper for the `custom_error_configuration` block of
/// `azurerm_application_gateway` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApplicationGatewayCustomErrorConfiguration {
  const ApplicationGatewayCustomErrorConfiguration({
    required this.customErrorPageUrl,
    required this.statusCode,
  });

  final TfArg<String> customErrorPageUrl;

  final ApplicationGatewayStatusCode statusCode;

  @internal
  Map<String, Object?> encode() => {
    'custom_error_page_url': customErrorPageUrl.toTfJson(),
    'status_code': statusCode.toTfJson(),
  };
}

/// `status_code` — derived from the provider schema description.
extension type const ApplicationGatewayStatusCode._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayStatusCode.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayStatusCode.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayStatusCode.arg(TfArg<String> arg) : this._(arg);

  static const httpstatus500 = ApplicationGatewayStatusCode._(
    TfArgLiteral('HttpStatus500'),
  );
  static const httpstatus504 = ApplicationGatewayStatusCode._(
    TfArgLiteral('HttpStatus504'),
  );
  static const httpstatus503 = ApplicationGatewayStatusCode._(
    TfArgLiteral('HttpStatus503'),
  );
  static const httpstatus502 = ApplicationGatewayStatusCode._(
    TfArgLiteral('HttpStatus502'),
  );
  static const httpstatus400 = ApplicationGatewayStatusCode._(
    TfArgLiteral('HttpStatus400'),
  );
  static const httpstatus408 = ApplicationGatewayStatusCode._(
    TfArgLiteral('HttpStatus408'),
  );
  static const httpstatus405 = ApplicationGatewayStatusCode._(
    TfArgLiteral('HttpStatus405'),
  );
  static const httpstatus404 = ApplicationGatewayStatusCode._(
    TfArgLiteral('HttpStatus404'),
  );
  static const httpstatus403 = ApplicationGatewayStatusCode._(
    TfArgLiteral('HttpStatus403'),
  );

  static const List<ApplicationGatewayStatusCode> values = [
    httpstatus500,
    httpstatus504,
    httpstatus503,
    httpstatus502,
    httpstatus400,
    httpstatus408,
    httpstatus405,
    httpstatus404,
    httpstatus403,
  ];
}

/// Typed helper for the `frontend_ip_configuration` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayFrontendIpConfiguration {
  const ApplicationGatewayFrontendIpConfiguration({
    required this.name,
    this.privateIpAddress,
    this.privateIpAddressAllocation,
    this.privateLinkConfigurationName,
    this.publicIpAddressId,
    this.subnetId,
  });

  final TfArg<String> name;

  final TfArg<String>? privateIpAddress;

  final ApplicationGatewayPrivateIpAddressAllocation?
  privateIpAddressAllocation;

  final TfArg<String>? privateLinkConfigurationName;

  final TfArg<String>? publicIpAddressId;

  final TfArg<String>? subnetId;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'private_ip_address': ?privateIpAddress?.toTfJson(),
    'private_ip_address_allocation': ?privateIpAddressAllocation?.toTfJson(),
    'private_link_configuration_name': ?privateLinkConfigurationName
        ?.toTfJson(),
    'public_ip_address_id': ?publicIpAddressId?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
  };
}

/// `private_ip_address_allocation` — derived from the provider schema description.
extension type const ApplicationGatewayPrivateIpAddressAllocation._(
  TfArg<String> _
) implements TfArg<String> {
  ApplicationGatewayPrivateIpAddressAllocation.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayPrivateIpAddressAllocation.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayPrivateIpAddressAllocation.arg(TfArg<String> arg)
    : this._(arg);

  static const dynamic = ApplicationGatewayPrivateIpAddressAllocation._(
    TfArgLiteral('Dynamic'),
  );
  static const static = ApplicationGatewayPrivateIpAddressAllocation._(
    TfArgLiteral('Static'),
  );

  static const List<ApplicationGatewayPrivateIpAddressAllocation> values = [
    dynamic,
    static,
  ];
}

/// Typed helper for the `frontend_port` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayFrontendPort {
  const ApplicationGatewayFrontendPort({
    required this.name,
    required this.port,
  });

  final TfArg<String> name;

  final TfArg<num> port;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `gateway_ip_configuration` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayIpConfiguration {
  const ApplicationGatewayIpConfiguration({
    required this.name,
    required this.subnetId,
  });

  final TfArg<String> name;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Typed helper for the `global` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayGlobal {
  const ApplicationGatewayGlobal({
    required this.requestBufferingEnabled,
    required this.responseBufferingEnabled,
  });

  final TfArg<bool> requestBufferingEnabled;

  final TfArg<bool> responseBufferingEnabled;

  @internal
  Map<String, Object?> encode() => {
    'request_buffering_enabled': requestBufferingEnabled.toTfJson(),
    'response_buffering_enabled': responseBufferingEnabled.toTfJson(),
  };
}

/// Typed helper for the `http_listener` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayHttpListener {
  const ApplicationGatewayHttpListener({
    this.firewallPolicyId,
    required this.frontendIpConfigurationName,
    required this.frontendPortName,
    this.hostName,
    this.hostNames,
    required this.name,
    required this.protocol,
    this.requireSni,
    this.sslCertificateName,
    this.sslProfileName,
    this.customErrorConfiguration,
  });

  final TfArg<String>? firewallPolicyId;

  final TfArg<String> frontendIpConfigurationName;

  final TfArg<String> frontendPortName;

  final TfArg<String>? hostName;

  final TfArg<List<String>>? hostNames;

  final TfArg<String> name;

  final ApplicationGatewayBackendHttpSettingsProtocol protocol;

  final TfArg<bool>? requireSni;

  final TfArg<String>? sslCertificateName;

  final TfArg<String>? sslProfileName;

  final List<ApplicationGatewayCustomErrorConfiguration>?
  customErrorConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'firewall_policy_id': ?firewallPolicyId?.toTfJson(),
    'frontend_ip_configuration_name': frontendIpConfigurationName.toTfJson(),
    'frontend_port_name': frontendPortName.toTfJson(),
    'host_name': ?hostName?.toTfJson(),
    'host_names': ?hostNames?.toTfJson(),
    'name': name.toTfJson(),
    'protocol': protocol.toTfJson(),
    'require_sni': ?requireSni?.toTfJson(),
    'ssl_certificate_name': ?sslCertificateName?.toTfJson(),
    'ssl_profile_name': ?sslProfileName?.toTfJson(),
    if (customErrorConfiguration != null)
      'custom_error_configuration': [
        for (final e in customErrorConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayIdentity {
  const ApplicationGatewayIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `listener` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayListener {
  const ApplicationGatewayListener({
    required this.frontendIpConfigurationName,
    required this.frontendPortName,
    this.hostNames,
    required this.name,
    required this.protocol,
    this.sslCertificateName,
    this.sslProfileName,
  });

  final TfArg<String> frontendIpConfigurationName;

  final TfArg<String> frontendPortName;

  final TfArg<List<String>>? hostNames;

  final TfArg<String> name;

  final ApplicationGatewayBackendProtocol protocol;

  final TfArg<String>? sslCertificateName;

  final TfArg<String>? sslProfileName;

  @internal
  Map<String, Object?> encode() => {
    'frontend_ip_configuration_name': frontendIpConfigurationName.toTfJson(),
    'frontend_port_name': frontendPortName.toTfJson(),
    'host_names': ?hostNames?.toTfJson(),
    'name': name.toTfJson(),
    'protocol': protocol.toTfJson(),
    'ssl_certificate_name': ?sslCertificateName?.toTfJson(),
    'ssl_profile_name': ?sslProfileName?.toTfJson(),
  };
}

/// Typed helper for the `private_link_configuration` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayPrivateLinkConfiguration {
  const ApplicationGatewayPrivateLinkConfiguration({
    required this.name,
    required this.ipConfiguration,
  });

  final TfArg<String> name;

  final List<ApplicationGatewayPrivateLinkConfigurationIpConfiguration>
  ipConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'ip_configuration': [for (final e in ipConfiguration) e.encode()],
  };
}

/// Typed helper for the `private_link_configuration.ip_configuration` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayPrivateLinkConfigurationIpConfiguration {
  const ApplicationGatewayPrivateLinkConfigurationIpConfiguration({
    required this.name,
    required this.primary,
    this.privateIpAddress,
    required this.privateIpAddressAllocation,
    required this.subnetId,
  });

  final TfArg<String> name;

  final TfArg<bool> primary;

  final TfArg<String>? privateIpAddress;

  final ApplicationGatewayPrivateIpAddressAllocation privateIpAddressAllocation;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'primary': primary.toTfJson(),
    'private_ip_address': ?privateIpAddress?.toTfJson(),
    'private_ip_address_allocation': privateIpAddressAllocation.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Typed helper for the `probe` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayProbe {
  const ApplicationGatewayProbe({
    this.host,
    required this.interval,
    this.minimumServers,
    required this.name,
    this.path,
    this.pickHostNameFromBackendHttpSettings,
    this.port,
    required this.protocol,
    this.proxyProtocolHeaderEnabled,
    required this.timeout,
    required this.unhealthyThreshold,
    this.match,
  });

  final TfArg<String>? host;

  final TfArg<num> interval;

  final TfArg<num>? minimumServers;

  final TfArg<String> name;

  final TfArg<String>? path;

  final TfArg<bool>? pickHostNameFromBackendHttpSettings;

  final TfArg<num>? port;

  final ApplicationGatewayProbeProtocol protocol;

  final TfArg<bool>? proxyProtocolHeaderEnabled;

  final TfArg<num> timeout;

  final TfArg<num> unhealthyThreshold;

  final ApplicationGatewayMatch? match;

  @internal
  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'interval': interval.toTfJson(),
    'minimum_servers': ?minimumServers?.toTfJson(),
    'name': name.toTfJson(),
    'path': ?path?.toTfJson(),
    'pick_host_name_from_backend_http_settings':
        ?pickHostNameFromBackendHttpSettings?.toTfJson(),
    'port': ?port?.toTfJson(),
    'protocol': protocol.toTfJson(),
    'proxy_protocol_header_enabled': ?proxyProtocolHeaderEnabled?.toTfJson(),
    'timeout': timeout.toTfJson(),
    'unhealthy_threshold': unhealthyThreshold.toTfJson(),
    'match': ?match?.encode(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const ApplicationGatewayProbeProtocol._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayProbeProtocol.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayProbeProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayProbeProtocol.arg(TfArg<String> arg) : this._(arg);

  static const http = ApplicationGatewayProbeProtocol._(TfArgLiteral('Http'));
  static const https = ApplicationGatewayProbeProtocol._(TfArgLiteral('Https'));
  static const tcp = ApplicationGatewayProbeProtocol._(TfArgLiteral('Tcp'));
  static const tls = ApplicationGatewayProbeProtocol._(TfArgLiteral('Tls'));

  static const List<ApplicationGatewayProbeProtocol> values = [
    http,
    https,
    tcp,
    tls,
  ];
}

/// Typed helper for the `probe.match` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayMatch {
  const ApplicationGatewayMatch({this.body, required this.statusCode});

  final TfArg<String>? body;

  final TfArg<List<String>> statusCode;

  @internal
  Map<String, Object?> encode() => {
    'body': ?body?.toTfJson(),
    'status_code': statusCode.toTfJson(),
  };
}

/// Typed helper for the `redirect_configuration` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayRedirectConfiguration {
  const ApplicationGatewayRedirectConfiguration({
    this.includePath,
    this.includeQueryString,
    required this.name,
    required this.redirectType,
    this.targetListenerName,
    this.targetUrl,
  });

  final TfArg<bool>? includePath;

  final TfArg<bool>? includeQueryString;

  final TfArg<String> name;

  final ApplicationGatewayRedirectType redirectType;

  final TfArg<String>? targetListenerName;

  final TfArg<String>? targetUrl;

  @internal
  Map<String, Object?> encode() => {
    'include_path': ?includePath?.toTfJson(),
    'include_query_string': ?includeQueryString?.toTfJson(),
    'name': name.toTfJson(),
    'redirect_type': redirectType.toTfJson(),
    'target_listener_name': ?targetListenerName?.toTfJson(),
    'target_url': ?targetUrl?.toTfJson(),
  };
}

/// `redirect_type` — derived from the provider schema description.
extension type const ApplicationGatewayRedirectType._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayRedirectType.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayRedirectType.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayRedirectType.arg(TfArg<String> arg) : this._(arg);

  static const found = ApplicationGatewayRedirectType._(TfArgLiteral('Found'));
  static const permanent = ApplicationGatewayRedirectType._(
    TfArgLiteral('Permanent'),
  );
  static const seeother = ApplicationGatewayRedirectType._(
    TfArgLiteral('SeeOther'),
  );
  static const temporary = ApplicationGatewayRedirectType._(
    TfArgLiteral('Temporary'),
  );

  static const List<ApplicationGatewayRedirectType> values = [
    found,
    permanent,
    seeother,
    temporary,
  ];
}

/// Typed helper for the `request_routing_rule` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayRequestRoutingRule {
  const ApplicationGatewayRequestRoutingRule({
    this.backendAddressPoolName,
    this.backendHttpSettingsName,
    required this.httpListenerName,
    required this.name,
    this.priority,
    this.redirectConfigurationName,
    this.rewriteRuleSetName,
    required this.ruleType,
    this.urlPathMapName,
  });

  final TfArg<String>? backendAddressPoolName;

  final TfArg<String>? backendHttpSettingsName;

  final TfArg<String> httpListenerName;

  final TfArg<String> name;

  final TfArg<num>? priority;

  final TfArg<String>? redirectConfigurationName;

  final TfArg<String>? rewriteRuleSetName;

  final ApplicationGatewayRuleType ruleType;

  final TfArg<String>? urlPathMapName;

  @internal
  Map<String, Object?> encode() => {
    'backend_address_pool_name': ?backendAddressPoolName?.toTfJson(),
    'backend_http_settings_name': ?backendHttpSettingsName?.toTfJson(),
    'http_listener_name': httpListenerName.toTfJson(),
    'name': name.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'redirect_configuration_name': ?redirectConfigurationName?.toTfJson(),
    'rewrite_rule_set_name': ?rewriteRuleSetName?.toTfJson(),
    'rule_type': ruleType.toTfJson(),
    'url_path_map_name': ?urlPathMapName?.toTfJson(),
  };
}

/// `rule_type` — derived from the provider schema description.
extension type const ApplicationGatewayRuleType._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayRuleType.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayRuleType.arg(TfArg<String> arg) : this._(arg);

  static const basic = ApplicationGatewayRuleType._(TfArgLiteral('Basic'));
  static const pathbasedrouting = ApplicationGatewayRuleType._(
    TfArgLiteral('PathBasedRouting'),
  );

  static const List<ApplicationGatewayRuleType> values = [
    basic,
    pathbasedrouting,
  ];
}

/// Typed helper for the `rewrite_rule_set` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayRewriteRuleSet {
  const ApplicationGatewayRewriteRuleSet({
    required this.name,
    this.rewriteRule,
  });

  final TfArg<String> name;

  final List<ApplicationGatewayRewriteRule>? rewriteRule;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (rewriteRule != null)
      'rewrite_rule': [for (final e in rewriteRule!) e.encode()],
  };
}

/// Typed helper for the `rewrite_rule_set.rewrite_rule` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayRewriteRule {
  const ApplicationGatewayRewriteRule({
    required this.name,
    required this.ruleSequence,
    this.condition,
    this.requestHeaderConfiguration,
    this.responseHeaderConfiguration,
    this.url,
  });

  final TfArg<String> name;

  final TfArg<num> ruleSequence;

  final List<ApplicationGatewayCondition>? condition;

  final List<ApplicationGatewayRequestHeaderConfiguration>?
  requestHeaderConfiguration;

  final List<ApplicationGatewayResponseHeaderConfiguration>?
  responseHeaderConfiguration;

  final ApplicationGatewayUrl? url;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'rule_sequence': ruleSequence.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (requestHeaderConfiguration != null)
      'request_header_configuration': [
        for (final e in requestHeaderConfiguration!) e.encode(),
      ],
    if (responseHeaderConfiguration != null)
      'response_header_configuration': [
        for (final e in responseHeaderConfiguration!) e.encode(),
      ],
    'url': ?url?.encode(),
  };
}

/// Typed helper for the `rewrite_rule_set.rewrite_rule.condition` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayCondition {
  const ApplicationGatewayCondition({
    this.ignoreCase,
    this.negate,
    required this.pattern,
    required this.variable,
  });

  final TfArg<bool>? ignoreCase;

  final TfArg<bool>? negate;

  final TfArg<String> pattern;

  final TfArg<String> variable;

  @internal
  Map<String, Object?> encode() => {
    'ignore_case': ?ignoreCase?.toTfJson(),
    'negate': ?negate?.toTfJson(),
    'pattern': pattern.toTfJson(),
    'variable': variable.toTfJson(),
  };
}

/// Typed helper for the `rewrite_rule_set.rewrite_rule.request_header_configuration` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayRequestHeaderConfiguration {
  const ApplicationGatewayRequestHeaderConfiguration({
    required this.headerName,
    required this.headerValue,
  });

  final TfArg<String> headerName;

  final TfArg<String> headerValue;

  @internal
  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': headerValue.toTfJson(),
  };
}

/// Typed helper for the `rewrite_rule_set.rewrite_rule.response_header_configuration` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayResponseHeaderConfiguration {
  const ApplicationGatewayResponseHeaderConfiguration({
    required this.headerName,
    required this.headerValue,
  });

  final TfArg<String> headerName;

  final TfArg<String> headerValue;

  @internal
  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': headerValue.toTfJson(),
  };
}

/// Typed helper for the `rewrite_rule_set.rewrite_rule.url` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayUrl {
  const ApplicationGatewayUrl({
    this.components,
    this.path,
    this.queryString,
    this.reroute,
  });

  final ApplicationGatewayComponents? components;

  final TfArg<String>? path;

  final TfArg<String>? queryString;

  final TfArg<bool>? reroute;

  @internal
  Map<String, Object?> encode() => {
    'components': ?components?.toTfJson(),
    'path': ?path?.toTfJson(),
    'query_string': ?queryString?.toTfJson(),
    'reroute': ?reroute?.toTfJson(),
  };
}

/// `components` — derived from the provider schema description.
extension type const ApplicationGatewayComponents._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayComponents.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayComponents.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayComponents.arg(TfArg<String> arg) : this._(arg);

  static const pathOnly = ApplicationGatewayComponents._(
    TfArgLiteral('path_only'),
  );
  static const queryStringOnly = ApplicationGatewayComponents._(
    TfArgLiteral('query_string_only'),
  );

  static const List<ApplicationGatewayComponents> values = [
    pathOnly,
    queryStringOnly,
  ];
}

/// Typed helper for the `routing_rule` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayRoutingRule {
  const ApplicationGatewayRoutingRule({
    required this.backendAddressPoolName,
    required this.backendName,
    required this.listenerName,
    required this.name,
    required this.priority,
  });

  final TfArg<String> backendAddressPoolName;

  final TfArg<String> backendName;

  final TfArg<String> listenerName;

  final TfArg<String> name;

  final TfArg<num> priority;

  @internal
  Map<String, Object?> encode() => {
    'backend_address_pool_name': backendAddressPoolName.toTfJson(),
    'backend_name': backendName.toTfJson(),
    'listener_name': listenerName.toTfJson(),
    'name': name.toTfJson(),
    'priority': priority.toTfJson(),
  };
}

/// Typed helper for the `sku` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewaySku {
  const ApplicationGatewaySku({
    this.capacity,
    required this.name,
    required this.tier,
  });

  final TfArg<num>? capacity;

  final ApplicationGatewaySkuName name;

  final ApplicationGatewayTier tier;

  @internal
  Map<String, Object?> encode() => {
    'capacity': ?capacity?.toTfJson(),
    'name': name.toTfJson(),
    'tier': tier.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const ApplicationGatewaySkuName._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewaySkuName.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewaySkuName.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewaySkuName.arg(TfArg<String> arg) : this._(arg);

  static const basic = ApplicationGatewaySkuName._(TfArgLiteral('Basic'));
  static const standardLarge = ApplicationGatewaySkuName._(
    TfArgLiteral('Standard_Large'),
  );
  static const standardMedium = ApplicationGatewaySkuName._(
    TfArgLiteral('Standard_Medium'),
  );
  static const standardSmall = ApplicationGatewaySkuName._(
    TfArgLiteral('Standard_Small'),
  );
  static const standardV2 = ApplicationGatewaySkuName._(
    TfArgLiteral('Standard_v2'),
  );
  static const wafLarge = ApplicationGatewaySkuName._(
    TfArgLiteral('WAF_Large'),
  );
  static const wafMedium = ApplicationGatewaySkuName._(
    TfArgLiteral('WAF_Medium'),
  );
  static const wafV2 = ApplicationGatewaySkuName._(TfArgLiteral('WAF_v2'));

  static const List<ApplicationGatewaySkuName> values = [
    basic,
    standardLarge,
    standardMedium,
    standardSmall,
    standardV2,
    wafLarge,
    wafMedium,
    wafV2,
  ];
}

/// `tier` — derived from the provider schema description.
extension type const ApplicationGatewayTier._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayTier.variable(String name) : this._(TfArg.variable(name));
  ApplicationGatewayTier.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayTier.arg(TfArg<String> arg) : this._(arg);

  static const basic = ApplicationGatewayTier._(TfArgLiteral('Basic'));
  static const standard = ApplicationGatewayTier._(TfArgLiteral('Standard'));
  static const standardV2 = ApplicationGatewayTier._(
    TfArgLiteral('Standard_v2'),
  );
  static const waf = ApplicationGatewayTier._(TfArgLiteral('WAF'));
  static const wafV2 = ApplicationGatewayTier._(TfArgLiteral('WAF_v2'));

  static const List<ApplicationGatewayTier> values = [
    basic,
    standard,
    standardV2,
    waf,
    wafV2,
  ];
}

/// Typed helper for the `ssl_certificate` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewaySslCertificate {
  const ApplicationGatewaySslCertificate({
    this.data,
    this.keyVaultSecretId,
    required this.name,
    this.password,
  });

  final Sensitive<String>? data;

  final TfArg<String>? keyVaultSecretId;

  final TfArg<String> name;

  final Sensitive<String>? password;

  @internal
  Map<String, Object?> encode() => {
    'data': ?data?.toTfJson(),
    'key_vault_secret_id': ?keyVaultSecretId?.toTfJson(),
    'name': name.toTfJson(),
    'password': ?password?.toTfJson(),
  };
}

/// Typed helper for the `ssl_policy` block of
/// `azurerm_application_gateway` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ApplicationGatewaySslPolicy {
  const ApplicationGatewaySslPolicy({
    this.cipherSuites,
    this.disabledProtocols,
    this.minProtocolVersion,
    this.policyName,
    this.policyType,
  });

  final EnumList<ApplicationGatewayCipherSuites>? cipherSuites;

  final EnumList<ApplicationGatewayDisabledProtocols>? disabledProtocols;

  final ApplicationGatewayMinProtocolVersion? minProtocolVersion;

  final TfArg<String>? policyName;

  final ApplicationGatewayPolicyType? policyType;

  @internal
  Map<String, Object?> encode() => {
    'cipher_suites': ?cipherSuites?.toTfJson(),
    'disabled_protocols': ?disabledProtocols?.toTfJson(),
    'min_protocol_version': ?minProtocolVersion?.toTfJson(),
    'policy_name': ?policyName?.toTfJson(),
    'policy_type': ?policyType?.toTfJson(),
  };
}

/// `cipher_suites` — derived from the provider schema description.
extension type const ApplicationGatewayCipherSuites._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayCipherSuites.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayCipherSuites.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayCipherSuites.arg(TfArg<String> arg) : this._(arg);

  static const tlsDheDssWithAes128CbcSha = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_DHE_DSS_WITH_AES_128_CBC_SHA'),
  );
  static const tlsDheDssWithAes128CbcSha256 = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_DHE_DSS_WITH_AES_128_CBC_SHA256'),
  );
  static const tlsDheDssWithAes256CbcSha = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_DHE_DSS_WITH_AES_256_CBC_SHA'),
  );
  static const tlsDheDssWithAes256CbcSha256 = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_DHE_DSS_WITH_AES_256_CBC_SHA256'),
  );
  static const tlsDheDssWith3desEdeCbcSha = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA'),
  );
  static const tlsDheRsaWithAes128CbcSha = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_DHE_RSA_WITH_AES_128_CBC_SHA'),
  );
  static const tlsDheRsaWithAes128GcmSha256 = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_DHE_RSA_WITH_AES_128_GCM_SHA256'),
  );
  static const tlsDheRsaWithAes256CbcSha = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_DHE_RSA_WITH_AES_256_CBC_SHA'),
  );
  static const tlsDheRsaWithAes256GcmSha384 = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_DHE_RSA_WITH_AES_256_GCM_SHA384'),
  );
  static const tlsEcdheEcdsaWithAes128CbcSha = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA'),
  );
  static const tlsEcdheEcdsaWithAes128CbcSha256 =
      ApplicationGatewayCipherSuites._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes128GcmSha256 =
      ApplicationGatewayCipherSuites._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheEcdsaWithAes256CbcSha = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA'),
  );
  static const tlsEcdheEcdsaWithAes256CbcSha384 =
      ApplicationGatewayCipherSuites._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384'),
      );
  static const tlsEcdheEcdsaWithAes256GcmSha384 =
      ApplicationGatewayCipherSuites._(
        TfArgLiteral('TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsEcdheRsaWithAes128CbcSha = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA'),
  );
  static const tlsEcdheRsaWithAes128CbcSha256 =
      ApplicationGatewayCipherSuites._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256'),
      );
  static const tlsEcdheRsaWithAes128GcmSha256 =
      ApplicationGatewayCipherSuites._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256'),
      );
  static const tlsEcdheRsaWithAes256CbcSha = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA'),
  );
  static const tlsEcdheRsaWithAes256CbcSha384 =
      ApplicationGatewayCipherSuites._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384'),
      );
  static const tlsEcdheRsaWithAes256GcmSha384 =
      ApplicationGatewayCipherSuites._(
        TfArgLiteral('TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384'),
      );
  static const tlsRsaWithAes128CbcSha = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA'),
  );
  static const tlsRsaWithAes128CbcSha256 = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_RSA_WITH_AES_128_CBC_SHA256'),
  );
  static const tlsRsaWithAes128GcmSha256 = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_RSA_WITH_AES_128_GCM_SHA256'),
  );
  static const tlsRsaWithAes256CbcSha = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA'),
  );
  static const tlsRsaWithAes256CbcSha256 = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_RSA_WITH_AES_256_CBC_SHA256'),
  );
  static const tlsRsaWithAes256GcmSha384 = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_RSA_WITH_AES_256_GCM_SHA384'),
  );
  static const tlsRsaWith3desEdeCbcSha = ApplicationGatewayCipherSuites._(
    TfArgLiteral('TLS_RSA_WITH_3DES_EDE_CBC_SHA'),
  );

  static const List<ApplicationGatewayCipherSuites> values = [
    tlsDheDssWithAes128CbcSha,
    tlsDheDssWithAes128CbcSha256,
    tlsDheDssWithAes256CbcSha,
    tlsDheDssWithAes256CbcSha256,
    tlsDheDssWith3desEdeCbcSha,
    tlsDheRsaWithAes128CbcSha,
    tlsDheRsaWithAes128GcmSha256,
    tlsDheRsaWithAes256CbcSha,
    tlsDheRsaWithAes256GcmSha384,
    tlsEcdheEcdsaWithAes128CbcSha,
    tlsEcdheEcdsaWithAes128CbcSha256,
    tlsEcdheEcdsaWithAes128GcmSha256,
    tlsEcdheEcdsaWithAes256CbcSha,
    tlsEcdheEcdsaWithAes256CbcSha384,
    tlsEcdheEcdsaWithAes256GcmSha384,
    tlsEcdheRsaWithAes128CbcSha,
    tlsEcdheRsaWithAes128CbcSha256,
    tlsEcdheRsaWithAes128GcmSha256,
    tlsEcdheRsaWithAes256CbcSha,
    tlsEcdheRsaWithAes256CbcSha384,
    tlsEcdheRsaWithAes256GcmSha384,
    tlsRsaWithAes128CbcSha,
    tlsRsaWithAes128CbcSha256,
    tlsRsaWithAes128GcmSha256,
    tlsRsaWithAes256CbcSha,
    tlsRsaWithAes256CbcSha256,
    tlsRsaWithAes256GcmSha384,
    tlsRsaWith3desEdeCbcSha,
  ];
}

/// `disabled_protocols` — derived from the provider schema description.
extension type const ApplicationGatewayDisabledProtocols._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayDisabledProtocols.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayDisabledProtocols.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayDisabledProtocols.arg(TfArg<String> arg)
    : this._(arg);

  static const tlsv11 = ApplicationGatewayDisabledProtocols._(
    TfArgLiteral('TLSv1_1'),
  );
  static const tlsv13 = ApplicationGatewayDisabledProtocols._(
    TfArgLiteral('TLSv1_3'),
  );
  static const tlsv12 = ApplicationGatewayDisabledProtocols._(
    TfArgLiteral('TLSv1_2'),
  );
  static const tlsv10 = ApplicationGatewayDisabledProtocols._(
    TfArgLiteral('TLSv1_0'),
  );

  static const List<ApplicationGatewayDisabledProtocols> values = [
    tlsv11,
    tlsv13,
    tlsv12,
    tlsv10,
  ];
}

/// `min_protocol_version` — derived from the provider schema description.
extension type const ApplicationGatewayMinProtocolVersion._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayMinProtocolVersion.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayMinProtocolVersion.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayMinProtocolVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const tlsv11 = ApplicationGatewayMinProtocolVersion._(
    TfArgLiteral('TLSv1_1'),
  );
  static const tlsv13 = ApplicationGatewayMinProtocolVersion._(
    TfArgLiteral('TLSv1_3'),
  );
  static const tlsv12 = ApplicationGatewayMinProtocolVersion._(
    TfArgLiteral('TLSv1_2'),
  );
  static const tlsv10 = ApplicationGatewayMinProtocolVersion._(
    TfArgLiteral('TLSv1_0'),
  );

  static const List<ApplicationGatewayMinProtocolVersion> values = [
    tlsv11,
    tlsv13,
    tlsv12,
    tlsv10,
  ];
}

/// `policy_type` — derived from the provider schema description.
extension type const ApplicationGatewayPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const custom = ApplicationGatewayPolicyType._(TfArgLiteral('Custom'));
  static const customv2 = ApplicationGatewayPolicyType._(
    TfArgLiteral('CustomV2'),
  );
  static const predefined = ApplicationGatewayPolicyType._(
    TfArgLiteral('Predefined'),
  );

  static const List<ApplicationGatewayPolicyType> values = [
    custom,
    customv2,
    predefined,
  ];
}

/// Typed helper for the `ssl_profile` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewaySslProfile {
  const ApplicationGatewaySslProfile({
    this.clientAuthenticationMode,
    required this.name,
    this.trustedClientCertificateNames,
    this.verifyClientCertificateIssuerDn,
    this.verifyClientCertificateRevocation,
    this.sslPolicy,
  });

  final ApplicationGatewayClientAuthenticationMode? clientAuthenticationMode;

  final TfArg<String> name;

  final TfArg<List<String>>? trustedClientCertificateNames;

  final TfArg<bool>? verifyClientCertificateIssuerDn;

  final ApplicationGatewayVerifyClientCertificateRevocation?
  verifyClientCertificateRevocation;

  final ApplicationGatewaySslPolicy? sslPolicy;

  @internal
  Map<String, Object?> encode() => {
    'client_authentication_mode': ?clientAuthenticationMode?.toTfJson(),
    'name': name.toTfJson(),
    'trusted_client_certificate_names': ?trustedClientCertificateNames
        ?.toTfJson(),
    'verify_client_certificate_issuer_dn': ?verifyClientCertificateIssuerDn
        ?.toTfJson(),
    'verify_client_certificate_revocation': ?verifyClientCertificateRevocation
        ?.toTfJson(),
    'ssl_policy': ?sslPolicy?.encode(),
  };
}

/// `client_authentication_mode` — derived from the provider schema description.
extension type const ApplicationGatewayClientAuthenticationMode._(
  TfArg<String> _
) implements TfArg<String> {
  ApplicationGatewayClientAuthenticationMode.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayClientAuthenticationMode.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayClientAuthenticationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const passthrough = ApplicationGatewayClientAuthenticationMode._(
    TfArgLiteral('Passthrough'),
  );
  static const strict = ApplicationGatewayClientAuthenticationMode._(
    TfArgLiteral('Strict'),
  );

  static const List<ApplicationGatewayClientAuthenticationMode> values = [
    passthrough,
    strict,
  ];
}

/// `verify_client_certificate_revocation` — derived from the provider schema description.
extension type const ApplicationGatewayVerifyClientCertificateRevocation._(
  TfArg<String> _
) implements TfArg<String> {
  ApplicationGatewayVerifyClientCertificateRevocation.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayVerifyClientCertificateRevocation.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ApplicationGatewayVerifyClientCertificateRevocation.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const ocsp = ApplicationGatewayVerifyClientCertificateRevocation._(
    TfArgLiteral('OCSP'),
  );

  static const List<ApplicationGatewayVerifyClientCertificateRevocation>
  values = [ocsp];
}

/// Typed helper for the `trusted_client_certificate` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayTrustedClientCertificate {
  const ApplicationGatewayTrustedClientCertificate({
    required this.data,
    required this.name,
  });

  final Sensitive<String> data;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'data': data.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `trusted_root_certificate` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayTrustedRootCertificate {
  const ApplicationGatewayTrustedRootCertificate({
    this.data,
    this.keyVaultSecretId,
    required this.name,
  });

  final Sensitive<String>? data;

  final TfArg<String>? keyVaultSecretId;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'data': ?data?.toTfJson(),
    'key_vault_secret_id': ?keyVaultSecretId?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `url_path_map` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayUrlPathMap {
  const ApplicationGatewayUrlPathMap({
    this.defaultBackendAddressPoolName,
    this.defaultBackendHttpSettingsName,
    this.defaultRedirectConfigurationName,
    this.defaultRewriteRuleSetName,
    required this.name,
    required this.pathRule,
  });

  final TfArg<String>? defaultBackendAddressPoolName;

  final TfArg<String>? defaultBackendHttpSettingsName;

  final TfArg<String>? defaultRedirectConfigurationName;

  final TfArg<String>? defaultRewriteRuleSetName;

  final TfArg<String> name;

  final List<ApplicationGatewayPathRule> pathRule;

  @internal
  Map<String, Object?> encode() => {
    'default_backend_address_pool_name': ?defaultBackendAddressPoolName
        ?.toTfJson(),
    'default_backend_http_settings_name': ?defaultBackendHttpSettingsName
        ?.toTfJson(),
    'default_redirect_configuration_name': ?defaultRedirectConfigurationName
        ?.toTfJson(),
    'default_rewrite_rule_set_name': ?defaultRewriteRuleSetName?.toTfJson(),
    'name': name.toTfJson(),
    'path_rule': [for (final e in pathRule) e.encode()],
  };
}

/// Typed helper for the `url_path_map.path_rule` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayPathRule {
  const ApplicationGatewayPathRule({
    this.backendAddressPoolName,
    this.backendHttpSettingsName,
    this.firewallPolicyId,
    required this.name,
    required this.paths,
    this.redirectConfigurationName,
    this.rewriteRuleSetName,
  });

  final TfArg<String>? backendAddressPoolName;

  final TfArg<String>? backendHttpSettingsName;

  final TfArg<String>? firewallPolicyId;

  final TfArg<String> name;

  final TfArg<List<String>> paths;

  final TfArg<String>? redirectConfigurationName;

  final TfArg<String>? rewriteRuleSetName;

  @internal
  Map<String, Object?> encode() => {
    'backend_address_pool_name': ?backendAddressPoolName?.toTfJson(),
    'backend_http_settings_name': ?backendHttpSettingsName?.toTfJson(),
    'firewall_policy_id': ?firewallPolicyId?.toTfJson(),
    'name': name.toTfJson(),
    'paths': paths.toTfJson(),
    'redirect_configuration_name': ?redirectConfigurationName?.toTfJson(),
    'rewrite_rule_set_name': ?rewriteRuleSetName?.toTfJson(),
  };
}

/// Typed helper for the `waf_configuration` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayWafConfiguration {
  const ApplicationGatewayWafConfiguration({
    required this.enabled,
    this.fileUploadLimitMb,
    required this.firewallMode,
    this.maxRequestBodySizeKb,
    this.requestBodyCheck,
    this.ruleSetType,
    required this.ruleSetVersion,
    this.disabledRuleGroup,
    this.exclusion,
  });

  final TfArg<bool> enabled;

  final TfArg<num>? fileUploadLimitMb;

  final ApplicationGatewayFirewallMode firewallMode;

  final TfArg<num>? maxRequestBodySizeKb;

  final TfArg<bool>? requestBodyCheck;

  final TfArg<String>? ruleSetType;

  final TfArg<String> ruleSetVersion;

  final List<ApplicationGatewayDisabledRuleGroup>? disabledRuleGroup;

  final List<ApplicationGatewayExclusion>? exclusion;

  @internal
  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'file_upload_limit_mb': ?fileUploadLimitMb?.toTfJson(),
    'firewall_mode': firewallMode.toTfJson(),
    'max_request_body_size_kb': ?maxRequestBodySizeKb?.toTfJson(),
    'request_body_check': ?requestBodyCheck?.toTfJson(),
    'rule_set_type': ?ruleSetType?.toTfJson(),
    'rule_set_version': ruleSetVersion.toTfJson(),
    if (disabledRuleGroup != null)
      'disabled_rule_group': [for (final e in disabledRuleGroup!) e.encode()],
    if (exclusion != null)
      'exclusion': [for (final e in exclusion!) e.encode()],
  };
}

/// `firewall_mode` — derived from the provider schema description.
extension type const ApplicationGatewayFirewallMode._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayFirewallMode.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayFirewallMode.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayFirewallMode.arg(TfArg<String> arg) : this._(arg);

  static const detection = ApplicationGatewayFirewallMode._(
    TfArgLiteral('Detection'),
  );
  static const prevention = ApplicationGatewayFirewallMode._(
    TfArgLiteral('Prevention'),
  );

  static const List<ApplicationGatewayFirewallMode> values = [
    detection,
    prevention,
  ];
}

/// Typed helper for the `waf_configuration.disabled_rule_group` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayDisabledRuleGroup {
  const ApplicationGatewayDisabledRuleGroup({
    required this.ruleGroupName,
    this.rules,
  });

  final TfArg<String> ruleGroupName;

  final TfArg<List<num>>? rules;

  @internal
  Map<String, Object?> encode() => {
    'rule_group_name': ruleGroupName.toTfJson(),
    'rules': ?rules?.toTfJson(),
  };
}

/// Typed helper for the `waf_configuration.exclusion` block of
/// `azurerm_application_gateway` (derived from provider schema).
@immutable
final class ApplicationGatewayExclusion {
  const ApplicationGatewayExclusion({
    required this.matchVariable,
    this.selector,
    this.selectorMatchOperator,
  });

  final ApplicationGatewayMatchVariable matchVariable;

  final TfArg<String>? selector;

  final ApplicationGatewaySelectorMatchOperator? selectorMatchOperator;

  @internal
  Map<String, Object?> encode() => {
    'match_variable': matchVariable.toTfJson(),
    'selector': ?selector?.toTfJson(),
    'selector_match_operator': ?selectorMatchOperator?.toTfJson(),
  };
}

/// `match_variable` — derived from the provider schema description.
extension type const ApplicationGatewayMatchVariable._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewayMatchVariable.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewayMatchVariable.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewayMatchVariable.arg(TfArg<String> arg) : this._(arg);

  static const requestargkeys = ApplicationGatewayMatchVariable._(
    TfArgLiteral('RequestArgKeys'),
  );
  static const requestargnames = ApplicationGatewayMatchVariable._(
    TfArgLiteral('RequestArgNames'),
  );
  static const requestargvalues = ApplicationGatewayMatchVariable._(
    TfArgLiteral('RequestArgValues'),
  );
  static const requestcookiekeys = ApplicationGatewayMatchVariable._(
    TfArgLiteral('RequestCookieKeys'),
  );
  static const requestcookienames = ApplicationGatewayMatchVariable._(
    TfArgLiteral('RequestCookieNames'),
  );
  static const requestcookievalues = ApplicationGatewayMatchVariable._(
    TfArgLiteral('RequestCookieValues'),
  );
  static const requestheaderkeys = ApplicationGatewayMatchVariable._(
    TfArgLiteral('RequestHeaderKeys'),
  );
  static const requestheadernames = ApplicationGatewayMatchVariable._(
    TfArgLiteral('RequestHeaderNames'),
  );
  static const requestheadervalues = ApplicationGatewayMatchVariable._(
    TfArgLiteral('RequestHeaderValues'),
  );

  static const List<ApplicationGatewayMatchVariable> values = [
    requestargkeys,
    requestargnames,
    requestargvalues,
    requestcookiekeys,
    requestcookienames,
    requestcookievalues,
    requestheaderkeys,
    requestheadernames,
    requestheadervalues,
  ];
}

/// `selector_match_operator` — derived from the provider schema description.
extension type const ApplicationGatewaySelectorMatchOperator._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationGatewaySelectorMatchOperator.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationGatewaySelectorMatchOperator.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationGatewaySelectorMatchOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const contains = ApplicationGatewaySelectorMatchOperator._(
    TfArgLiteral('Contains'),
  );
  static const endswith = ApplicationGatewaySelectorMatchOperator._(
    TfArgLiteral('EndsWith'),
  );
  static const equals = ApplicationGatewaySelectorMatchOperator._(
    TfArgLiteral('Equals'),
  );
  static const equalsany = ApplicationGatewaySelectorMatchOperator._(
    TfArgLiteral('EqualsAny'),
  );
  static const startswith = ApplicationGatewaySelectorMatchOperator._(
    TfArgLiteral('StartsWith'),
  );

  static const List<ApplicationGatewaySelectorMatchOperator> values = [
    contains,
    endswith,
    equals,
    equalsany,
    startswith,
  ];
}

/// Factory wrapper for `azurerm_application_gateway`.
final class AzurermApplicationGateway extends Resource {
  static const String tfType = 'azurerm_application_gateway';

  AzurermApplicationGateway(
    super.localName, {
    TfArg<bool>? fipsEnabled,
    TfArg<String>? firewallPolicyId,
    TfArg<bool>? forceFirewallPolicyAssociation,
    TfArg<bool>? http2Enabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? zones,
    ApplicationGatewayAutoscaleConfiguration? autoscaleConfiguration,
    List<ApplicationGatewayBackend>? backend,
    required List<ApplicationGatewayBackendAddressPool> backendAddressPool,
    List<ApplicationGatewayBackendHttpSettings>? backendHttpSettings,
    List<ApplicationGatewayCustomErrorConfiguration>? customErrorConfiguration,
    required List<ApplicationGatewayFrontendIpConfiguration>
    frontendIpConfiguration,
    required List<ApplicationGatewayFrontendPort> frontendPort,
    required List<ApplicationGatewayIpConfiguration> gatewayIpConfiguration,
    ApplicationGatewayGlobal? global,
    List<ApplicationGatewayHttpListener>? httpListener,
    ApplicationGatewayIdentity? identity,
    List<ApplicationGatewayListener>? listener,
    List<ApplicationGatewayPrivateLinkConfiguration>? privateLinkConfiguration,
    List<ApplicationGatewayProbe>? probe,
    List<ApplicationGatewayRedirectConfiguration>? redirectConfiguration,
    List<ApplicationGatewayRequestRoutingRule>? requestRoutingRule,
    List<ApplicationGatewayRewriteRuleSet>? rewriteRuleSet,
    List<ApplicationGatewayRoutingRule>? routingRule,
    required ApplicationGatewaySku sku,
    List<ApplicationGatewaySslCertificate>? sslCertificate,
    ApplicationGatewaySslPolicy? sslPolicy,
    List<ApplicationGatewaySslProfile>? sslProfile,
    List<ApplicationGatewayTrustedClientCertificate>? trustedClientCertificate,
    List<ApplicationGatewayTrustedRootCertificate>? trustedRootCertificate,
    List<ApplicationGatewayUrlPathMap>? urlPathMap,
    ApplicationGatewayWafConfiguration? wafConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'fips_enabled': ?fipsEnabled,
           'firewall_policy_id': ?firewallPolicyId,
           'force_firewall_policy_association': ?forceFirewallPolicyAssociation,
           'http2_enabled': ?http2Enabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'zones': ?zones,
           if (autoscaleConfiguration != null)
             'autoscale_configuration': TfArg.literal(
               autoscaleConfiguration.encode(),
             ),
           if (backend != null)
             'backend': TfArg.literal([for (final e in backend) e.encode()]),
           'backend_address_pool': TfArg.literal([
             for (final e in backendAddressPool) e.encode(),
           ]),
           if (backendHttpSettings != null)
             'backend_http_settings': TfArg.literal([
               for (final e in backendHttpSettings) e.encode(),
             ]),
           if (customErrorConfiguration != null)
             'custom_error_configuration': TfArg.literal([
               for (final e in customErrorConfiguration) e.encode(),
             ]),
           'frontend_ip_configuration': TfArg.literal([
             for (final e in frontendIpConfiguration) e.encode(),
           ]),
           'frontend_port': TfArg.literal([
             for (final e in frontendPort) e.encode(),
           ]),
           'gateway_ip_configuration': TfArg.literal([
             for (final e in gatewayIpConfiguration) e.encode(),
           ]),
           if (global != null) 'global': TfArg.literal(global.encode()),
           if (httpListener != null)
             'http_listener': TfArg.literal([
               for (final e in httpListener) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (listener != null)
             'listener': TfArg.literal([for (final e in listener) e.encode()]),
           if (privateLinkConfiguration != null)
             'private_link_configuration': TfArg.literal([
               for (final e in privateLinkConfiguration) e.encode(),
             ]),
           if (probe != null)
             'probe': TfArg.literal([for (final e in probe) e.encode()]),
           if (redirectConfiguration != null)
             'redirect_configuration': TfArg.literal([
               for (final e in redirectConfiguration) e.encode(),
             ]),
           if (requestRoutingRule != null)
             'request_routing_rule': TfArg.literal([
               for (final e in requestRoutingRule) e.encode(),
             ]),
           if (rewriteRuleSet != null)
             'rewrite_rule_set': TfArg.literal([
               for (final e in rewriteRuleSet) e.encode(),
             ]),
           if (routingRule != null)
             'routing_rule': TfArg.literal([
               for (final e in routingRule) e.encode(),
             ]),
           'sku': TfArg.literal(sku.encode()),
           if (sslCertificate != null)
             'ssl_certificate': TfArg.literal([
               for (final e in sslCertificate) e.encode(),
             ]),
           if (sslPolicy != null)
             'ssl_policy': TfArg.literal(sslPolicy.encode()),
           if (sslProfile != null)
             'ssl_profile': TfArg.literal([
               for (final e in sslProfile) e.encode(),
             ]),
           if (trustedClientCertificate != null)
             'trusted_client_certificate': TfArg.literal([
               for (final e in trustedClientCertificate) e.encode(),
             ]),
           if (trustedRootCertificate != null)
             'trusted_root_certificate': TfArg.literal([
               for (final e in trustedRootCertificate) e.encode(),
             ]),
           if (urlPathMap != null)
             'url_path_map': TfArg.literal([
               for (final e in urlPathMap) e.encode(),
             ]),
           if (wafConfiguration != null)
             'waf_configuration': TfArg.literal(wafConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApplicationGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApplicationGateway>`.
  RefTo<AzurermApplicationGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `private_endpoint_connection` attribute.
  TfRef<List<Map<String, Object?>>> get privateEndpointConnection =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'private_endpoint_connection',
      );

  /// Reference to `fips_enabled` attribute.
  TfRef<bool> get fipsEnabled => TfRef.attribute<bool>(this, 'fips_enabled');

  /// Reference to `firewall_policy_id` attribute.
  TfRef<String> get firewallPolicyId =>
      TfRef.attribute<String>(this, 'firewall_policy_id');

  /// Reference to `force_firewall_policy_association` attribute.
  TfRef<bool> get forceFirewallPolicyAssociation =>
      TfRef.attribute<bool>(this, 'force_firewall_policy_association');

  /// Reference to `http2_enabled` attribute.
  TfRef<bool> get http2Enabled => TfRef.attribute<bool>(this, 'http2_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
