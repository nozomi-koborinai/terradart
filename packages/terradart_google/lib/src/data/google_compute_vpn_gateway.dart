// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/google_compute_vpn_gateway.dart';

/// Sensitive field paths for `google_compute_vpn_gateway`.
const Set<String> _googleComputeVpnGatewaySensitive = <String>{};

/// Factory wrapper for `google_compute_vpn_gateway`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeVpnGateway extends Data {
  static const String tfType = 'google_compute_vpn_gateway';

  DataGoogleComputeVpnGateway(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'project': ?project, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _googleComputeVpnGatewaySensitive;

  /// A reference to the `google_compute_vpn_gateway` this data source reads, for
  /// arguments typed `RefTo<GoogleComputeVpnGateway>`.
  RefTo<GoogleComputeVpnGateway> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
