// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_globalaccelerator_custom_routing_accelerator`.
const Set<String> _awsGlobalacceleratorCustomRoutingAcceleratorSensitive =
    <String>{};

/// Globalaccelerator Custom Routing Accelerator Ip Address enum for `ip_address_type`.
extension type const GlobalacceleratorCustomRoutingAcceleratorIpAddressType._(
  TfArg<String> _
) implements TfArg<String> {
  GlobalacceleratorCustomRoutingAcceleratorIpAddressType.variable(String name)
    : this._(TfArg.variable(name));
  GlobalacceleratorCustomRoutingAcceleratorIpAddressType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const GlobalacceleratorCustomRoutingAcceleratorIpAddressType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const ipv4 = GlobalacceleratorCustomRoutingAcceleratorIpAddressType._(
    TfArgLiteral('IPV4'),
  );
  static const dualStack =
      GlobalacceleratorCustomRoutingAcceleratorIpAddressType._(
        TfArgLiteral('DUAL_STACK'),
      );

  static const List<GlobalacceleratorCustomRoutingAcceleratorIpAddressType>
  values = [ipv4, dualStack];
}

/// Typed helper for the `attributes` block of
/// `aws_globalaccelerator_custom_routing_accelerator` (derived from provider schema).
@immutable
final class GlobalacceleratorCustomRoutingAcceleratorAttributes {
  const GlobalacceleratorCustomRoutingAcceleratorAttributes({
    this.flowLogsEnabled,
    this.flowLogsS3Bucket,
    this.flowLogsS3Prefix,
  });

  final TfArg<bool>? flowLogsEnabled;

  final TfArg<String>? flowLogsS3Bucket;

  final TfArg<String>? flowLogsS3Prefix;

  @internal
  Map<String, Object?> encode() => {
    'flow_logs_enabled': ?flowLogsEnabled?.toTfJson(),
    'flow_logs_s3_bucket': ?flowLogsS3Bucket?.toTfJson(),
    'flow_logs_s3_prefix': ?flowLogsS3Prefix?.toTfJson(),
  };
}

/// Factory wrapper for `aws_globalaccelerator_custom_routing_accelerator`.
final class AwsGlobalacceleratorCustomRoutingAccelerator extends Resource {
  static const String tfType =
      'aws_globalaccelerator_custom_routing_accelerator';

  AwsGlobalacceleratorCustomRoutingAccelerator(
    super.localName, {
    TfArg<bool>? enabled,
    GlobalacceleratorCustomRoutingAcceleratorIpAddressType? ipAddressType,
    TfArg<List<String>>? ipAddresses,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    GlobalacceleratorCustomRoutingAcceleratorAttributes? attributes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'ip_address_type': ?ipAddressType,
           'ip_addresses': ?ipAddresses,
           'name': name,
           'tags': ?tags,
           if (attributes != null)
             'attributes': TfArg.literal(attributes.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGlobalacceleratorCustomRoutingAcceleratorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlobalacceleratorCustomRoutingAccelerator>`.
  RefTo<AwsGlobalacceleratorCustomRoutingAccelerator> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `hosted_zone_id` attribute.
  TfRef<String> get hostedZoneId =>
      TfRef.attribute<String>(this, 'hosted_zone_id');

  /// Reference to `ip_sets` attribute.
  TfRef<List<Map<String, Object?>>> get ipSets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ip_sets');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `ip_addresses` attribute.
  TfRef<List<String>> get ipAddresses =>
      TfRef.attribute<List<String>>(this, 'ip_addresses');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
