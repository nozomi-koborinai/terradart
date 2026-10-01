// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_cloud_ids_endpoint`.
const Set<String> _googleCloudIdsEndpointSensitive = <String>{};

/// Cloud Ids Endpoint enum for `severity`.
extension type const CloudIdsEndpointSeverity._(TfArg<String> _)
    implements TfArg<String> {
  CloudIdsEndpointSeverity.variable(String name) : this._(TfArg.variable(name));
  CloudIdsEndpointSeverity.expression(String template)
    : this._(TfArg.expression(template));
  const CloudIdsEndpointSeverity.arg(TfArg<String> arg) : this._(arg);

  static const informational = CloudIdsEndpointSeverity._(
    TfArgLiteral('INFORMATIONAL'),
  );
  static const low = CloudIdsEndpointSeverity._(TfArgLiteral('LOW'));
  static const medium = CloudIdsEndpointSeverity._(TfArgLiteral('MEDIUM'));
  static const high = CloudIdsEndpointSeverity._(TfArgLiteral('HIGH'));
  static const critical = CloudIdsEndpointSeverity._(TfArgLiteral('CRITICAL'));

  static const List<CloudIdsEndpointSeverity> values = [
    informational,
    low,
    medium,
    high,
    critical,
  ];
}

/// Factory wrapper for `google_cloud_ids_endpoint`.
///
/// Cloud IDS is an intrusion detection service that provides threat detection
/// for intrusions, malware, spyware, and command-and-control attacks on your
/// network.
///
/// Cloud IDS **endpoint** — managed intrusion detection appliance attached
/// to a VPC network.
///
/// **Cost / apply:** gcp-cost: Cloud IDS `25DB-618E-3F79` Endpoint Usage SKU
/// `FB57-C6D5-4F05` **$1.5/h** (Traffic Usage `E7D2-D0E0-D8C1` **$0.07/GBy**
/// when traffic is inspected). billing-behavior: endpoint hours bill while
/// the endpoint exists; destroy stops endpoint-hour charges. Too expensive
/// for apply-smoke even once — debt-only on `terradart-validate`. **Never**
/// wire into apply-smoke.
///
/// Enable `ids.googleapis.com` before apply. [network] is a VPC network
/// self-link / id; [severity] sets the minimum threat severity reported.
final class GoogleCloudIdsEndpoint extends Resource {
  static const String tfType = 'google_cloud_ids_endpoint';

  GoogleCloudIdsEndpoint(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required RefTo<GoogleComputeNetwork> network,
    required CloudIdsEndpointSeverity severity,
    TfArg<String>? description,
    TfArg<List<String>>? threatExceptions,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'network': network.encodeAs('id'),
           'severity': severity,
           'description': ?description,
           'threat_exceptions': ?threatExceptions,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudIdsEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudIdsEndpoint>`.
  RefTo<GoogleCloudIdsEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `endpoint_forwarding_rule` attribute.
  TfRef<String> get endpointForwardingRule =>
      TfRef.attribute<String>(this, 'endpoint_forwarding_rule');

  /// Reference to `endpoint_ip` attribute.
  TfRef<String> get endpointIp => TfRef.attribute<String>(this, 'endpoint_ip');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `severity` attribute.
  TfRef<String> get severity => TfRef.attribute<String>(this, 'severity');

  /// Reference to `threat_exceptions` attribute.
  TfRef<List<String>> get threatExceptions =>
      TfRef.attribute<List<String>>(this, 'threat_exceptions');
}
