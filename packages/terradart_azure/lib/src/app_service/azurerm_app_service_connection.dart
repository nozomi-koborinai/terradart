// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_app_service_connection`.
const Set<String> _azurermAppServiceConnectionSensitive = <String>{
  'authentication.certificate',
  'authentication.secret',
};

/// App Service Connection Client enum for `client_type`.
extension type const AppServiceConnectionClientType._(TfArg<String> _)
    implements TfArg<String> {
  AppServiceConnectionClientType.variable(String name)
    : this._(TfArg.variable(name));
  AppServiceConnectionClientType.expression(String template)
    : this._(TfArg.expression(template));
  const AppServiceConnectionClientType.arg(TfArg<String> arg) : this._(arg);

  static const none = AppServiceConnectionClientType._(TfArgLiteral('none'));
  static const dotnet = AppServiceConnectionClientType._(
    TfArgLiteral('dotnet'),
  );
  static const java = AppServiceConnectionClientType._(TfArgLiteral('java'));
  static const python = AppServiceConnectionClientType._(
    TfArgLiteral('python'),
  );
  static const go = AppServiceConnectionClientType._(TfArgLiteral('go'));
  static const php = AppServiceConnectionClientType._(TfArgLiteral('php'));
  static const ruby = AppServiceConnectionClientType._(TfArgLiteral('ruby'));
  static const django = AppServiceConnectionClientType._(
    TfArgLiteral('django'),
  );
  static const nodejs = AppServiceConnectionClientType._(
    TfArgLiteral('nodejs'),
  );
  static const springboot = AppServiceConnectionClientType._(
    TfArgLiteral('springBoot'),
  );

  static const List<AppServiceConnectionClientType> values = [
    none,
    dotnet,
    java,
    python,
    go,
    php,
    ruby,
    django,
    nodejs,
    springboot,
  ];
}

/// App Service Connection Vnet enum for `vnet_solution`.
extension type const AppServiceConnectionVnetSolution._(TfArg<String> _)
    implements TfArg<String> {
  AppServiceConnectionVnetSolution.variable(String name)
    : this._(TfArg.variable(name));
  AppServiceConnectionVnetSolution.expression(String template)
    : this._(TfArg.expression(template));
  const AppServiceConnectionVnetSolution.arg(TfArg<String> arg) : this._(arg);

  static const privatelink = AppServiceConnectionVnetSolution._(
    TfArgLiteral('privateLink'),
  );
  static const serviceendpoint = AppServiceConnectionVnetSolution._(
    TfArgLiteral('serviceEndpoint'),
  );

  static const List<AppServiceConnectionVnetSolution> values = [
    privatelink,
    serviceendpoint,
  ];
}

/// Typed helper for the `authentication` block of
/// `azurerm_app_service_connection` (derived from provider schema).
@immutable
final class AppServiceConnectionAuthentication {
  const AppServiceConnectionAuthentication({
    this.certificate,
    this.clientId,
    this.name,
    this.principalId,
    this.secret,
    this.subscriptionId,
    required this.type,
  });

  final Sensitive<String>? certificate;

  final TfArg<String>? clientId;

  final TfArg<String>? name;

  final TfArg<String>? principalId;

  final Sensitive<String>? secret;

  final TfArg<String>? subscriptionId;

  final AppServiceConnectionType type;

  @internal
  Map<String, Object?> encode() => {
    'certificate': ?certificate?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'name': ?name?.toTfJson(),
    'principal_id': ?principalId?.toTfJson(),
    'secret': ?secret?.toTfJson(),
    'subscription_id': ?subscriptionId?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const AppServiceConnectionType._(TfArg<String> _)
    implements TfArg<String> {
  AppServiceConnectionType.variable(String name) : this._(TfArg.variable(name));
  AppServiceConnectionType.expression(String template)
    : this._(TfArg.expression(template));
  const AppServiceConnectionType.arg(TfArg<String> arg) : this._(arg);

  static const secret = AppServiceConnectionType._(TfArgLiteral('secret'));
  static const serviceprincipalsecret = AppServiceConnectionType._(
    TfArgLiteral('servicePrincipalSecret'),
  );
  static const serviceprincipalcertificate = AppServiceConnectionType._(
    TfArgLiteral('servicePrincipalCertificate'),
  );
  static const systemassignedidentity = AppServiceConnectionType._(
    TfArgLiteral('systemAssignedIdentity'),
  );
  static const userassignedidentity = AppServiceConnectionType._(
    TfArgLiteral('userAssignedIdentity'),
  );

  static const List<AppServiceConnectionType> values = [
    secret,
    serviceprincipalsecret,
    serviceprincipalcertificate,
    systemassignedidentity,
    userassignedidentity,
  ];
}

/// Typed helper for the `secret_store` block of
/// `azurerm_app_service_connection` (derived from provider schema).
@immutable
final class AppServiceConnectionSecretStore {
  const AppServiceConnectionSecretStore({required this.keyVaultId});

  final TfArg<String> keyVaultId;

  @internal
  Map<String, Object?> encode() => {'key_vault_id': keyVaultId.toTfJson()};
}

/// Factory wrapper for `azurerm_app_service_connection`.
final class AzurermAppServiceConnection extends Resource {
  static const String tfType = 'azurerm_app_service_connection';

  AzurermAppServiceConnection(
    super.localName, {
    required TfArg<String> appServiceId,
    AppServiceConnectionClientType? clientType,
    required TfArg<String> name,
    required TfArg<String> targetResourceId,
    AppServiceConnectionVnetSolution? vnetSolution,
    required AppServiceConnectionAuthentication authentication,
    AppServiceConnectionSecretStore? secretStore,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_service_id': appServiceId,
           'client_type': ?clientType,
           'name': name,
           'target_resource_id': targetResourceId,
           'vnet_solution': ?vnetSolution,
           'authentication': TfArg.literal(authentication.encode()),
           if (secretStore != null)
             'secret_store': TfArg.literal(secretStore.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAppServiceConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppServiceConnection>`.
  RefTo<AzurermAppServiceConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_service_id` attribute.
  TfRef<String> get appServiceId =>
      TfRef.attribute<String>(this, 'app_service_id');

  /// Reference to `client_type` attribute.
  TfRef<String> get clientType => TfRef.attribute<String>(this, 'client_type');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');

  /// Reference to `vnet_solution` attribute.
  TfRef<String> get vnetSolution =>
      TfRef.attribute<String>(this, 'vnet_solution');
}
