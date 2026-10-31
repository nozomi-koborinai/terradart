// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_connection`.
const Set<String> _azurermSpringCloudConnectionSensitive = <String>{
  'authentication.certificate',
  'authentication.secret',
};

/// Spring Cloud Connection Client enum for `client_type`.
extension type const SpringCloudConnectionClientType._(TfArg<String> _)
    implements TfArg<String> {
  SpringCloudConnectionClientType.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudConnectionClientType.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudConnectionClientType.arg(TfArg<String> arg) : this._(arg);

  static const dotnet = SpringCloudConnectionClientType._(
    TfArgLiteral('dotnet'),
  );
  static const java = SpringCloudConnectionClientType._(TfArgLiteral('java'));
  static const python = SpringCloudConnectionClientType._(
    TfArgLiteral('python'),
  );
  static const go = SpringCloudConnectionClientType._(TfArgLiteral('go'));
  static const php = SpringCloudConnectionClientType._(TfArgLiteral('php'));
  static const ruby = SpringCloudConnectionClientType._(TfArgLiteral('ruby'));
  static const django = SpringCloudConnectionClientType._(
    TfArgLiteral('django'),
  );
  static const nodejs = SpringCloudConnectionClientType._(
    TfArgLiteral('nodejs'),
  );
  static const springboot = SpringCloudConnectionClientType._(
    TfArgLiteral('springBoot'),
  );

  static const List<SpringCloudConnectionClientType> values = [
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

/// Spring Cloud Connection Vnet enum for `vnet_solution`.
extension type const SpringCloudConnectionVnetSolution._(TfArg<String> _)
    implements TfArg<String> {
  SpringCloudConnectionVnetSolution.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudConnectionVnetSolution.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudConnectionVnetSolution.arg(TfArg<String> arg) : this._(arg);

  static const privatelink = SpringCloudConnectionVnetSolution._(
    TfArgLiteral('privateLink'),
  );
  static const serviceendpoint = SpringCloudConnectionVnetSolution._(
    TfArgLiteral('serviceEndpoint'),
  );

  static const List<SpringCloudConnectionVnetSolution> values = [
    privatelink,
    serviceendpoint,
  ];
}

/// Typed helper for the `authentication` block of
/// `azurerm_spring_cloud_connection` (derived from provider schema).
@immutable
final class SpringCloudConnectionAuthentication {
  const SpringCloudConnectionAuthentication({
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

  final SpringCloudConnectionType type;

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
extension type const SpringCloudConnectionType._(TfArg<String> _)
    implements TfArg<String> {
  SpringCloudConnectionType.variable(String name)
    : this._(TfArg.variable(name));
  SpringCloudConnectionType.expression(String template)
    : this._(TfArg.expression(template));
  const SpringCloudConnectionType.arg(TfArg<String> arg) : this._(arg);

  static const secret = SpringCloudConnectionType._(TfArgLiteral('secret'));
  static const serviceprincipalsecret = SpringCloudConnectionType._(
    TfArgLiteral('servicePrincipalSecret'),
  );
  static const serviceprincipalcertificate = SpringCloudConnectionType._(
    TfArgLiteral('servicePrincipalCertificate'),
  );
  static const systemassignedidentity = SpringCloudConnectionType._(
    TfArgLiteral('systemAssignedIdentity'),
  );
  static const userassignedidentity = SpringCloudConnectionType._(
    TfArgLiteral('userAssignedIdentity'),
  );

  static const List<SpringCloudConnectionType> values = [
    secret,
    serviceprincipalsecret,
    serviceprincipalcertificate,
    systemassignedidentity,
    userassignedidentity,
  ];
}

/// Typed helper for the `secret_store` block of
/// `azurerm_spring_cloud_connection` (derived from provider schema).
@immutable
final class SpringCloudConnectionSecretStore {
  const SpringCloudConnectionSecretStore({required this.keyVaultId});

  final TfArg<String> keyVaultId;

  @internal
  Map<String, Object?> encode() => {'key_vault_id': keyVaultId.toTfJson()};
}

/// Factory wrapper for `azurerm_spring_cloud_connection`.
final class AzurermSpringCloudConnection extends Resource {
  static const String tfType = 'azurerm_spring_cloud_connection';

  AzurermSpringCloudConnection(
    super.localName, {
    SpringCloudConnectionClientType? clientType,
    required TfArg<String> name,
    required TfArg<String> springCloudId,
    required TfArg<String> targetResourceId,
    SpringCloudConnectionVnetSolution? vnetSolution,
    required SpringCloudConnectionAuthentication authentication,
    SpringCloudConnectionSecretStore? secretStore,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_type': ?clientType,
           'name': name,
           'spring_cloud_id': springCloudId,
           'target_resource_id': targetResourceId,
           'vnet_solution': ?vnetSolution,
           'authentication': TfArg.literal(authentication.encode()),
           if (secretStore != null)
             'secret_store': TfArg.literal(secretStore.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSpringCloudConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudConnection>`.
  RefTo<AzurermSpringCloudConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_type` attribute.
  TfRef<String> get clientType => TfRef.attribute<String>(this, 'client_type');

  /// Reference to `spring_cloud_id` attribute.
  TfRef<String> get springCloudId =>
      TfRef.attribute<String>(this, 'spring_cloud_id');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');

  /// Reference to `vnet_solution` attribute.
  TfRef<String> get vnetSolution =>
      TfRef.attribute<String>(this, 'vnet_solution');
}
