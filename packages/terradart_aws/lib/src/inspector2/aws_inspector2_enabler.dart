// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_inspector2_enabler`.
const Set<String> _awsInspector2EnablerSensitive = <String>{};

/// Inspector2 Enabler Resource enum for `resource_types`.
enum Inspector2EnablerResourceTypes implements TerraformEnum {
  ec2('EC2'),
  ecr('ECR'),
  lambda('LAMBDA'),
  lambdaCode('LAMBDA_CODE'),
  codeRepository('CODE_REPOSITORY');

  const Inspector2EnablerResourceTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_inspector2_enabler`.
final class AwsInspector2Enabler extends Resource {
  static const String tfType = 'aws_inspector2_enabler';

  AwsInspector2Enabler({
    required super.localName,
    required TfArg<List<String>> accountIds,
    TfArg<String>? region,
    required List<TfArg<Inspector2EnablerResourceTypes>> resourceTypes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_ids': accountIds,
           if (region != null) 'region': region,
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
}
