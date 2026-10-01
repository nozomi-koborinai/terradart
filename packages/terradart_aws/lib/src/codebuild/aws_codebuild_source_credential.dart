// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codebuild_source_credential`.
const Set<String> _awsCodebuildSourceCredentialSensitive = <String>{'token'};

/// Codebuild Source Credential Auth enum for `auth_type`.
extension type const CodebuildSourceCredentialAuthType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildSourceCredentialAuthType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildSourceCredentialAuthType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildSourceCredentialAuthType.arg(TfArg<String> arg) : this._(arg);

  static const oauth = CodebuildSourceCredentialAuthType._(
    TfArgLiteral('OAUTH'),
  );
  static const basicAuth = CodebuildSourceCredentialAuthType._(
    TfArgLiteral('BASIC_AUTH'),
  );
  static const personalAccessToken = CodebuildSourceCredentialAuthType._(
    TfArgLiteral('PERSONAL_ACCESS_TOKEN'),
  );
  static const codeconnections = CodebuildSourceCredentialAuthType._(
    TfArgLiteral('CODECONNECTIONS'),
  );
  static const secretsManager = CodebuildSourceCredentialAuthType._(
    TfArgLiteral('SECRETS_MANAGER'),
  );

  static const List<CodebuildSourceCredentialAuthType> values = [
    oauth,
    basicAuth,
    personalAccessToken,
    codeconnections,
    secretsManager,
  ];
}

/// Codebuild Source Credential Server enum for `server_type`.
extension type const CodebuildSourceCredentialServerType._(TfArg<String> _)
    implements TfArg<String> {
  CodebuildSourceCredentialServerType.variable(String name)
    : this._(TfArg.variable(name));
  CodebuildSourceCredentialServerType.expression(String template)
    : this._(TfArg.expression(template));
  const CodebuildSourceCredentialServerType.arg(TfArg<String> arg)
    : this._(arg);

  static const github = CodebuildSourceCredentialServerType._(
    TfArgLiteral('GITHUB'),
  );
  static const bitbucket = CodebuildSourceCredentialServerType._(
    TfArgLiteral('BITBUCKET'),
  );
  static const githubEnterprise = CodebuildSourceCredentialServerType._(
    TfArgLiteral('GITHUB_ENTERPRISE'),
  );
  static const gitlab = CodebuildSourceCredentialServerType._(
    TfArgLiteral('GITLAB'),
  );
  static const gitlabSelfManaged = CodebuildSourceCredentialServerType._(
    TfArgLiteral('GITLAB_SELF_MANAGED'),
  );

  static const List<CodebuildSourceCredentialServerType> values = [
    github,
    bitbucket,
    githubEnterprise,
    gitlab,
    gitlabSelfManaged,
  ];
}

/// Factory wrapper for `aws_codebuild_source_credential`.
final class AwsCodebuildSourceCredential extends Resource {
  static const String tfType = 'aws_codebuild_source_credential';

  AwsCodebuildSourceCredential(
    super.localName, {
    required CodebuildSourceCredentialAuthType authType,
    TfArg<String>? region,
    required CodebuildSourceCredentialServerType serverType,
    required Sensitive<String> token,
    TfArg<String>? userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auth_type': authType,
           'region': ?region,
           'server_type': serverType,
           'token': token,
           'user_name': ?userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodebuildSourceCredentialSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodebuildSourceCredential>`.
  RefTo<AwsCodebuildSourceCredential> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auth_type` attribute.
  TfRef<String> get authType => TfRef.attribute<String>(this, 'auth_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `server_type` attribute.
  TfRef<String> get serverType => TfRef.attribute<String>(this, 'server_type');

  /// Reference to `token` attribute.
  TfRef<String> get token => TfRef.attribute<String>(this, 'token');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
