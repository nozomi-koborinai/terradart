// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_healthcheck`.
const Set<String> _cloudflareHealthcheckSensitive = <String>{};

/// Healthcheck Check enum for `check_regions`.
extension type const HealthcheckCheckRegions._(TfArg<String> _)
    implements TfArg<String> {
  HealthcheckCheckRegions.variable(String name) : this._(TfArg.variable(name));
  HealthcheckCheckRegions.expression(String template)
    : this._(TfArg.expression(template));
  const HealthcheckCheckRegions.arg(TfArg<String> arg) : this._(arg);

  static const wnam = HealthcheckCheckRegions._(TfArgLiteral('WNAM'));
  static const enam = HealthcheckCheckRegions._(TfArgLiteral('ENAM'));
  static const weu = HealthcheckCheckRegions._(TfArgLiteral('WEU'));
  static const eeu = HealthcheckCheckRegions._(TfArgLiteral('EEU'));
  static const nsam = HealthcheckCheckRegions._(TfArgLiteral('NSAM'));
  static const ssam = HealthcheckCheckRegions._(TfArgLiteral('SSAM'));
  static const oc = HealthcheckCheckRegions._(TfArgLiteral('OC'));
  static const me = HealthcheckCheckRegions._(TfArgLiteral('ME'));
  static const naf = HealthcheckCheckRegions._(TfArgLiteral('NAF'));
  static const saf = HealthcheckCheckRegions._(TfArgLiteral('SAF'));
  static const inCase = HealthcheckCheckRegions._(TfArgLiteral('IN'));
  static const seas = HealthcheckCheckRegions._(TfArgLiteral('SEAS'));
  static const neas = HealthcheckCheckRegions._(TfArgLiteral('NEAS'));
  static const allRegions = HealthcheckCheckRegions._(
    TfArgLiteral('ALL_REGIONS'),
  );

  static const List<HealthcheckCheckRegions> values = [
    wnam,
    enam,
    weu,
    eeu,
    nsam,
    ssam,
    oc,
    me,
    naf,
    saf,
    inCase,
    seas,
    neas,
    allRegions,
  ];
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

  final HealthcheckHttpConfigMethod? method;

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
extension type const HealthcheckHttpConfigMethod._(TfArg<String> _)
    implements TfArg<String> {
  HealthcheckHttpConfigMethod.variable(String name)
    : this._(TfArg.variable(name));
  HealthcheckHttpConfigMethod.expression(String template)
    : this._(TfArg.expression(template));
  const HealthcheckHttpConfigMethod.arg(TfArg<String> arg) : this._(arg);

  static const get = HealthcheckHttpConfigMethod._(TfArgLiteral('GET'));
  static const head = HealthcheckHttpConfigMethod._(TfArgLiteral('HEAD'));

  static const List<HealthcheckHttpConfigMethod> values = [get, head];
}

/// Typed helper for the `tcp_config` block of
/// `cloudflare_healthcheck` (derived from provider schema).
@immutable
final class HealthcheckTcpConfig {
  const HealthcheckTcpConfig({this.method, this.port});

  final HealthcheckTcpConfigMethod? method;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'method': ?method?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// `method` — derived from the provider schema description.
extension type const HealthcheckTcpConfigMethod._(TfArg<String> _)
    implements TfArg<String> {
  HealthcheckTcpConfigMethod.variable(String name)
    : this._(TfArg.variable(name));
  HealthcheckTcpConfigMethod.expression(String template)
    : this._(TfArg.expression(template));
  const HealthcheckTcpConfigMethod.arg(TfArg<String> arg) : this._(arg);

  static const connectionEstablished = HealthcheckTcpConfigMethod._(
    TfArgLiteral('connection_established'),
  );

  static const List<HealthcheckTcpConfigMethod> values = [
    connectionEstablished,
  ];
}

/// Factory wrapper for `cloudflare_healthcheck`.
///
/// Accepted Permissions
///
/// - `Health Checks Read` - `Health Checks Write`
final class CloudflareHealthcheck extends Resource {
  static const String tfType = 'cloudflare_healthcheck';

  CloudflareHealthcheck(
    super.localName, {
    required TfArg<String> address,
    List<HealthcheckCheckRegions>? checkRegions,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `check_regions` attribute.
  TfRef<List<String>> get checkRegions =>
      TfRef.attribute<List<String>>(this, 'check_regions');

  /// Reference to `consecutive_fails` attribute.
  TfRef<num> get consecutiveFails =>
      TfRef.attribute<num>(this, 'consecutive_fails');

  /// Reference to `consecutive_successes` attribute.
  TfRef<num> get consecutiveSuccesses =>
      TfRef.attribute<num>(this, 'consecutive_successes');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `interval` attribute.
  TfRef<num> get interval => TfRef.attribute<num>(this, 'interval');

  /// Reference to `retries` attribute.
  TfRef<num> get retries => TfRef.attribute<num>(this, 'retries');

  /// Reference to `suspended` attribute.
  TfRef<bool> get suspended => TfRef.attribute<bool>(this, 'suspended');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeout => TfRef.attribute<num>(this, 'timeout');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
