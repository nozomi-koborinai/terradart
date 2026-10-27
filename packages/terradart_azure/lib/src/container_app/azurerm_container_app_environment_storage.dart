// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_container_app_environment_storage`.
const Set<String> _azurermContainerAppEnvironmentStorageSensitive = <String>{
  'access_key',
};

/// Container App Environment Storage Access enum for `access_mode`.
extension type const ContainerAppEnvironmentStorageAccessMode._(TfArg<String> _)
    implements TfArg<String> {
  ContainerAppEnvironmentStorageAccessMode.variable(String name)
    : this._(TfArg.variable(name));
  ContainerAppEnvironmentStorageAccessMode.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAppEnvironmentStorageAccessMode.arg(TfArg<String> arg)
    : this._(arg);

  static const readonly = ContainerAppEnvironmentStorageAccessMode._(
    TfArgLiteral('ReadOnly'),
  );
  static const readwrite = ContainerAppEnvironmentStorageAccessMode._(
    TfArgLiteral('ReadWrite'),
  );

  static const List<ContainerAppEnvironmentStorageAccessMode> values = [
    readonly,
    readwrite,
  ];
}

/// At most one of `account_name`, `nfs_server_url` on `azurerm_container_app_environment_storage`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.accountName(...)`.
sealed class ContainerAppEnvironmentStorageBackend {
  const ContainerAppEnvironmentStorageBackend();

  /// Sets `account_name`.
  const factory ContainerAppEnvironmentStorageBackend.accountName(
    TfArg<String> accountName,
  ) = ContainerAppEnvironmentStorageBackendAccountName;

  /// Sets `nfs_server_url`.
  const factory ContainerAppEnvironmentStorageBackend.nfsServerUrl(
    TfArg<String> nfsServerUrl,
  ) = ContainerAppEnvironmentStorageBackendNfsServerUrl;

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

/// The [ContainerAppEnvironmentStorageBackend.accountName] choice: sets `account_name`.
final class ContainerAppEnvironmentStorageBackendAccountName
    extends ContainerAppEnvironmentStorageBackend {
  const ContainerAppEnvironmentStorageBackendAccountName(this.accountName);

  final TfArg<String> accountName;

  @internal
  @override
  String get blockKey => 'account_name';

  @internal
  @override
  Map<String, Object?> encode() => {'account_name': accountName.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'account_name': accountName};
}

/// The [ContainerAppEnvironmentStorageBackend.nfsServerUrl] choice: sets `nfs_server_url`.
final class ContainerAppEnvironmentStorageBackendNfsServerUrl
    extends ContainerAppEnvironmentStorageBackend {
  const ContainerAppEnvironmentStorageBackendNfsServerUrl(this.nfsServerUrl);

  final TfArg<String> nfsServerUrl;

  @internal
  @override
  String get blockKey => 'nfs_server_url';

  @internal
  @override
  Map<String, Object?> encode() => {'nfs_server_url': nfsServerUrl.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'nfs_server_url': nfsServerUrl};
}

/// Factory wrapper for `azurerm_container_app_environment_storage`.
final class AzurermContainerAppEnvironmentStorage extends Resource {
  static const String tfType = 'azurerm_container_app_environment_storage';

  AzurermContainerAppEnvironmentStorage(
    super.localName, {
    Sensitive<String>? accessKey,
    required ContainerAppEnvironmentStorageAccessMode accessMode,
    ContainerAppEnvironmentStorageBackend? backend,
    required TfArg<String> containerAppEnvironmentId,
    required TfArg<String> name,
    required TfArg<String> shareName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_key': ?accessKey,
           'access_mode': accessMode,
           ...?backend?.argMap,
           'container_app_environment_id': containerAppEnvironmentId,
           'name': name,
           'share_name': shareName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerAppEnvironmentStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerAppEnvironmentStorage>`.
  RefTo<AzurermContainerAppEnvironmentStorage> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_key` attribute.
  TfRef<String> get accessKey => TfRef.attribute<String>(this, 'access_key');

  /// Reference to `access_mode` attribute.
  TfRef<String> get accessMode => TfRef.attribute<String>(this, 'access_mode');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `container_app_environment_id` attribute.
  TfRef<String> get containerAppEnvironmentId =>
      TfRef.attribute<String>(this, 'container_app_environment_id');

  /// Reference to `nfs_server_url` attribute.
  TfRef<String> get nfsServerUrl =>
      TfRef.attribute<String>(this, 'nfs_server_url');

  /// Reference to `share_name` attribute.
  TfRef<String> get shareName => TfRef.attribute<String>(this, 'share_name');
}
