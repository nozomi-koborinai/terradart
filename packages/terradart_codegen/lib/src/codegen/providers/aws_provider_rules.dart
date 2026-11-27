import '../../ir/resource_def.dart';
import 'provider_rules.dart';

final class AwsProviderRules extends ProviderRules {
  const AwsProviderRules();

  @override
  String get providerId => 'hashicorp/aws';

  @override
  String get terraformTypePrefix => 'aws_';

  @override
  bool get typedNestedDefaults => true;

  @override
  bool get derivedEnumDefaults => true;

  @override
  bool get exactlyOneDefaults => true;

  @override
  Map<String, String> get outputDirAliases => _aliases;

  @override
  List<String> universalGetters(ResourceDef def) {
    final attrs = def.root.attributes.map((a) => a.name).toSet();
    return [
      if (attrs.contains('id'))
        "TfRef<String> get id => TfRef.attribute<String>(this, 'id');",
      if (attrs.contains('arn'))
        "TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');",
    ];
  }

  static const Map<String, String> _aliases = {
    'ami': 'ec2',
    'customer': 'ec2',
    'default': 'ec2',
    'ebs': 'ec2',
    'egress': 'ec2',
    'eip': 'ec2',
    'flow': 'ec2',
    'instance': 'ec2',
    'internet': 'ec2',
    'key': 'ec2',
    'launch': 'ec2',
    'main': 'ec2',
    'nat': 'ec2',
    'network': 'ec2',
    'placement': 'ec2',
    'route': 'ec2',
    'security': 'ec2',
    'snapshot': 'ec2',
    'spot': 'ec2',
    'subnet': 'ec2',
    'volume': 'ec2',
    'vpc': 'ec2',
    'vpn': 'ec2',
    'launch_configuration': 'autoscaling',
    'alb': 'elb',
    'lb': 'elb',
    'app_cookie_stickiness_policy': 'elb',
    'load_balancer': 'elb',
    'proxy_protocol_policy': 'elb',
    'api_gateway': 'api_gateway',
    'directory_service': 'directory_service',
    'elastic_beanstalk': 'elastic_beanstalk',
    'service_discovery': 'service_discovery',
  };
}
