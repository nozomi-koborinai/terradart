// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../ecr/aws_ecr_repository.dart' show AwsEcrRepository;

/// Sensitive field paths for `aws_ecr_repository_policy`.
const Set<String> _awsEcrRepositoryPolicySensitive = <String>{};

/// Factory wrapper for `aws_ecr_repository_policy`.
final class AwsEcrRepositoryPolicy extends Resource {
  static const String tfType = 'aws_ecr_repository_policy';

  AwsEcrRepositoryPolicy({
    required super.localName,
    required TfArg<String> policy,
    TfArg<String>? region,
    required RefTo<AwsEcrRepository> repository,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy': policy,
           'region': ?region,
           'repository': repository.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrRepositoryPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcrRepositoryPolicy>`.
  RefTo<AwsEcrRepositoryPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `registry_id` attribute.
  TfRef<String> get registryId => TfRef.attribute<String>(this, 'registry_id');

  /// Reference to `policy` attribute.
  TfRef<String> get policyRef => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository` attribute.
  TfRef<String> get repositoryRef =>
      TfRef.attribute<String>(this, 'repository');
}
