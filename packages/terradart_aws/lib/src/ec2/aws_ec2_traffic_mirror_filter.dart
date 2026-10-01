// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_traffic_mirror_filter`.
const Set<String> _awsEc2TrafficMirrorFilterSensitive = <String>{};

/// Ec2 Traffic Mirror Filter Network enum for `network_services`.
extension type const Ec2TrafficMirrorFilterNetworkServices._(TfArg<String> _)
    implements TfArg<String> {
  Ec2TrafficMirrorFilterNetworkServices.variable(String name)
    : this._(TfArg.variable(name));
  Ec2TrafficMirrorFilterNetworkServices.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2TrafficMirrorFilterNetworkServices.arg(TfArg<String> arg)
    : this._(arg);

  static const amazonDns = Ec2TrafficMirrorFilterNetworkServices._(
    TfArgLiteral('amazon-dns'),
  );

  static const List<Ec2TrafficMirrorFilterNetworkServices> values = [amazonDns];
}

/// Factory wrapper for `aws_ec2_traffic_mirror_filter`.
final class AwsEc2TrafficMirrorFilter extends Resource {
  static const String tfType = 'aws_ec2_traffic_mirror_filter';

  AwsEc2TrafficMirrorFilter(
    super.localName, {
    TfArg<String>? description,
    List<Ec2TrafficMirrorFilterNetworkServices>? networkServices,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           if (networkServices != null)
             'network_services': TfArg.literal([
               for (final e in networkServices) e.toTfJson(),
             ]),
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2TrafficMirrorFilterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2TrafficMirrorFilter>`.
  RefTo<AwsEc2TrafficMirrorFilter> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `network_services` attribute.
  TfRef<List<String>> get networkServices =>
      TfRef.attribute<List<String>>(this, 'network_services');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
