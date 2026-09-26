// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_default_credit_specification`.
const Set<String> _awsEc2DefaultCreditSpecificationSensitive = <String>{};

/// Factory wrapper for `aws_ec2_default_credit_specification`.
final class AwsEc2DefaultCreditSpecification extends Resource {
  static const String tfType = 'aws_ec2_default_credit_specification';

  AwsEc2DefaultCreditSpecification({
    required super.localName,
    required TfArg<String> cpuCredits,
    required TfArg<String> instanceFamily,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cpu_credits': cpuCredits,
           'instance_family': instanceFamily,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2DefaultCreditSpecificationSensitive;
}
