// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codecommit_repository`.
const Set<String> _awsCodecommitRepositorySensitive = <String>{};

/// Factory wrapper for `aws_codecommit_repository`.
final class DataAwsCodecommitRepository extends Data {
  static const String tfType = 'aws_codecommit_repository';

  DataAwsCodecommitRepository({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> repositoryName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'repository_name': repositoryName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodecommitRepositorySensitive;

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

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryId =>
      TfRef.attribute<String>(this, 'repository_id');
}
