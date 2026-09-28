// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_traffic_mirror_filter`.
const Set<String> _awsEc2TrafficMirrorFilterSensitive = <String>{};

/// Ec2 Traffic Mirror Filter Network enum for `network_services`.
enum Ec2TrafficMirrorFilterNetworkServices implements TerraformEnum {
  amazonDns('amazon-dns');

  const Ec2TrafficMirrorFilterNetworkServices(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_traffic_mirror_filter`.
final class AwsEc2TrafficMirrorFilter extends Resource {
  static const String tfType = 'aws_ec2_traffic_mirror_filter';

  AwsEc2TrafficMirrorFilter({
    required super.localName,
    TfArg<String>? description,
    List<TfArg<Ec2TrafficMirrorFilterNetworkServices>>? networkServices,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (networkServices != null)
             'network_services': TfArg.literal([
               for (final e in networkServices) e.toTfJson(),
             ]),
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TrafficMirrorFilterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
