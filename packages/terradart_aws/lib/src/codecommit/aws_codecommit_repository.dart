// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_codecommit_repository`.
const Set<String> _awsCodecommitRepositorySensitive = <String>{};

/// Factory wrapper for `aws_codecommit_repository`.
final class AwsCodecommitRepository extends Resource {
  static const String tfType = 'aws_codecommit_repository';

  AwsCodecommitRepository({
    required super.localName,
    TfArg<String>? defaultBranch,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? region,
    required TfArg<String> repositoryName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_branch': ?defaultBranch,
           'description': ?description,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'region': ?region,
           'repository_name': repositoryName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodecommitRepositorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodecommitRepository>`.
  RefTo<AwsCodecommitRepository> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `clone_url_http` attribute.
  TfRef<String> get cloneUrlHttp =>
      TfRef.attribute<String>(this, 'clone_url_http');

  /// Reference to `clone_url_ssh` attribute.
  TfRef<String> get cloneUrlSsh =>
      TfRef.attribute<String>(this, 'clone_url_ssh');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryId =>
      TfRef.attribute<String>(this, 'repository_id');

  /// Reference to `default_branch` attribute.
  TfRef<String> get defaultBranchRef =>
      TfRef.attribute<String>(this, 'default_branch');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository_name` attribute.
  TfRef<String> get repositoryNameRef =>
      TfRef.attribute<String>(this, 'repository_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
