// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_healthcheck`.
const Set<String> _cloudflareHealthcheckSensitive = <String>{};

/// Healthcheck Check enum for `check_regions`.
enum HealthcheckCheckRegions implements TerraformEnum {
  wnam('WNAM'),
  enam('ENAM'),
  weu('WEU'),
  eeu('EEU'),
  nsam('NSAM'),
  ssam('SSAM'),
  oc('OC'),
  me('ME'),
  naf('NAF'),
  saf('SAF'),
  inCase('IN'),
  seas('SEAS'),
  neas('NEAS'),
  allRegions('ALL_REGIONS');

  const HealthcheckCheckRegions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `http_config` block of
/// `cloudflare_healthcheck` (derived from provider schema).
@immutable
final class HealthcheckHttpConfig {
  const HealthcheckHttpConfig({
    this.allowInsecure,
    this.expectedBody,
    this.expectedCodes,
    this.followRedirects,
    this.header,
    this.method,
    this.path,
    this.port,
  });

  final TfArg<bool>? allowInsecure;

  final TfArg<String>? expectedBody;

  final TfArg<List<String>>? expectedCodes;

  final TfArg<bool>? followRedirects;

  final TfArg<Map<String, dynamic>>? header;

  final TfArg<HealthcheckHttpConfigMethod>? method;

  final TfArg<String>? path;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'allow_insecure': ?allowInsecure?.toTfJson(),
    'expected_body': ?expectedBody?.toTfJson(),
    'expected_codes': ?expectedCodes?.toTfJson(),
    'follow_redirects': ?followRedirects?.toTfJson(),
    'header': ?header?.toTfJson(),
    'method': ?method?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// `method` — derived from the provider schema description.
enum HealthcheckHttpConfigMethod implements TerraformEnum {
  get('GET'),
  head('HEAD');

  const HealthcheckHttpConfigMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `tcp_config` block of
/// `cloudflare_healthcheck` (derived from provider schema).
@immutable
final class HealthcheckTcpConfig {
  const HealthcheckTcpConfig({this.method, this.port});

  final TfArg<HealthcheckTcpConfigMethod>? method;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'method': ?method?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// `method` — derived from the provider schema description.
enum HealthcheckTcpConfigMethod implements TerraformEnum {
  connectionEstablished('connection_established');

  const HealthcheckTcpConfigMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_healthcheck`.
///
/// Accepted Permissions
///
/// - `Health Checks Read` - `Health Checks Write`
final class CloudflareHealthcheck extends Resource {
  static const String tfType = 'cloudflare_healthcheck';

  CloudflareHealthcheck({
    required super.localName,
    required TfArg<String> address,
    List<TfArg<HealthcheckCheckRegions>>? checkRegions,
    TfArg<num>? consecutiveFails,
    TfArg<num>? consecutiveSuccesses,
    TfArg<String>? description,
    TfArg<num>? interval,
    required TfArg<String> name,
    TfArg<num>? retries,
    TfArg<bool>? suspended,
    TfArg<num>? timeout,
    TfArg<String>? type,
    required RefTo<CloudflareZone> zoneId,
    HealthcheckHttpConfig? httpConfig,
    HealthcheckTcpConfig? tcpConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address': address,
           if (checkRegions != null)
             'check_regions': TfArg.literal([
               for (final e in checkRegions) e.toTfJson(),
             ]),
           'consecutive_fails': ?consecutiveFails,
           'consecutive_successes': ?consecutiveSuccesses,
           'description': ?description,
           'interval': ?interval,
           'name': name,
           'retries': ?retries,
           'suspended': ?suspended,
           'timeout': ?timeout,
           'type': ?type,
           'zone_id': zoneId.encodeAs('id'),
           if (httpConfig != null)
             'http_config': TfArg.literal(httpConfig.encode()),
           if (tcpConfig != null)
             'tcp_config': TfArg.literal(tcpConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareHealthcheckSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareHealthcheck>`.
  RefTo<CloudflareHealthcheck> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `failure_reason` attribute.
  TfRef<String> get failureReason =>
      TfRef.attribute<String>(this, 'failure_reason');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
