// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_edge_cache_origin`.
const Set<String> _googleNetworkServicesEdgeCacheOriginSensitive = <String>{};

/// Network Services Edge Cache Origin enum for `protocol`.
enum NetworkServicesEdgeCacheOriginProtocol implements TerraformEnum {
  http2('HTTP2'),
  https('HTTPS'),
  http('HTTP');

  const NetworkServicesEdgeCacheOriginProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `aws_v4_authentication` block of
/// `google_network_services_edge_cache_origin` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheOriginAwsV4Authentication {
  const NetworkServicesEdgeCacheOriginAwsV4Authentication({
    required this.accessKeyId,
    required this.originRegion,
    required this.secretAccessKeyVersion,
  });

  final TfArg<String> accessKeyId;

  final TfArg<String> originRegion;

  final TfArg<String> secretAccessKeyVersion;

  Map<String, Object?> encode() => {
    'access_key_id': accessKeyId.toTfJson(),
    'origin_region': originRegion.toTfJson(),
    'secret_access_key_version': secretAccessKeyVersion.toTfJson(),
  };
}

/// Typed helper for the `flex_shielding` block of
/// `google_network_services_edge_cache_origin` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheOriginFlexShielding {
  const NetworkServicesEdgeCacheOriginFlexShielding({
    this.flexShieldingRegions,
  });

  final List<
    TfArg<NetworkServicesEdgeCacheOriginFlexShieldingFlexShieldingRegions>
  >?
  flexShieldingRegions;

  Map<String, Object?> encode() => {
    if (flexShieldingRegions != null)
      'flex_shielding_regions': [
        for (final e in flexShieldingRegions!) e.toTfJson(),
      ],
  };
}

/// `flex_shielding_regions` — derived from the provider schema description.
enum NetworkServicesEdgeCacheOriginFlexShieldingFlexShieldingRegions
    implements TerraformEnum {
  africaSouth1('AFRICA_SOUTH1'),
  meCentral1('ME_CENTRAL1');

  const NetworkServicesEdgeCacheOriginFlexShieldingFlexShieldingRegions(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `origin_override_action` block of
/// `google_network_services_edge_cache_origin` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheOriginOriginOverrideAction {
  const NetworkServicesEdgeCacheOriginOriginOverrideAction({
    this.headerAction,
    this.urlRewrite,
  });

  final NetworkServicesEdgeCacheOriginOriginOverrideActionHeaderAction?
  headerAction;

  final NetworkServicesEdgeCacheOriginOriginOverrideActionUrlRewrite?
  urlRewrite;

  Map<String, Object?> encode() => {
    if (headerAction != null) 'header_action': headerAction!.encode(),
    if (urlRewrite != null) 'url_rewrite': urlRewrite!.encode(),
  };
}

/// Typed helper for the `origin_override_action.header_action` block of
/// `google_network_services_edge_cache_origin` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheOriginOriginOverrideActionHeaderAction {
  const NetworkServicesEdgeCacheOriginOriginOverrideActionHeaderAction({
    this.requestHeadersToAdd,
  });

  final List<
    NetworkServicesEdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd
  >?
  requestHeadersToAdd;

  Map<String, Object?> encode() => {
    if (requestHeadersToAdd != null)
      'request_headers_to_add': [
        for (final e in requestHeadersToAdd!) e.encode(),
      ],
  };
}

/// Typed helper for the `origin_override_action.header_action.request_headers_to_add` block of
/// `google_network_services_edge_cache_origin` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd {
  const NetworkServicesEdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd({
    required this.headerName,
    required this.headerValue,
    this.replace,
  });

  final TfArg<String> headerName;

  final TfArg<String> headerValue;

  final TfArg<bool>? replace;

  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': headerValue.toTfJson(),
    if (replace != null) 'replace': replace!.toTfJson(),
  };
}

/// Typed helper for the `origin_override_action.url_rewrite` block of
/// `google_network_services_edge_cache_origin` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheOriginOriginOverrideActionUrlRewrite {
  const NetworkServicesEdgeCacheOriginOriginOverrideActionUrlRewrite({
    this.hostRewrite,
  });

  final TfArg<String>? hostRewrite;

  Map<String, Object?> encode() => {
    if (hostRewrite != null) 'host_rewrite': hostRewrite!.toTfJson(),
  };
}

/// Typed helper for the `origin_redirect` block of
/// `google_network_services_edge_cache_origin` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheOriginOriginRedirect {
  const NetworkServicesEdgeCacheOriginOriginRedirect({this.redirectConditions});

  final TfArg<List<Object?>>? redirectConditions;

  Map<String, Object?> encode() => {
    if (redirectConditions != null)
      'redirect_conditions': redirectConditions!.toTfJson(),
  };
}

/// Typed helper for the `timeout` block of
/// `google_network_services_edge_cache_origin` (derived from provider schema).
@immutable
final class NetworkServicesEdgeCacheOriginTimeout {
  const NetworkServicesEdgeCacheOriginTimeout({
    this.connectTimeout,
    this.maxAttemptsTimeout,
    this.readTimeout,
    this.responseTimeout,
  });

  final TfArg<String>? connectTimeout;

  final TfArg<String>? maxAttemptsTimeout;

  final TfArg<String>? readTimeout;

  final TfArg<String>? responseTimeout;

  Map<String, Object?> encode() => {
    if (connectTimeout != null) 'connect_timeout': connectTimeout!.toTfJson(),
    if (maxAttemptsTimeout != null)
      'max_attempts_timeout': maxAttemptsTimeout!.toTfJson(),
    if (readTimeout != null) 'read_timeout': readTimeout!.toTfJson(),
    if (responseTimeout != null)
      'response_timeout': responseTimeout!.toTfJson(),
  };
}

/// Factory wrapper for `google_network_services_edge_cache_origin`.
///
/// EdgeCacheOrigin represents a HTTP-reachable backend for an EdgeCacheService.
///
/// Media CDN **Edge Cache origin** — origin host that Edge Cache services
/// fetch from (cache fill / miss path).
///
/// **Cost / apply:** gcp-cost: Networking `E505-1604-58F8` Media CDN Capacity
/// Reservation per Tbps North America SKU `7393-8C37-77E1` **$20,000/mo**
/// (plus Edge Cache Data Transfer North America `E2B8-D4FA-6E05`
/// **$0.02/GiBy**). billing-behavior: origins define the Media CDN fill path;
/// traffic and optional capacity reservations in this family bill heavily.
/// **Never** wire into apply-smoke.
///
/// Enable `networkservices.googleapis.com` before apply. [originAddress] is
/// required.
final class GoogleNetworkServicesEdgeCacheOrigin extends Resource {
  static const String tfType = 'google_network_services_edge_cache_origin';

  GoogleNetworkServicesEdgeCacheOrigin({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> originAddress,
    TfArg<String>? description,
    TfArg<NetworkServicesEdgeCacheOriginProtocol>? protocol,
    TfArg<num>? port,
    TfArg<num>? maxAttempts,
    TfArg<List<String>>? retryConditions,
    TfArg<String>? failoverOrigin,
    NetworkServicesEdgeCacheOriginTimeout? timeout,
    NetworkServicesEdgeCacheOriginAwsV4Authentication? awsV4Authentication,
    NetworkServicesEdgeCacheOriginFlexShielding? flexShielding,
    NetworkServicesEdgeCacheOriginOriginOverrideAction? originOverrideAction,
    NetworkServicesEdgeCacheOriginOriginRedirect? originRedirect,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'origin_address': originAddress,
           if (description != null) 'description': description,
           if (protocol != null) 'protocol': protocol,
           if (port != null) 'port': port,
           if (maxAttempts != null) 'max_attempts': maxAttempts,
           if (retryConditions != null) 'retry_conditions': retryConditions,
           if (failoverOrigin != null) 'failover_origin': failoverOrigin,
           if (timeout != null) 'timeout': TfArg.literal(timeout.encode()),
           if (awsV4Authentication != null)
             'aws_v4_authentication': TfArg.literal(
               awsV4Authentication.encode(),
             ),
           if (flexShielding != null)
             'flex_shielding': TfArg.literal(flexShielding.encode()),
           if (originOverrideAction != null)
             'origin_override_action': TfArg.literal(
               originOverrideAction.encode(),
             ),
           if (originRedirect != null)
             'origin_redirect': TfArg.literal(originRedirect.encode()),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesEdgeCacheOriginSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
