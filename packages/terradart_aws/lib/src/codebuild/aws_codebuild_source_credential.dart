// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codebuild_source_credential`.
const Set<String> _awsCodebuildSourceCredentialSensitive = <String>{'token'};

/// Codebuild Source Credential Auth enum for `auth_type`.
enum CodebuildSourceCredentialAuthType implements TerraformEnum {
  oauth('OAUTH'),
  basicAuth('BASIC_AUTH'),
  personalAccessToken('PERSONAL_ACCESS_TOKEN'),
  codeconnections('CODECONNECTIONS'),
  secretsManager('SECRETS_MANAGER');

  const CodebuildSourceCredentialAuthType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Codebuild Source Credential Server enum for `server_type`.
enum CodebuildSourceCredentialServerType implements TerraformEnum {
  github('GITHUB'),
  bitbucket('BITBUCKET'),
  githubEnterprise('GITHUB_ENTERPRISE'),
  gitlab('GITLAB'),
  gitlabSelfManaged('GITLAB_SELF_MANAGED');

  const CodebuildSourceCredentialServerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_codebuild_source_credential`.
final class AwsCodebuildSourceCredential extends Resource {
  static const String tfType = 'aws_codebuild_source_credential';

  AwsCodebuildSourceCredential({
    required super.localName,
    required TfArg<CodebuildSourceCredentialAuthType> authType,
    TfArg<String>? region,
    required TfArg<CodebuildSourceCredentialServerType> serverType,
    required TfArg<String> token,
    TfArg<String>? userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auth_type': authType,
           if (region != null) 'region': region,
           'server_type': serverType,
           'token': token,
           if (userName != null) 'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodebuildSourceCredentialSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
