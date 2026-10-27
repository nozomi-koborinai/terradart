// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_nginx_configuration`.
const Set<String> _azurermNginxConfigurationSensitive = <String>{
  'protected_file.content',
};

/// Exactly one of `config_file`, `package_data` on `azurerm_nginx_configuration`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.configFile(...)`.
sealed class NginxConfigurationContent {
  const NginxConfigurationContent();

  /// Sets `config_file`.
  const factory NginxConfigurationContent.configFile(
    List<NginxConfigurationConfigFile> configFile,
  ) = NginxConfigurationContentConfigFile;

  /// Sets `package_data`.
  const factory NginxConfigurationContent.packageData(
    TfArg<String> packageData,
  ) = NginxConfigurationContentPackageData;

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

/// The [NginxConfigurationContent.configFile] choice: sets `config_file`.
final class NginxConfigurationContentConfigFile
    extends NginxConfigurationContent {
  const NginxConfigurationContentConfigFile(this.configFile);

  final List<NginxConfigurationConfigFile> configFile;

  @internal
  @override
  String get blockKey => 'config_file';

  @internal
  @override
  Map<String, Object?> encode() => {
    'config_file': [for (final e in configFile) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'config_file': TfArg.literal([for (final e in configFile) e.encode()]),
  };
}

/// The [NginxConfigurationContent.packageData] choice: sets `package_data`.
final class NginxConfigurationContentPackageData
    extends NginxConfigurationContent {
  const NginxConfigurationContentPackageData(this.packageData);

  final TfArg<String> packageData;

  @internal
  @override
  String get blockKey => 'package_data';

  @internal
  @override
  Map<String, Object?> encode() => {'package_data': packageData.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'package_data': packageData};
}

/// Typed helper for the `config_file` block of
/// `azurerm_nginx_configuration` (derived from provider schema).
@immutable
final class NginxConfigurationConfigFile {
  const NginxConfigurationConfigFile({
    required this.content,
    required this.virtualPath,
  });

  final TfArg<String> content;

  final TfArg<String> virtualPath;

  @internal
  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'virtual_path': virtualPath.toTfJson(),
  };
}

/// Typed helper for the `protected_file` block of
/// `azurerm_nginx_configuration` (derived from provider schema).
@immutable
final class NginxConfigurationProtectedFile {
  const NginxConfigurationProtectedFile({
    required this.content,
    required this.virtualPath,
  });

  final Sensitive<String> content;

  final TfArg<String> virtualPath;

  @internal
  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'virtual_path': virtualPath.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_nginx_configuration`.
final class AzurermNginxConfiguration extends Resource {
  static const String tfType = 'azurerm_nginx_configuration';

  AzurermNginxConfiguration(
    super.localName, {
    required TfArg<String> nginxDeploymentId,
    required NginxConfigurationContent content,
    required TfArg<String> rootFile,
    List<NginxConfigurationProtectedFile>? protectedFile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'nginx_deployment_id': nginxDeploymentId,
           ...content.argMap,
           'root_file': rootFile,
           if (protectedFile != null)
             'protected_file': TfArg.literal([
               for (final e in protectedFile) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNginxConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNginxConfiguration>`.
  RefTo<AzurermNginxConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `nginx_deployment_id` attribute.
  TfRef<String> get nginxDeploymentId =>
      TfRef.attribute<String>(this, 'nginx_deployment_id');

  /// Reference to `package_data` attribute.
  TfRef<String> get packageData =>
      TfRef.attribute<String>(this, 'package_data');

  /// Reference to `root_file` attribute.
  TfRef<String> get rootFile => TfRef.attribute<String>(this, 'root_file');
}
