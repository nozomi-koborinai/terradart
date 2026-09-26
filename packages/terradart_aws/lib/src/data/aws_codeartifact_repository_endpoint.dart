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
           if (domainOwner != null) 'domain_owner': domainOwner,
           'format': format,
           if (region != null) 'region': region,
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
}
