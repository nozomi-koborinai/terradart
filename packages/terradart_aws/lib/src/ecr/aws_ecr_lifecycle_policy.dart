// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_lifecycle_policy`.
const Set<String> _awsEcrLifecyclePolicySensitive = <String>{};

/// Factory wrapper for `aws_ecr_lifecycle_policy`.
final class AwsEcrLifecyclePolicy extends Resource {
  static const String tfType = 'aws_ecr_lifecycle_policy';

  AwsEcrLifecyclePolicy({
    required super.localName,
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<String> repository,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy': policy,
           if (region != null) 'region': region,
           'repository': repository,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrLifecyclePolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');
}
