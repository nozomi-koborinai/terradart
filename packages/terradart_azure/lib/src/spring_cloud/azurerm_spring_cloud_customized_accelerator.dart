// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_customized_accelerator`.
const Set<String> _azurermSpringCloudCustomizedAcceleratorSensitive = <String>{
  'git_repository.basic_auth.password',
  'git_repository.ssh_auth.host_key',
  'git_repository.ssh_auth.private_key',
};

/// Spring Cloud Customized Accelerator enum for `accelerator_type`.
extension type const SpringCloudCustomizedAcceleratorType._(TfArg<String> _)
    implements TfArg<String> {
  SpringCloudCustomizedAcceleratorType.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudCustomizedAcceleratorType.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudCustomizedAcceleratorType.arg(TfArg<String> arg)
    : this._(arg);

  static const accelerator = SpringCloudCustomizedAcceleratorType._(
    TfArgLiteral('Accelerator'),
  );
  static const fragment = SpringCloudCustomizedAcceleratorType._(
    TfArgLiteral('Fragment'),
  );

  static const List<SpringCloudCustomizedAcceleratorType> values = [
    accelerator,
    fragment,
  ];
}

/// Typed helper for the `git_repository` block of
/// `azurerm_spring_cloud_customized_accelerator` (derived from provider schema).
@immutable
final class SpringCloudCustomizedAcceleratorGitRepository {
  const SpringCloudCustomizedAcceleratorGitRepository({
    required this.reference,
    this.caCertificateId,
    this.intervalInSeconds,
    this.path,
    required this.url,
    this.auth,
  });

  final SpringCloudCustomizedAcceleratorReference reference;

  final TfArg<String>? caCertificateId;

  final TfArg<num>? intervalInSeconds;

  final TfArg<String>? path;

  final TfArg<String> url;

  final SpringCloudCustomizedAcceleratorAuth? auth;

  @internal
  Map<String, Object?> encode() => {
    ...reference.encode(),
    'ca_certificate_id': ?caCertificateId?.toTfJson(),
    'interval_in_seconds': ?intervalInSeconds?.toTfJson(),
    'path': ?path?.toTfJson(),
    'url': url.toTfJson(),
    ...?auth?.encode(),
  };
}

/// Exactly one of `branch`, `commit`, `git_tag` on the `git_repository` block of `azurerm_spring_cloud_customized_accelerator`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.branch(...)`.
sealed class SpringCloudCustomizedAcceleratorReference {
  const SpringCloudCustomizedAcceleratorReference();

  /// Sets `branch`.
  const factory SpringCloudCustomizedAcceleratorReference.branch(
    TfArg<String> branch,
  ) = SpringCloudCustomizedAcceleratorReferenceBranch;

  /// Sets `commit`.
  const factory SpringCloudCustomizedAcceleratorReference.commit(
    TfArg<String> commit,
  ) = SpringCloudCustomizedAcceleratorReferenceCommit;

  /// Sets `git_tag`.
  const factory SpringCloudCustomizedAcceleratorReference.gitTag(
    TfArg<String> gitTag,
  ) = SpringCloudCustomizedAcceleratorReferenceGitTag;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [SpringCloudCustomizedAcceleratorReference.branch] choice: sets `branch`.
final class SpringCloudCustomizedAcceleratorReferenceBranch
    extends SpringCloudCustomizedAcceleratorReference {
  const SpringCloudCustomizedAcceleratorReferenceBranch(this.branch);

  final TfArg<String> branch;

  @internal
  @override
  String get blockKey => 'branch';

  @internal
  @override
  Map<String, Object?> encode() => {'branch': branch.toTfJson()};
}

/// The [SpringCloudCustomizedAcceleratorReference.commit] choice: sets `commit`.
final class SpringCloudCustomizedAcceleratorReferenceCommit
    extends SpringCloudCustomizedAcceleratorReference {
  const SpringCloudCustomizedAcceleratorReferenceCommit(this.commit);

  final TfArg<String> commit;

  @internal
  @override
  String get blockKey => 'commit';

  @internal
  @override
  Map<String, Object?> encode() => {'commit': commit.toTfJson()};
}

/// The [SpringCloudCustomizedAcceleratorReference.gitTag] choice: sets `git_tag`.
final class SpringCloudCustomizedAcceleratorReferenceGitTag
    extends SpringCloudCustomizedAcceleratorReference {
  const SpringCloudCustomizedAcceleratorReferenceGitTag(this.gitTag);

  final TfArg<String> gitTag;

  @internal
  @override
  String get blockKey => 'git_tag';

  @internal
  @override
  Map<String, Object?> encode() => {'git_tag': gitTag.toTfJson()};
}

/// At most one of `basic_auth`, `ssh_auth` on the `git_repository` block of `azurerm_spring_cloud_customized_accelerator`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.basicAuth(...)`.
sealed class SpringCloudCustomizedAcceleratorAuth {
  const SpringCloudCustomizedAcceleratorAuth();

  /// Sets `basic_auth`.
  const factory SpringCloudCustomizedAcceleratorAuth.basicAuth(
    SpringCloudCustomizedAcceleratorBasicAuth basicAuth,
  ) = SpringCloudCustomizedAcceleratorBasicAuthChoice;

  /// Sets `ssh_auth`.
  const factory SpringCloudCustomizedAcceleratorAuth.sshAuth(
    SpringCloudCustomizedAcceleratorSshAuth sshAuth,
  ) = SpringCloudCustomizedAcceleratorSshAuthChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [SpringCloudCustomizedAcceleratorAuth.basicAuth] choice: sets `basic_auth`.
final class SpringCloudCustomizedAcceleratorBasicAuthChoice
    extends SpringCloudCustomizedAcceleratorAuth {
  const SpringCloudCustomizedAcceleratorBasicAuthChoice(this.basicAuth);

  final SpringCloudCustomizedAcceleratorBasicAuth basicAuth;

  @internal
  @override
  String get blockKey => 'basic_auth';

  @internal
  @override
  Map<String, Object?> encode() => {'basic_auth': basicAuth.encode()};
}

/// The [SpringCloudCustomizedAcceleratorAuth.sshAuth] choice: sets `ssh_auth`.
final class SpringCloudCustomizedAcceleratorSshAuthChoice
    extends SpringCloudCustomizedAcceleratorAuth {
  const SpringCloudCustomizedAcceleratorSshAuthChoice(this.sshAuth);

  final SpringCloudCustomizedAcceleratorSshAuth sshAuth;

  @internal
  @override
  String get blockKey => 'ssh_auth';

  @internal
  @override
  Map<String, Object?> encode() => {'ssh_auth': sshAuth.encode()};
}

/// Typed helper for the `git_repository.basic_auth` block of
/// `azurerm_spring_cloud_customized_accelerator` (derived from provider schema).
@immutable
final class SpringCloudCustomizedAcceleratorBasicAuth {
  const SpringCloudCustomizedAcceleratorBasicAuth({
    required this.password,
    required this.username,
  });

  final Sensitive<String> password;

  final TfArg<String> username;

  @internal
  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `git_repository.ssh_auth` block of
/// `azurerm_spring_cloud_customized_accelerator` (derived from provider schema).
@immutable
final class SpringCloudCustomizedAcceleratorSshAuth {
  const SpringCloudCustomizedAcceleratorSshAuth({
    this.hostKey,
    this.hostKeyAlgorithm,
    required this.privateKey,
  });

  final Sensitive<String>? hostKey;

  final TfArg<String>? hostKeyAlgorithm;

  final Sensitive<String> privateKey;

  @internal
  Map<String, Object?> encode() => {
    'host_key': ?hostKey?.toTfJson(),
    'host_key_algorithm': ?hostKeyAlgorithm?.toTfJson(),
    'private_key': privateKey.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_spring_cloud_customized_accelerator`.
final class AzurermSpringCloudCustomizedAccelerator extends Resource {
  static const String tfType = 'azurerm_spring_cloud_customized_accelerator';

  AzurermSpringCloudCustomizedAccelerator(
    super.localName, {
    TfArg<List<String>>? acceleratorTags,
    SpringCloudCustomizedAcceleratorType? acceleratorType,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<String>? iconUrl,
    required TfArg<String> name,
    required TfArg<String> springCloudAcceleratorId,
    required SpringCloudCustomizedAcceleratorGitRepository gitRepository,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accelerator_tags': ?acceleratorTags,
           'accelerator_type': ?acceleratorType,
           'description': ?description,
           'display_name': ?displayName,
           'icon_url': ?iconUrl,
           'name': name,
           'spring_cloud_accelerator_id': springCloudAcceleratorId,
           'git_repository': TfArg.literal(gitRepository.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudCustomizedAcceleratorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudCustomizedAccelerator>`.
  RefTo<AzurermSpringCloudCustomizedAccelerator> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accelerator_tags` attribute.
  TfRef<List<String>> get acceleratorTags =>
      TfRef.attribute<List<String>>(this, 'accelerator_tags');

  /// Reference to `accelerator_type` attribute.
  TfRef<String> get acceleratorType =>
      TfRef.attribute<String>(this, 'accelerator_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `icon_url` attribute.
  TfRef<String> get iconUrl => TfRef.attribute<String>(this, 'icon_url');

  /// Reference to `spring_cloud_accelerator_id` attribute.
  TfRef<String> get springCloudAcceleratorId =>
      TfRef.attribute<String>(this, 'spring_cloud_accelerator_id');
}
