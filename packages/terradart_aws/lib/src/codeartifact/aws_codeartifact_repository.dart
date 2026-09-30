// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codeartifact_repository`.
const Set<String> _awsCodeartifactRepositorySensitive = <String>{};

/// Typed helper for the `external_connections` block of
/// `aws_codeartifact_repository` (derived from provider schema).
@immutable
final class CodeartifactRepositoryExternalConnections {
  const CodeartifactRepositoryExternalConnections({
    required this.externalConnectionName,
  });

  final TfArg<String> externalConnectionName;

  Map<String, Object?> encode() => {
    'external_connection_name': externalConnectionName.toTfJson(),
  };
}

/// Typed helper for the `upstream` block of
/// `aws_codeartifact_repository` (derived from provider schema).
@immutable
final class CodeartifactRepositoryUpstream {
  const CodeartifactRepositoryUpstream({required this.repositoryName});

  final TfArg<String> repositoryName;

  Map<String, Object?> encode() => {
    'repository_name': repositoryName.toTfJson(),
  };
}

/// Factory wrapper for `aws_codeartifact_repository`.
final class AwsCodeartifactRepository extends Resource {
  static const String tfType = 'aws_codeartifact_repository';

  AwsCodeartifactRepository({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> domain,
    TfArg<String>? domainOwner,
    TfArg<String>? region,
    required TfArg<String> repository,
    TfArg<Map<String, String>>? tags,
    CodeartifactRepositoryExternalConnections? externalConnections,
    List<CodeartifactRepositoryUpstream>? upstream,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'domain': domain,
           'domain_owner': ?domainOwner,
           'region': ?region,
           'repository': repository,
           'tags': ?tags,
           if (externalConnections != null)
             'external_connections': TfArg.literal(
               externalConnections.encode(),
             ),
           if (upstream != null)
             'upstream': TfArg.literal([for (final e in upstream) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodeartifactRepositorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodeartifactRepository>`.
  RefTo<AwsCodeartifactRepository> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `administrator_account` attribute.
  TfRef<String> get administratorAccount =>
      TfRef.attribute<String>(this, 'administrator_account');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `domain` attribute.
  TfRef<String> get domainRef => TfRef.attribute<String>(this, 'domain');

  /// Reference to `domain_owner` attribute.
  TfRef<String> get domainOwnerRef =>
      TfRef.attribute<String>(this, 'domain_owner');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository` attribute.
  TfRef<String> get repositoryRef =>
      TfRef.attribute<String>(this, 'repository');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
