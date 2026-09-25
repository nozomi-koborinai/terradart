import '../../ir/resource_def.dart';
import 'provider_rules.dart';

/// wrap-init rules for `hashicorp/aws`.
///
/// No Magic Modules. Barrel folders are the terraform-type segment after
/// `aws_`, which is the AWS service for most types (`s3`, `lambda`,
/// `route53`). The EC2 / VPC family is the exception: the provider names
/// those types after the resource (`aws_instance`, `aws_subnet`,
/// `aws_route_table`), so [outputDirAliases] folds them into one `ec2`
/// barrel instead of dozens of one-resource barrels.
final class AwsProviderRules extends ProviderRules {
  const AwsProviderRules();

  @override
  String get providerId => 'hashicorp/aws';

  @override
  String get terraformTypePrefix => 'aws_';

  @override
  bool get typedNestedDefaults => true;

  @override
  Map<String, String> get outputDirAliases => _aliases;

  @override
  List<String> universalGetters(ResourceDef def) {
    final attrs = def.root.attributes.map((a) => a.name).toSet();
    return [
      if (attrs.contains('id'))
        "TfRef<String> get id => TfRef.attribute<String>(this, 'id');",
      if (attrs.contains('arn'))
        "TfRef<String> get arnRef => TfRef.attribute<String>(this, 'arn');",
    ];
  }

  /// Keys are first segments (or longer prefixes) after `aws_`. Segments
  /// are whole words, so `route` never matches `route53_*` and `vpc` never
  /// matches `vpclattice_*`.
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
    // Auto Scaling, not EC2, despite sharing `launch_` with launch_template.
    'launch_configuration': 'autoscaling',
    // Classic ELB policies and ALB aliases share the Elastic Load Balancing
    // barrel with aws_lb*.
    'alb': 'elb',
    'lb': 'elb',
    'app_cookie_stickiness_policy': 'elb',
    'load_balancer': 'elb',
    'proxy_protocol_policy': 'elb',
    // Multi-word service names that would otherwise split on the first word.
    'api_gateway': 'api_gateway',
    'directory_service': 'directory_service',
    'elastic_beanstalk': 'elastic_beanstalk',
    'service_discovery': 'service_discovery',
  };
}
