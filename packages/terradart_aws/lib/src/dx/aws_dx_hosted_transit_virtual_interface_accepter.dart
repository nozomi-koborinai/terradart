// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_hosted_transit_virtual_interface_accepter`.
const Set<String> _awsDxHostedTransitVirtualInterfaceAccepterSensitive =
    <String>{};

/// Factory wrapper for `aws_dx_hosted_transit_virtual_interface_accepter`.
final class AwsDxHostedTransitVirtualInterfaceAccepter extends Resource {
  static const String tfType =
      'aws_dx_hosted_transit_virtual_interface_accepter';

  AwsDxHostedTransitVirtualInterfaceAccepter(
    super.localName, {
    required TfArg<String> dxGatewayId,
    TfArg<num>? prefixPoolAllocatedCountIpv4,
    TfArg<num>? prefixPoolAllocatedCountIpv6,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualInterfaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dx_gateway_id': dxGatewayId,
           'prefix_pool_allocated_count_ipv4': ?prefixPoolAllocatedCountIpv4,
           'prefix_pool_allocated_count_ipv6': ?prefixPoolAllocatedCountIpv6,
           'region': ?region,
           'tags': ?tags,
           'virtual_interface_id': virtualInterfaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDxHostedTransitVirtualInterfaceAccepterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDxHostedTransitVirtualInterfaceAccepter>`.
  RefTo<AwsDxHostedTransitVirtualInterfaceAccepter> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dx_gateway_id` attribute.
  TfRef<String> get dxGatewayId =>
      TfRef.attribute<String>(this, 'dx_gateway_id');

  /// Reference to `prefix_pool_allocated_count_ipv4` attribute.
  TfRef<num> get prefixPoolAllocatedCountIpv4 =>
      TfRef.attribute<num>(this, 'prefix_pool_allocated_count_ipv4');

  /// Reference to `prefix_pool_allocated_count_ipv6` attribute.
  TfRef<num> get prefixPoolAllocatedCountIpv6 =>
      TfRef.attribute<num>(this, 'prefix_pool_allocated_count_ipv6');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_interface_id` attribute.
  TfRef<String> get virtualInterfaceId =>
      TfRef.attribute<String>(this, 'virtual_interface_id');
}
