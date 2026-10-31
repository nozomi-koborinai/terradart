// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mongo_cluster_user`.
const Set<String> _azurermMongoClusterUserSensitive = <String>{};

/// Mongo Cluster User Identity Provider enum for `identity_provider_type`.
extension type const MongoClusterUserIdentityProviderType._(TfArg<String> _)
    implements TfArg<String> {
  MongoClusterUserIdentityProviderType.variable(String name)
    : this._(TfArg.variable(name));
  MongoClusterUserIdentityProviderType.expression(String template)
    : this._(TfArg.expression(template));
  const MongoClusterUserIdentityProviderType.arg(TfArg<String> arg)
    : this._(arg);

  static const microsoftentraid = MongoClusterUserIdentityProviderType._(
    TfArgLiteral('MicrosoftEntraID'),
  );

  static const List<MongoClusterUserIdentityProviderType> values = [
    microsoftentraid,
  ];
}

/// Mongo Cluster User Principal enum for `principal_type`.
extension type const MongoClusterUserPrincipalType._(TfArg<String> _)
    implements TfArg<String> {
  MongoClusterUserPrincipalType.variable(String name)
    : this._(TfArg.variable(name));
  MongoClusterUserPrincipalType.expression(String template)
    : this._(TfArg.expression(template));
  const MongoClusterUserPrincipalType.arg(TfArg<String> arg) : this._(arg);

  static const serviceprincipal = MongoClusterUserPrincipalType._(
    TfArgLiteral('servicePrincipal'),
  );
  static const user = MongoClusterUserPrincipalType._(TfArgLiteral('user'));

  static const List<MongoClusterUserPrincipalType> values = [
    serviceprincipal,
    user,
  ];
}

/// Typed helper for the `role` block of
/// `azurerm_mongo_cluster_user` (derived from provider schema).
@immutable
final class MongoClusterUserRole {
  const MongoClusterUserRole({required this.database, required this.name});

  final TfArg<String> database;

  final MongoClusterUserName name;

  @internal
  Map<String, Object?> encode() => {
    'database': database.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const MongoClusterUserName._(TfArg<String> _)
    implements TfArg<String> {
  MongoClusterUserName.variable(String name) : this._(TfArg.variable(name));
  MongoClusterUserName.expression(String template)
    : this._(TfArg.expression(template));
  const MongoClusterUserName.arg(TfArg<String> arg) : this._(arg);

  static const root = MongoClusterUserName._(TfArgLiteral('root'));

  static const List<MongoClusterUserName> values = [root];
}

/// Factory wrapper for `azurerm_mongo_cluster_user`.
final class AzurermMongoClusterUser extends Resource {
  static const String tfType = 'azurerm_mongo_cluster_user';

  AzurermMongoClusterUser(
    super.localName, {
    required MongoClusterUserIdentityProviderType identityProviderType,
    required TfArg<String> mongoClusterId,
    required TfArg<String> objectId,
    required MongoClusterUserPrincipalType principalType,
    required List<MongoClusterUserRole> role,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identity_provider_type': identityProviderType,
           'mongo_cluster_id': mongoClusterId,
           'object_id': objectId,
           'principal_type': principalType,
           'role': TfArg.literal([for (final e in role) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMongoClusterUserSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMongoClusterUser>`.
  RefTo<AzurermMongoClusterUser> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `identity_provider_type` attribute.
  TfRef<String> get identityProviderType =>
      TfRef.attribute<String>(this, 'identity_provider_type');

  /// Reference to `mongo_cluster_id` attribute.
  TfRef<String> get mongoClusterId =>
      TfRef.attribute<String>(this, 'mongo_cluster_id');

  /// Reference to `object_id` attribute.
  TfRef<String> get objectId => TfRef.attribute<String>(this, 'object_id');

  /// Reference to `principal_type` attribute.
  TfRef<String> get principalType =>
      TfRef.attribute<String>(this, 'principal_type');
}
