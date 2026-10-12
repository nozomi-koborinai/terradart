// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/google_network_services_gateway.dart';

/// Sensitive field paths for `google_network_services_gateway`.
const Set<String> _googleNetworkServicesGatewaySensitive = <String>{};

/// Factory wrapper for `google_network_services_gateway`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleNetworkServicesGateway extends Data {
  static const String tfType = 'google_network_services_gateway';

  DataGoogleNetworkServicesGateway(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'location': location, 'name': name, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkServicesGatewaySensitive;

  /// A reference to the `google_network_services_gateway` this data source reads, for
  /// arguments typed `RefTo<GoogleNetworkServicesGateway>`.
  RefTo<GoogleNetworkServicesGateway> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `addresses` attribute.
  TfRef<List<String>> get addresses =>
      TfRef.attribute<List<String>>(this, 'addresses');

  /// Reference to `all_ports` attribute.
  TfRef<bool> get allPorts => TfRef.attribute<bool>(this, 'all_ports');

  /// Reference to `allow_global_access` attribute.
  TfRef<bool> get allowGlobalAccess =>
      TfRef.attribute<bool>(this, 'allow_global_access');

  /// Reference to `certificate_urls` attribute.
  TfRef<List<String>> get certificateUrls =>
      TfRef.attribute<List<String>>(this, 'certificate_urls');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_swg_autogen_router_on_destroy` attribute.
  TfRef<bool> get deleteSwgAutogenRouterOnDestroy =>
      TfRef.attribute<bool>(this, 'delete_swg_autogen_router_on_destroy');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `envoy_headers` attribute.
  TfRef<String> get envoyHeaders =>
      TfRef.attribute<String>(this, 'envoy_headers');

  /// Reference to `gateway_security_policy` attribute.
  TfRef<String> get gatewaySecurityPolicy =>
      TfRef.attribute<String>(this, 'gateway_security_policy');

  /// Reference to `ip_version` attribute.
  TfRef<String> get ipVersion => TfRef.attribute<String>(this, 'ip_version');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `ports` attribute.
  TfRef<List<num>> get ports => TfRef.attribute<List<num>>(this, 'ports');

  /// Reference to `routing_mode` attribute.
  TfRef<String> get routingMode =>
      TfRef.attribute<String>(this, 'routing_mode');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `server_tls_policy` attribute.
  TfRef<String> get serverTlsPolicy =>
      TfRef.attribute<String>(this, 'server_tls_policy');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
