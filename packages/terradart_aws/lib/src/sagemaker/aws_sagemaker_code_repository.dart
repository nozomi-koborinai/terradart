// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_code_repository`.
const Set<String> _awsSagemakerCodeRepositorySensitive = <String>{};

/// Typed helper for the `git_config` block of
/// `aws_sagemaker_code_repository` (derived from provider schema).
@immutable
final class SagemakerCodeRepositoryGitConfig {
  const SagemakerCodeRepositoryGitConfig({
    this.branch,
    required this.repositoryUrl,
    this.secretArn,
  });

  final TfArg<String>? branch;

  final TfArg<String> repositoryUrl;

  final TfArg<String>? secretArn;

  Map<String, Object?> encode() => {
    if (branch != null) 'branch': branch!.toTfJson(),
    'repository_url': repositoryUrl.toTfJson(),
    if (secretArn != null) 'secret_arn': secretArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_code_repository`.
final class AwsSagemakerCodeRepository extends Resource {
  static const String tfType = 'aws_sagemaker_code_repository';

  AwsSagemakerCodeRepository({
    required super.localName,
    required TfArg<String> codeRepositoryName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required SagemakerCodeRepositoryGitConfig gitConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'code_repository_name': codeRepositoryName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'git_config': TfArg.literal(gitConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerCodeRepositorySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
