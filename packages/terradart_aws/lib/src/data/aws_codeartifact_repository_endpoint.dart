// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codeartifact_repository_endpoint`.
const Set<String> _awsCodeartifactRepositoryEndpointSensitive = <String>{};

/// Factory wrapper for `aws_codeartifact_repository_endpoint`.
final class DataAwsCodeartifactRepositoryEndpoint extends Data {
  static const String tfType = 'aws_codeartifact_repository_endpoint';

  DataAwsCodeartifactRepositoryEndpoint({
    required super.localName,
    required TfArg<String> domain,
    TfArg<String>? domainOwner,
    required TfArg<String> format,
    TfArg<String>? region,
    required TfArg<String> repository,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain': domain,
           'domain_owner': ?domainOwner,
           'format': format,
           'region': ?region,
           'repository': repository,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCodeartifactRepositoryEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `repository_endpoint` attribute.
  TfRef<String> get repositoryEndpoint =>
      TfRef.attribute<String>(this, 'repository_endpoint');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `domain_owner` attribute.
  TfRef<String> get domainOwner =>
      TfRef.attribute<String>(this, 'domain_owner');

  /// Reference to `format` attribute.
  TfRef<String> get format => TfRef.attribute<String>(this, 'format');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository` attribute.
  TfRef<String> get repository => TfRef.attribute<String>(this, 'repository');
}
