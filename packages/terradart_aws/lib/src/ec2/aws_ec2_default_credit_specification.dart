// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_default_credit_specification`.
const Set<String> _awsEc2DefaultCreditSpecificationSensitive = <String>{};

/// Ec2 Default Credit Specification Cpu enum for `cpu_credits`.
enum Ec2DefaultCreditSpecificationCpuCredits implements TerraformEnum {
  standard('standard'),
  unlimited('unlimited');

  const Ec2DefaultCreditSpecificationCpuCredits(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Default Credit Specification Instance enum for `instance_family`.
enum Ec2DefaultCreditSpecificationInstanceFamily implements TerraformEnum {
  t2('t2'),
  t3('t3'),
  t3a('t3a'),
  t4g('t4g');

  const Ec2DefaultCreditSpecificationInstanceFamily(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ec2_default_credit_specification`.
final class AwsEc2DefaultCreditSpecification extends Resource {
  static const String tfType = 'aws_ec2_default_credit_specification';

  AwsEc2DefaultCreditSpecification({
    required super.localName,
    required TfArg<Ec2DefaultCreditSpecificationCpuCredits> cpuCredits,
    required TfArg<Ec2DefaultCreditSpecificationInstanceFamily> instanceFamily,
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
