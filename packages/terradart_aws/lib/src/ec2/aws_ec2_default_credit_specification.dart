// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_default_credit_specification`.
const Set<String> _awsEc2DefaultCreditSpecificationSensitive = <String>{};

/// Ec2 Default Credit Specification Cpu enum for `cpu_credits`.
extension type const Ec2DefaultCreditSpecificationCpuCredits._(TfArg<String> _)
    implements TfArg<String> {
  Ec2DefaultCreditSpecificationCpuCredits.variable(String name)
    : this._(TfArg.variable(name));
  Ec2DefaultCreditSpecificationCpuCredits.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2DefaultCreditSpecificationCpuCredits.arg(TfArg<String> arg)
    : this._(arg);

  static const standard = Ec2DefaultCreditSpecificationCpuCredits._(
    TfArgLiteral('standard'),
  );
  static const unlimited = Ec2DefaultCreditSpecificationCpuCredits._(
    TfArgLiteral('unlimited'),
  );

  static const List<Ec2DefaultCreditSpecificationCpuCredits> values = [
    standard,
    unlimited,
  ];
}

/// Ec2 Default Credit Specification Instance enum for `instance_family`.
extension type const Ec2DefaultCreditSpecificationInstanceFamily._(
  TfArg<String> _
) implements TfArg<String> {
  Ec2DefaultCreditSpecificationInstanceFamily.variable(String name)
    : this._(TfArg.variable(name));
  Ec2DefaultCreditSpecificationInstanceFamily.expression(String template)
    : this._(TfArg.expression(template));
  const Ec2DefaultCreditSpecificationInstanceFamily.arg(TfArg<String> arg)
    : this._(arg);

  static const t2 = Ec2DefaultCreditSpecificationInstanceFamily._(
    TfArgLiteral('t2'),
  );
  static const t3 = Ec2DefaultCreditSpecificationInstanceFamily._(
    TfArgLiteral('t3'),
  );
  static const t3a = Ec2DefaultCreditSpecificationInstanceFamily._(
    TfArgLiteral('t3a'),
  );
  static const t4g = Ec2DefaultCreditSpecificationInstanceFamily._(
    TfArgLiteral('t4g'),
  );

  static const List<Ec2DefaultCreditSpecificationInstanceFamily> values = [
    t2,
    t3,
    t3a,
    t4g,
  ];
}

/// Factory wrapper for `aws_ec2_default_credit_specification`.
final class AwsEc2DefaultCreditSpecification extends Resource {
  static const String tfType = 'aws_ec2_default_credit_specification';

  AwsEc2DefaultCreditSpecification(
    super.localName, {
    required Ec2DefaultCreditSpecificationCpuCredits cpuCredits,
    required Ec2DefaultCreditSpecificationInstanceFamily instanceFamily,
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2DefaultCreditSpecificationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2DefaultCreditSpecification>`.
  RefTo<AwsEc2DefaultCreditSpecification> get ref => RefTo.of(this);

  /// Reference to `cpu_credits` attribute.
  TfRef<String> get cpuCredits => TfRef.attribute<String>(this, 'cpu_credits');

  /// Reference to `instance_family` attribute.
  TfRef<String> get instanceFamily =>
      TfRef.attribute<String>(this, 'instance_family');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
