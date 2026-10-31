// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_authorization_server`.
const Set<String> _azurermApiManagementAuthorizationServerSensitive = <String>{
  'client_secret',
  'resource_owner_password',
};

/// Api Management Authorization Server Authorization enum for `authorization_methods`.
extension type const ApiManagementAuthorizationServerAuthorizationMethods._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementAuthorizationServerAuthorizationMethods.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementAuthorizationServerAuthorizationMethods.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ApiManagementAuthorizationServerAuthorizationMethods.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const delete = ApiManagementAuthorizationServerAuthorizationMethods._(
    TfArgLiteral('DELETE'),
  );
  static const get = ApiManagementAuthorizationServerAuthorizationMethods._(
    TfArgLiteral('GET'),
  );
  static const head = ApiManagementAuthorizationServerAuthorizationMethods._(
    TfArgLiteral('HEAD'),
  );
  static const options = ApiManagementAuthorizationServerAuthorizationMethods._(
    TfArgLiteral('OPTIONS'),
  );
  static const patch = ApiManagementAuthorizationServerAuthorizationMethods._(
    TfArgLiteral('PATCH'),
  );
  static const post = ApiManagementAuthorizationServerAuthorizationMethods._(
    TfArgLiteral('POST'),
  );
  static const put = ApiManagementAuthorizationServerAuthorizationMethods._(
    TfArgLiteral('PUT'),
  );
  static const trace = ApiManagementAuthorizationServerAuthorizationMethods._(
    TfArgLiteral('TRACE'),
  );

  static const List<ApiManagementAuthorizationServerAuthorizationMethods>
  values = [delete, get, head, options, patch, post, put, trace];
}

/// Api Management Authorization Server Bearer Token Sending enum for `bearer_token_sending_methods`.
extension type const ApiManagementAuthorizationServerBearerTokenSendingMethods._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementAuthorizationServerBearerTokenSendingMethods.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ApiManagementAuthorizationServerBearerTokenSendingMethods.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ApiManagementAuthorizationServerBearerTokenSendingMethods.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const authorizationheader =
      ApiManagementAuthorizationServerBearerTokenSendingMethods._(
        TfArgLiteral('authorizationHeader'),
      );
  static const query =
      ApiManagementAuthorizationServerBearerTokenSendingMethods._(
        TfArgLiteral('query'),
      );

  static const List<ApiManagementAuthorizationServerBearerTokenSendingMethods>
  values = [authorizationheader, query];
}

/// Api Management Authorization Server Client Authentication enum for `client_authentication_method`.
extension type const ApiManagementAuthorizationServerClientAuthenticationMethod._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementAuthorizationServerClientAuthenticationMethod.variable(
    String name,
  ) : this._(TfArg.variable(name));
  ApiManagementAuthorizationServerClientAuthenticationMethod.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const ApiManagementAuthorizationServerClientAuthenticationMethod.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const basic =
      ApiManagementAuthorizationServerClientAuthenticationMethod._(
        TfArgLiteral('Basic'),
      );
  static const body =
      ApiManagementAuthorizationServerClientAuthenticationMethod._(
        TfArgLiteral('Body'),
      );

  static const List<ApiManagementAuthorizationServerClientAuthenticationMethod>
  values = [basic, body];
}

/// Api Management Authorization Server Grant enum for `grant_types`.
extension type const ApiManagementAuthorizationServerGrantTypes._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementAuthorizationServerGrantTypes.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementAuthorizationServerGrantTypes.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementAuthorizationServerGrantTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const authorizationcode = ApiManagementAuthorizationServerGrantTypes._(
    TfArgLiteral('authorizationCode'),
  );
  static const clientcredentials = ApiManagementAuthorizationServerGrantTypes._(
    TfArgLiteral('clientCredentials'),
  );
  static const implicit = ApiManagementAuthorizationServerGrantTypes._(
    TfArgLiteral('implicit'),
  );
  static const resourceownerpassword =
      ApiManagementAuthorizationServerGrantTypes._(
        TfArgLiteral('resourceOwnerPassword'),
      );

  static const List<ApiManagementAuthorizationServerGrantTypes> values = [
    authorizationcode,
    clientcredentials,
    implicit,
    resourceownerpassword,
  ];
}

/// Typed helper for the `token_body_parameter` block of
/// `azurerm_api_management_authorization_server` (derived from provider schema).
@immutable
final class ApiManagementAuthorizationServerTokenBodyParameter {
  const ApiManagementAuthorizationServerTokenBodyParameter({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_api_management_authorization_server`.
final class AzurermApiManagementAuthorizationServer extends Resource {
  static const String tfType = 'azurerm_api_management_authorization_server';

  AzurermApiManagementAuthorizationServer(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> authorizationEndpoint,
    required EnumList<ApiManagementAuthorizationServerAuthorizationMethods>
    authorizationMethods,
    EnumList<ApiManagementAuthorizationServerBearerTokenSendingMethods>?
    bearerTokenSendingMethods,
    EnumList<ApiManagementAuthorizationServerClientAuthenticationMethod>?
    clientAuthenticationMethod,
    required TfArg<String> clientId,
    required TfArg<String> clientRegistrationEndpoint,
    Sensitive<String>? clientSecret,
    TfArg<String>? defaultScope,
    TfArg<String>? description,
    required TfArg<String> displayName,
    required EnumList<ApiManagementAuthorizationServerGrantTypes> grantTypes,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    Sensitive<String>? resourceOwnerPassword,
    TfArg<String>? resourceOwnerUsername,
    TfArg<bool>? supportState,
    TfArg<String>? tokenEndpoint,
    List<ApiManagementAuthorizationServerTokenBodyParameter>?
    tokenBodyParameter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'authorization_endpoint': authorizationEndpoint,
           'authorization_methods': authorizationMethods,
           'bearer_token_sending_methods': ?bearerTokenSendingMethods,
           'client_authentication_method': ?clientAuthenticationMethod,
           'client_id': clientId,
           'client_registration_endpoint': clientRegistrationEndpoint,
           'client_secret': ?clientSecret,
           'default_scope': ?defaultScope,
           'description': ?description,
           'display_name': displayName,
           'grant_types': grantTypes,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'resource_owner_password': ?resourceOwnerPassword,
           'resource_owner_username': ?resourceOwnerUsername,
           'support_state': ?supportState,
           'token_endpoint': ?tokenEndpoint,
           if (tokenBodyParameter != null)
             'token_body_parameter': TfArg.literal([
               for (final e in tokenBodyParameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementAuthorizationServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementAuthorizationServer>`.
  RefTo<AzurermApiManagementAuthorizationServer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `authorization_endpoint` attribute.
  TfRef<String> get authorizationEndpoint =>
      TfRef.attribute<String>(this, 'authorization_endpoint');

  /// Reference to `authorization_methods` attribute.
  TfRef<List<String>> get authorizationMethods =>
      TfRef.attribute<List<String>>(this, 'authorization_methods');

  /// Reference to `bearer_token_sending_methods` attribute.
  TfRef<List<String>> get bearerTokenSendingMethods =>
      TfRef.attribute<List<String>>(this, 'bearer_token_sending_methods');

  /// Reference to `client_authentication_method` attribute.
  TfRef<List<String>> get clientAuthenticationMethod =>
      TfRef.attribute<List<String>>(this, 'client_authentication_method');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_registration_endpoint` attribute.
  TfRef<String> get clientRegistrationEndpoint =>
      TfRef.attribute<String>(this, 'client_registration_endpoint');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `default_scope` attribute.
  TfRef<String> get defaultScope =>
      TfRef.attribute<String>(this, 'default_scope');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `grant_types` attribute.
  TfRef<List<String>> get grantTypes =>
      TfRef.attribute<List<String>>(this, 'grant_types');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `resource_owner_password` attribute.
  TfRef<String> get resourceOwnerPassword =>
      TfRef.attribute<String>(this, 'resource_owner_password');

  /// Reference to `resource_owner_username` attribute.
  TfRef<String> get resourceOwnerUsername =>
      TfRef.attribute<String>(this, 'resource_owner_username');

  /// Reference to `support_state` attribute.
  TfRef<bool> get supportState => TfRef.attribute<bool>(this, 'support_state');

  /// Reference to `token_endpoint` attribute.
  TfRef<String> get tokenEndpoint =>
      TfRef.attribute<String>(this, 'token_endpoint');
}
