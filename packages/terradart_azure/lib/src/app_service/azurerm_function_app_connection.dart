// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_function_app_connection`.
const Set<String> _azurermFunctionAppConnectionSensitive = <String>{
  'authentication.certificate',
  'authentication.secret',
};

/// Function App Connection Client enum for `client_type`.
extension type const FunctionAppConnectionClientType._(TfArg<String> _)
    implements TfArg<String> {
  FunctionAppConnectionClientType.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppConnectionClientType.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppConnectionClientType.arg(TfArg<String> arg) : this._(arg);

  static const dotnet = FunctionAppConnectionClientType._(
    TfArgLiteral('dotnet'),
  );
  static const java = FunctionAppConnectionClientType._(TfArgLiteral('java'));
  static const python = FunctionAppConnectionClientType._(
    TfArgLiteral('python'),
  );
  static const go = FunctionAppConnectionClientType._(TfArgLiteral('go'));
  static const php = FunctionAppConnectionClientType._(TfArgLiteral('php'));
  static const ruby = FunctionAppConnectionClientType._(TfArgLiteral('ruby'));
  static const django = FunctionAppConnectionClientType._(
    TfArgLiteral('django'),
  );
  static const nodejs = FunctionAppConnectionClientType._(
    TfArgLiteral('nodejs'),
  );
  static const springboot = FunctionAppConnectionClientType._(
    TfArgLiteral('springBoot'),
  );

  static const List<FunctionAppConnectionClientType> values = [
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

/// Function App Connection Vnet enum for `vnet_solution`.
extension type const FunctionAppConnectionVnetSolution._(TfArg<String> _)
    implements TfArg<String> {
  FunctionAppConnectionVnetSolution.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppConnectionVnetSolution.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppConnectionVnetSolution.arg(TfArg<String> arg) : this._(arg);

  static const privatelink = FunctionAppConnectionVnetSolution._(
    TfArgLiteral('privateLink'),
  );
  static const serviceendpoint = FunctionAppConnectionVnetSolution._(
    TfArgLiteral('serviceEndpoint'),
  );

  static const List<FunctionAppConnectionVnetSolution> values = [
    privatelink,
    serviceendpoint,
  ];
}

/// Typed helper for the `authentication` block of
/// `azurerm_function_app_connection` (derived from provider schema).
@immutable
final class FunctionAppConnectionAuthentication {
  const FunctionAppConnectionAuthentication({
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

  final FunctionAppConnectionType type;

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
extension type const FunctionAppConnectionType._(TfArg<String> _)
    implements TfArg<String> {
  FunctionAppConnectionType.variable(String name)
    : this._(TfArg.variable(name));
  FunctionAppConnectionType.expression(String template)
    : this._(TfArg.expression(template));
  const FunctionAppConnectionType.arg(TfArg<String> arg) : this._(arg);

  static const secret = FunctionAppConnectionType._(TfArgLiteral('secret'));
  static const serviceprincipalsecret = FunctionAppConnectionType._(
    TfArgLiteral('servicePrincipalSecret'),
  );
  static const serviceprincipalcertificate = FunctionAppConnectionType._(
    TfArgLiteral('servicePrincipalCertificate'),
  );
  static const systemassignedidentity = FunctionAppConnectionType._(
    TfArgLiteral('systemAssignedIdentity'),
  );
  static const userassignedidentity = FunctionAppConnectionType._(
    TfArgLiteral('userAssignedIdentity'),
  );

  static const List<FunctionAppConnectionType> values = [
    secret,
    serviceprincipalsecret,
    serviceprincipalcertificate,
    systemassignedidentity,
    userassignedidentity,
  ];
}

/// Typed helper for the `secret_store` block of
/// `azurerm_function_app_connection` (derived from provider schema).
@immutable
final class FunctionAppConnectionSecretStore {
  const FunctionAppConnectionSecretStore({required this.keyVaultId});

  final TfArg<String> keyVaultId;

  @internal
  Map<String, Object?> encode() => {'key_vault_id': keyVaultId.toTfJson()};
}

/// Factory wrapper for `azurerm_function_app_connection`.
final class AzurermFunctionAppConnection extends Resource {
  static const String tfType = 'azurerm_function_app_connection';

  AzurermFunctionAppConnection(
    super.localName, {
    FunctionAppConnectionClientType? clientType,
    required TfArg<String> functionAppId,
    required TfArg<String> name,
    required TfArg<String> targetResourceId,
    FunctionAppConnectionVnetSolution? vnetSolution,
    required FunctionAppConnectionAuthentication authentication,
    FunctionAppConnectionSecretStore? secretStore,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_type': ?clientType,
           'function_app_id': functionAppId,
           'name': name,
           'target_resource_id': targetResourceId,
           'vnet_solution': ?vnetSolution,
           'authentication': TfArg.literal(authentication.encode()),
           if (secretStore != null)
             'secret_store': TfArg.literal(secretStore.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermFunctionAppConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFunctionAppConnection>`.
  RefTo<AzurermFunctionAppConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_type` attribute.
  TfRef<String> get clientType => TfRef.attribute<String>(this, 'client_type');

  /// Reference to `function_app_id` attribute.
  TfRef<String> get functionAppId =>
      TfRef.attribute<String>(this, 'function_app_id');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');

  /// Reference to `vnet_solution` attribute.
  TfRef<String> get vnetSolution =>
      TfRef.attribute<String>(this, 'vnet_solution');
}
