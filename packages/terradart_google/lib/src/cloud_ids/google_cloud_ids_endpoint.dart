// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_ids_endpoint`.
const Set<String> _googleCloudIdsEndpointSensitive = <String>{};

/// Cloud Ids Endpoint enum for `severity`.
enum CloudIdsEndpointSeverity implements TerraformEnum {
  informational('INFORMATIONAL'),
  low('LOW'),
  medium('MEDIUM'),
  high('HIGH'),
  critical('CRITICAL');

  const CloudIdsEndpointSeverity(this.terraformValue);
  @override
  final String terraformValue;
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

  GoogleCloudIdsEndpoint({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> network,
    required TfArg<CloudIdsEndpointSeverity> severity,
    TfArg<String>? description,
    TfArg<List<String>>? threatExceptions,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'network': network,
           'severity': severity,
           if (description != null) 'description': description,
           if (threatExceptions != null) 'threat_exceptions': threatExceptions,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudIdsEndpointSensitive;

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `endpoint_ip` attribute.
  TfRef<String> get endpointIpRef =>
      TfRef.attribute<String>(this, 'endpoint_ip');
}
