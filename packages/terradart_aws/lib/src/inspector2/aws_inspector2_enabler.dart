// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_inspector2_enabler`.
const Set<String> _awsInspector2EnablerSensitive = <String>{};

/// Inspector2 Enabler Resource enum for `resource_types`.
extension type const Inspector2EnablerResourceTypes._(TfArg<String> _)
    implements TfArg<String> {
  Inspector2EnablerResourceTypes.variable(String name)
    : this._(TfArg.variable(name));
  Inspector2EnablerResourceTypes.expression(String template)
    : this._(TfArg.expression(template));
  const Inspector2EnablerResourceTypes.arg(TfArg<String> arg) : this._(arg);

  static const ec2 = Inspector2EnablerResourceTypes._(TfArgLiteral('EC2'));
  static const ecr = Inspector2EnablerResourceTypes._(TfArgLiteral('ECR'));
  static const lambda = Inspector2EnablerResourceTypes._(
    TfArgLiteral('LAMBDA'),
  );
  static const lambdaCode = Inspector2EnablerResourceTypes._(
    TfArgLiteral('LAMBDA_CODE'),
  );
  static const codeRepository = Inspector2EnablerResourceTypes._(
    TfArgLiteral('CODE_REPOSITORY'),
  );

  static const List<Inspector2EnablerResourceTypes> values = [
    ec2,
    ecr,
    lambda,
    lambdaCode,
    codeRepository,
  ];
}

/// Factory wrapper for `aws_inspector2_enabler`.
final class AwsInspector2Enabler extends Resource {
  static const String tfType = 'aws_inspector2_enabler';

  AwsInspector2Enabler(
    super.localName, {
    required TfArg<List<String>> accountIds,
    TfArg<String>? region,
    required List<Inspector2EnablerResourceTypes> resourceTypes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_ids': accountIds,
           'region': ?region,
           'resource_types': TfArg.literal([
             for (final e in resourceTypes) e.toTfJson(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInspector2EnablerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsInspector2Enabler>`.
  RefTo<AwsInspector2Enabler> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_ids` attribute.
  TfRef<List<String>> get accountIds =>
      TfRef.attribute<List<String>>(this, 'account_ids');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_types` attribute.
  TfRef<List<String>> get resourceTypes =>
      TfRef.attribute<List<String>>(this, 'resource_types');
}
