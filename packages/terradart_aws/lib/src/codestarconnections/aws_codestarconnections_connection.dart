// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codestarconnections_connection`.
const Set<String> _awsCodestarconnectionsConnectionSensitive = <String>{};

/// Codestarconnections Connection Provider enum for `provider_type`.
extension type const CodestarconnectionsConnectionProviderType._(
  TfArg<String> _
) implements TfArg<String> {
  CodestarconnectionsConnectionProviderType.variable(String name)
    : this._(TfArg.variable(name));
  CodestarconnectionsConnectionProviderType.expression(String template)
    : this._(TfArg.expression(template));
  const CodestarconnectionsConnectionProviderType.arg(TfArg<String> arg)
    : this._(arg);

  static const bitbucket = CodestarconnectionsConnectionProviderType._(
    TfArgLiteral('Bitbucket'),
  );
  static const github = CodestarconnectionsConnectionProviderType._(
    TfArgLiteral('GitHub'),
  );
  static const githubenterpriseserver =
      CodestarconnectionsConnectionProviderType._(
        TfArgLiteral('GitHubEnterpriseServer'),
      );
  static const gitlab = CodestarconnectionsConnectionProviderType._(
    TfArgLiteral('GitLab'),
  );
  static const gitlabselfmanaged = CodestarconnectionsConnectionProviderType._(
    TfArgLiteral('GitLabSelfManaged'),
  );

  static const List<CodestarconnectionsConnectionProviderType> values = [
    bitbucket,
    github,
    githubenterpriseserver,
    gitlab,
    gitlabselfmanaged,
  ];
}

/// At most one of `host_arn`, `provider_type` on `aws_codestarconnections_connection`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.hostArn(...)`.
sealed class CodestarconnectionsConnectionHost {
  const CodestarconnectionsConnectionHost();

  /// Sets `host_arn`.
  const factory CodestarconnectionsConnectionHost.hostArn(
    TfArg<String> hostArn,
  ) = CodestarconnectionsConnectionHostArn;

  /// Sets `provider_type`.
  const factory CodestarconnectionsConnectionHost.providerType(
    CodestarconnectionsConnectionProviderType providerType,
  ) = CodestarconnectionsConnectionHostProviderType;

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

/// The [CodestarconnectionsConnectionHost.hostArn] choice: sets `host_arn`.
final class CodestarconnectionsConnectionHostArn
    extends CodestarconnectionsConnectionHost {
  const CodestarconnectionsConnectionHostArn(this.hostArn);

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

/// The [CodestarconnectionsConnectionHost.providerType] choice: sets `provider_type`.
final class CodestarconnectionsConnectionHostProviderType
    extends CodestarconnectionsConnectionHost {
  const CodestarconnectionsConnectionHostProviderType(this.providerType);

  final CodestarconnectionsConnectionProviderType providerType;

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

/// Factory wrapper for `aws_codestarconnections_connection`.
final class AwsCodestarconnectionsConnection extends Resource {
  static const String tfType = 'aws_codestarconnections_connection';

  AwsCodestarconnectionsConnection(
    super.localName, {
    CodestarconnectionsConnectionHost? host,
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
  Set<String> get sensitiveFields => _awsCodestarconnectionsConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodestarconnectionsConnection>`.
  RefTo<AwsCodestarconnectionsConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `connection_status` attribute.
  TfRef<String> get connectionStatus =>
      TfRef.attribute<String>(this, 'connection_status');

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
