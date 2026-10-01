// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_lb`.
const Set<String> _awsLightsailLbSensitive = <String>{};

/// Lightsail Lb Ip Address enum for `ip_address_type`.
enum LightsailLbIpAddressType implements TerraformEnum {
  dualstack('dualstack'),
  ipv4('ipv4');

  const LightsailLbIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_lightsail_lb`.
final class AwsLightsailLb extends Resource {
  static const String tfType = 'aws_lightsail_lb';

  AwsLightsailLb(
    super.localName, {
    TfArg<String>? healthCheckPath,
    required TfArg<num> instancePort,
    TfArg<LightsailLbIpAddressType>? ipAddressType,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'health_check_path': ?healthCheckPath,
           'instance_port': instancePort,
           'ip_address_type': ?ipAddressType,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailLbSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLightsailLb>`.
  RefTo<AwsLightsailLb> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `public_ports` attribute.
  TfRef<List<num>> get publicPorts =>
      TfRef.attribute<List<num>>(this, 'public_ports');

  /// Reference to `support_code` attribute.
  TfRef<String> get supportCode =>
      TfRef.attribute<String>(this, 'support_code');

  /// Reference to `health_check_path` attribute.
  TfRef<String> get healthCheckPath =>
      TfRef.attribute<String>(this, 'health_check_path');

  /// Reference to `instance_port` attribute.
  TfRef<num> get instancePort => TfRef.attribute<num>(this, 'instance_port');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
