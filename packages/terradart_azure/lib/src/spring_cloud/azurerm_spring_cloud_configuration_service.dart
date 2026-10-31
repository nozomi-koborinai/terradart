// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_configuration_service`.
const Set<String> _azurermSpringCloudConfigurationServiceSensitive = <String>{
  'repository.password',
  'repository.private_key',
};

/// Spring Cloud Configuration Service enum for `generation`.
extension type const SpringCloudConfigurationServiceGeneration._(
  TfArg<String> _
) implements TfArg<String> {
  SpringCloudConfigurationServiceGeneration.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudConfigurationServiceGeneration.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudConfigurationServiceGeneration.arg(TfArg<String> arg)
    : this._(arg);

  static const gen1 = SpringCloudConfigurationServiceGeneration._(
    TfArgLiteral('Gen1'),
  );
  static const gen2 = SpringCloudConfigurationServiceGeneration._(
    TfArgLiteral('Gen2'),
  );

  static const List<SpringCloudConfigurationServiceGeneration> values = [
    gen1,
    gen2,
  ];
}

/// Spring Cloud Configuration Service enum for `name`.
extension type const SpringCloudConfigurationServiceName._(TfArg<String> _)
    implements TfArg<String> {
  SpringCloudConfigurationServiceName.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudConfigurationServiceName.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudConfigurationServiceName.arg(TfArg<String> arg)
    : this._(arg);

  static const defaultCase = SpringCloudConfigurationServiceName._(
    TfArgLiteral('default'),
  );

  static const List<SpringCloudConfigurationServiceName> values = [defaultCase];
}

/// Typed helper for the `repository` block of
/// `azurerm_spring_cloud_configuration_service` (derived from provider schema).
@immutable
final class SpringCloudConfigurationServiceRepository {
  const SpringCloudConfigurationServiceRepository({
    this.caCertificateId,
    this.hostKey,
    this.hostKeyAlgorithm,
    required this.label,
    required this.name,
    this.password,
    required this.patterns,
    this.privateKey,
    this.searchPaths,
    this.strictHostKeyChecking,
    required this.uri,
    this.username,
  });

  final TfArg<String>? caCertificateId;

  final TfArg<String>? hostKey;

  final TfArg<String>? hostKeyAlgorithm;

  final TfArg<String> label;

  final TfArg<String> name;

  final Sensitive<String>? password;

  final TfArg<List<String>> patterns;

  final Sensitive<String>? privateKey;

  final TfArg<List<String>>? searchPaths;

  final TfArg<bool>? strictHostKeyChecking;

  final TfArg<String> uri;

  final TfArg<String>? username;

  @internal
  Map<String, Object?> encode() => {
    'ca_certificate_id': ?caCertificateId?.toTfJson(),
    'host_key': ?hostKey?.toTfJson(),
    'host_key_algorithm': ?hostKeyAlgorithm?.toTfJson(),
    'label': label.toTfJson(),
    'name': name.toTfJson(),
    'password': ?password?.toTfJson(),
    'patterns': patterns.toTfJson(),
    'private_key': ?privateKey?.toTfJson(),
    'search_paths': ?searchPaths?.toTfJson(),
    'strict_host_key_checking': ?strictHostKeyChecking?.toTfJson(),
    'uri': uri.toTfJson(),
    'username': ?username?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_spring_cloud_configuration_service`.
final class AzurermSpringCloudConfigurationService extends Resource {
  static const String tfType = 'azurerm_spring_cloud_configuration_service';

  AzurermSpringCloudConfigurationService(
    super.localName, {
    SpringCloudConfigurationServiceGeneration? generation,
    required SpringCloudConfigurationServiceName name,
    TfArg<num>? refreshIntervalInSeconds,
    required TfArg<String> springCloudServiceId,
    List<SpringCloudConfigurationServiceRepository>? repository,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'generation': ?generation,
           'name': name,
           'refresh_interval_in_seconds': ?refreshIntervalInSeconds,
           'spring_cloud_service_id': springCloudServiceId,
           if (repository != null)
             'repository': TfArg.literal([
               for (final e in repository) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudConfigurationServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudConfigurationService>`.
  RefTo<AzurermSpringCloudConfigurationService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `generation` attribute.
  TfRef<String> get generation => TfRef.attribute<String>(this, 'generation');

  /// Reference to `refresh_interval_in_seconds` attribute.
  TfRef<num> get refreshIntervalInSeconds =>
      TfRef.attribute<num>(this, 'refresh_interval_in_seconds');

  /// Reference to `spring_cloud_service_id` attribute.
  TfRef<String> get springCloudServiceId =>
      TfRef.attribute<String>(this, 'spring_cloud_service_id');
}
