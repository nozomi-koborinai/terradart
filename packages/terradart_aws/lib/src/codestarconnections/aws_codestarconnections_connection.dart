// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codestarconnections_connection`.
const Set<String> _awsCodestarconnectionsConnectionSensitive = <String>{};

/// Codestarconnections Connection Provider enum for `provider_type`.
enum CodestarconnectionsConnectionProviderType implements TerraformEnum {
  bitbucket('Bitbucket'),
  github('GitHub'),
  githubenterpriseserver('GitHubEnterpriseServer'),
  gitlab('GitLab'),
  gitlabselfmanaged('GitLabSelfManaged');

  const CodestarconnectionsConnectionProviderType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `host_arn`, `provider_type` on `aws_codestarconnections_connection`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.hostArn(...)`.
sealed class CodestarconnectionsConnectionHostArnOrProviderType {
  const CodestarconnectionsConnectionHostArnOrProviderType();

  /// Sets `host_arn`.
  const factory CodestarconnectionsConnectionHostArnOrProviderType.hostArn(
    TfArg<String> hostArn,
  ) = CodestarconnectionsConnectionHostArnOrProviderTypeHostArn;

  /// Sets `provider_type`.
  const factory CodestarconnectionsConnectionHostArnOrProviderType.providerType(
    TfArg<CodestarconnectionsConnectionProviderType> providerType,
  ) = CodestarconnectionsConnectionHostArnOrProviderTypeProviderType;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CodestarconnectionsConnectionHostArnOrProviderType.hostArn] choice: sets `host_arn`.
final class CodestarconnectionsConnectionHostArnOrProviderTypeHostArn
    extends CodestarconnectionsConnectionHostArnOrProviderType {
  const CodestarconnectionsConnectionHostArnOrProviderTypeHostArn(this.hostArn);

  final TfArg<String> hostArn;

  @override
  String get blockKey => 'host_arn';

  @override
  Map<String, Object?> encode() => {'host_arn': hostArn.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'host_arn': hostArn};
}

/// The [CodestarconnectionsConnectionHostArnOrProviderType.providerType] choice: sets `provider_type`.
final class CodestarconnectionsConnectionHostArnOrProviderTypeProviderType
    extends CodestarconnectionsConnectionHostArnOrProviderType {
  const CodestarconnectionsConnectionHostArnOrProviderTypeProviderType(
    this.providerType,
  );

  final TfArg<CodestarconnectionsConnectionProviderType> providerType;

  @override
  String get blockKey => 'provider_type';

  @override
  Map<String, Object?> encode() => {'provider_type': providerType.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'provider_type': providerType};
}

/// Factory wrapper for `aws_codestarconnections_connection`.
final class AwsCodestarconnectionsConnection extends Resource {
  static const String tfType = 'aws_codestarconnections_connection';

  AwsCodestarconnectionsConnection({
    required super.localName,
    CodestarconnectionsConnectionHostArnOrProviderType? hostArnOrProviderType,
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
           ...?hostArnOrProviderType?.argMap,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodestarconnectionsConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodestarconnectionsConnection>`.
  RefTo<AwsCodestarconnectionsConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `connection_status` attribute.
  TfRef<String> get connectionStatus =>
      TfRef.attribute<String>(this, 'connection_status');
}
