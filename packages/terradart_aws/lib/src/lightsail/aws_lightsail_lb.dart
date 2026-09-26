// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_lb`.
const Set<String> _awsLightsailLbSensitive = <String>{};

/// Factory wrapper for `aws_lightsail_lb`.
final class AwsLightsailLb extends Resource {
  static const String tfType = 'aws_lightsail_lb';

  AwsLightsailLb({
    required super.localName,
    TfArg<String>? healthCheckPath,
    required TfArg<num> instancePort,
    TfArg<String>? ipAddressType,
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
           if (healthCheckPath != null) 'health_check_path': healthCheckPath,
           'instance_port': instancePort,
           if (ipAddressType != null) 'ip_address_type': ipAddressType,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailLbSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
