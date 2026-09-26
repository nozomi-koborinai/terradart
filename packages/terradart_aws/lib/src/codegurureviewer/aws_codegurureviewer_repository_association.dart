// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codegurureviewer_repository_association`.
const Set<String> _awsCodegurureviewerRepositoryAssociationSensitive =
    <String>{};

/// Typed helper for the `kms_key_details` block of
/// `aws_codegurureviewer_repository_association` (derived from provider schema).
@immutable
final class CodegurureviewerRepositoryAssociationKmsKeyDetails {
  const CodegurureviewerRepositoryAssociationKmsKeyDetails({
    this.encryptionOption,
    this.kmsKeyId,
  });

  final TfArg<String>? encryptionOption;

  final TfArg<String>? kmsKeyId;

  Map<String, Object?> encode() => {
    if (encryptionOption != null)
      'encryption_option': encryptionOption!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
  };
}

/// Typed helper for the `repository` block of
/// `aws_codegurureviewer_repository_association` (derived from provider schema).
@immutable
final class CodegurureviewerRepositoryAssociationRepository {
  const CodegurureviewerRepositoryAssociationRepository({
    this.bitbucket,
    this.codecommit,
    this.githubEnterpriseServer,
    this.s3Bucket,
  });

  final CodegurureviewerRepositoryAssociationRepositoryBitbucket? bitbucket;

  final CodegurureviewerRepositoryAssociationRepositoryCodecommit? codecommit;

  final CodegurureviewerRepositoryAssociationRepositoryGithubEnterpriseServer?
  githubEnterpriseServer;

  final CodegurureviewerRepositoryAssociationRepositoryS3Bucket? s3Bucket;

  Map<String, Object?> encode() => {
    if (bitbucket != null) 'bitbucket': bitbucket!.encode(),
    if (codecommit != null) 'codecommit': codecommit!.encode(),
    if (githubEnterpriseServer != null)
      'github_enterprise_server': githubEnterpriseServer!.encode(),
    if (s3Bucket != null) 's3_bucket': s3Bucket!.encode(),
  };
}

/// Typed helper for the `repository.bitbucket` block of
/// `aws_codegurureviewer_repository_association` (derived from provider schema).
@immutable
final class CodegurureviewerRepositoryAssociationRepositoryBitbucket {
  const CodegurureviewerRepositoryAssociationRepositoryBitbucket({
    required this.connectionArn,
    required this.name,
    required this.owner,
  });

  final TfArg<String> connectionArn;

  final TfArg<String> name;

  final TfArg<String> owner;

  Map<String, Object?> encode() => {
    'connection_arn': connectionArn.toTfJson(),
    'name': name.toTfJson(),
    'owner': owner.toTfJson(),
  };
}

/// Typed helper for the `repository.codecommit` block of
/// `aws_codegurureviewer_repository_association` (derived from provider schema).
@immutable
final class CodegurureviewerRepositoryAssociationRepositoryCodecommit {
  const CodegurureviewerRepositoryAssociationRepositoryCodecommit({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `repository.github_enterprise_server` block of
/// `aws_codegurureviewer_repository_association` (derived from provider schema).
@immutable
final class CodegurureviewerRepositoryAssociationRepositoryGithubEnterpriseServer {
  const CodegurureviewerRepositoryAssociationRepositoryGithubEnterpriseServer({
    required this.connectionArn,
    required this.name,
    required this.owner,
  });

  final TfArg<String> connectionArn;

  final TfArg<String> name;

  final TfArg<String> owner;

  Map<String, Object?> encode() => {
    'connection_arn': connectionArn.toTfJson(),
    'name': name.toTfJson(),
    'owner': owner.toTfJson(),
  };
}

/// Typed helper for the `repository.s3_bucket` block of
/// `aws_codegurureviewer_repository_association` (derived from provider schema).
@immutable
final class CodegurureviewerRepositoryAssociationRepositoryS3Bucket {
  const CodegurureviewerRepositoryAssociationRepositoryS3Bucket({
    required this.bucketName,
    required this.name,
  });

  final TfArg<String> bucketName;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `aws_codegurureviewer_repository_association`.
final class AwsCodegurureviewerRepositoryAssociation extends Resource {
  static const String tfType = 'aws_codegurureviewer_repository_association';

  AwsCodegurureviewerRepositoryAssociation({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    CodegurureviewerRepositoryAssociationKmsKeyDetails? kmsKeyDetails,
    required CodegurureviewerRepositoryAssociationRepository repository,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (kmsKeyDetails != null)
             'kms_key_details': TfArg.literal(kmsKeyDetails.encode()),
           'repository': TfArg.literal(repository.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCodegurureviewerRepositoryAssociationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');

  /// Reference to `connection_arn` attribute.
  TfRef<String> get connectionArn =>
      TfRef.attribute<String>(this, 'connection_arn');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `provider_type` attribute.
  TfRef<String> get providerType =>
      TfRef.attribute<String>(this, 'provider_type');

  /// Reference to `s3_repository_details` attribute.
  TfRef<List<Map<String, Object?>>> get s3RepositoryDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        's3_repository_details',
      );

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_reason` attribute.
  TfRef<String> get stateReason =>
      TfRef.attribute<String>(this, 'state_reason');
}
