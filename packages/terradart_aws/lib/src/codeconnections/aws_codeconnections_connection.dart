// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codeconnections_connection`.
const Set<String> _awsCodeconnectionsConnectionSensitive = <String>{};

/// Codeconnections Connection Provider enum for `provider_type`.
enum CodeconnectionsConnectionProviderType implements TerraformEnum {
  bitbucket('Bitbucket'),
  github('GitHub'),
  githubenterpriseserver('GitHubEnterpriseServer'),
  gitlab('GitLab'),
  gitlabselfmanaged('GitLabSelfManaged'),
  azuredevops('AzureDevOps');

  const CodeconnectionsConnectionProviderType(this.terraformValue);
  @override
  final String terraformValue;
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
    TfArg<CodeconnectionsConnectionProviderType> providerType,
  ) = CodeconnectionsConnectionHostProviderType;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CodeconnectionsConnectionHost.hostArn] choice: sets `host_arn`.
final class CodeconnectionsConnectionHostArn
    extends CodeconnectionsConnectionHost {
  const CodeconnectionsConnectionHostArn(this.hostArn);

  final TfArg<String> hostArn;

  @override
  String get blockKey => 'host_arn';

  @override
  Map<String, Object?> encode() => {'host_arn': hostArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'host_arn': hostArn};
}

/// The [CodeconnectionsConnectionHost.providerType] choice: sets `provider_type`.
final class CodeconnectionsConnectionHostProviderType
    extends CodeconnectionsConnectionHost {
  const CodeconnectionsConnectionHostProviderType(this.providerType);

  final TfArg<CodeconnectionsConnectionProviderType> providerType;

  @override
  String get blockKey => 'provider_type';

  @override
  Map<String, Object?> encode() => {'provider_type': providerType.toTfJson()};

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
