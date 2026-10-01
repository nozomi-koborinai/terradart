// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codeconnections_connection`.
const Set<String> _awsCodeconnectionsConnectionSensitive = <String>{};

/// Codeconnections Connection Provider enum for `provider_type`.
extension type const CodeconnectionsConnectionProviderType._(TfArg<String> _)
    implements TfArg<String> {
  CodeconnectionsConnectionProviderType.variable(String name)
    : this._(TfArg.variable(name));
  CodeconnectionsConnectionProviderType.expression(String template)
    : this._(TfArg.expression(template));
  const CodeconnectionsConnectionProviderType.arg(TfArg<String> arg)
    : this._(arg);

  static const bitbucket = CodeconnectionsConnectionProviderType._(
    TfArgLiteral('Bitbucket'),
  );
  static const github = CodeconnectionsConnectionProviderType._(
    TfArgLiteral('GitHub'),
  );
  static const githubenterpriseserver = CodeconnectionsConnectionProviderType._(
    TfArgLiteral('GitHubEnterpriseServer'),
  );
  static const gitlab = CodeconnectionsConnectionProviderType._(
    TfArgLiteral('GitLab'),
  );
  static const gitlabselfmanaged = CodeconnectionsConnectionProviderType._(
    TfArgLiteral('GitLabSelfManaged'),
  );
  static const azuredevops = CodeconnectionsConnectionProviderType._(
    TfArgLiteral('AzureDevOps'),
  );

  static const List<CodeconnectionsConnectionProviderType> values = [
    bitbucket,
    github,
    githubenterpriseserver,
    gitlab,
    gitlabselfmanaged,
    azuredevops,
  ];
}

/// At most one of `host_arn`, `provider_type` on `aws_codeconnections_connection`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.hostArn(...)`.
sealed class CodeconnectionsConnectionHost {
  const CodeconnectionsConnectionHost();

  /// Sets `host_arn`.
  const factory CodeconnectionsConnectionHost.hostArn(TfArg<String> hostArn) =
      CodeconnectionsConnectionHostArn;

  /// Sets `provider_type`.
  const factory CodeconnectionsConnectionHost.providerType(
    CodeconnectionsConnectionProviderType providerType,
  ) = CodeconnectionsConnectionHostProviderType;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CodeconnectionsConnectionHost.hostArn] choice: sets `host_arn`.
final class CodeconnectionsConnectionHostArn
    extends CodeconnectionsConnectionHost {
  const CodeconnectionsConnectionHostArn(this.hostArn);

  final TfArg<String> hostArn;

  @internal
  @override
  String get blockKey => 'host_arn';

  @internal
  @override
  Map<String, Object?> encode() => {'host_arn': hostArn.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'host_arn': hostArn};
}

/// The [CodeconnectionsConnectionHost.providerType] choice: sets `provider_type`.
final class CodeconnectionsConnectionHostProviderType
    extends CodeconnectionsConnectionHost {
  const CodeconnectionsConnectionHostProviderType(this.providerType);

  final CodeconnectionsConnectionProviderType providerType;

  @internal
  @override
  String get blockKey => 'provider_type';

  @internal
  @override
  Map<String, Object?> encode() => {'provider_type': providerType.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'provider_type': providerType};
}

/// Factory wrapper for `aws_codeconnections_connection`.
final class AwsCodeconnectionsConnection extends Resource {
  static const String tfType = 'aws_codeconnections_connection';

  AwsCodeconnectionsConnection(
    super.localName, {
    CodeconnectionsConnectionHost? host,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?host?.argMap,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodeconnectionsConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodeconnectionsConnection>`.
  RefTo<AwsCodeconnectionsConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `connection_status` attribute.
  TfRef<String> get connectionStatus =>
      TfRef.attribute<String>(this, 'connection_status');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `host_arn` attribute.
  TfRef<String> get hostArn => TfRef.attribute<String>(this, 'host_arn');

  /// Reference to `provider_type` attribute.
  TfRef<String> get providerType =>
      TfRef.attribute<String>(this, 'provider_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
