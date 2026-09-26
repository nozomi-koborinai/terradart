// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_registry_policy`.
const Set<String> _awsEcrRegistryPolicySensitive = <String>{};

/// Factory wrapper for `aws_ecr_registry_policy`.
final class AwsEcrRegistryPolicy extends Resource {
  static const String tfType = 'aws_ecr_registry_policy';

  AwsEcrRegistryPolicy({
    required super.localName,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'policy': policy, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsEcrRegistryPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');
}
