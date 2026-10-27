// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_api`.
const Set<String> _azurermApiManagementApiSensitive = <String>{};

/// Api Management Api enum for `api_type`.
extension type const ApiManagementApiType._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementApiType.variable(String name) : this._(TfArg.variable(name));
  ApiManagementApiType.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementApiType.arg(TfArg<String> arg) : this._(arg);

  static const graphql = ApiManagementApiType._(TfArgLiteral('graphql'));
  static const http = ApiManagementApiType._(TfArgLiteral('http'));
  static const soap = ApiManagementApiType._(TfArgLiteral('soap'));
  static const websocket = ApiManagementApiType._(TfArgLiteral('websocket'));

  static const List<ApiManagementApiType> values = [
    graphql,
    http,
    soap,
    websocket,
  ];
}

/// Api Management Api enum for `protocols`.
extension type const ApiManagementApiProtocols._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementApiProtocols.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementApiProtocols.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementApiProtocols.arg(TfArg<String> arg) : this._(arg);

  static const http = ApiManagementApiProtocols._(TfArgLiteral('http'));
  static const https = ApiManagementApiProtocols._(TfArgLiteral('https'));
  static const ws = ApiManagementApiProtocols._(TfArgLiteral('ws'));
  static const wss = ApiManagementApiProtocols._(TfArgLiteral('wss'));

  static const List<ApiManagementApiProtocols> values = [http, https, ws, wss];
}

/// At most one of `oauth2_authorization`, `openid_authentication` on `azurerm_api_management_api`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.oauth2Authorization(...)`.
sealed class ApiManagementApiOauth2AuthorizationOrOpenidAuthentication {
  const ApiManagementApiOauth2AuthorizationOrOpenidAuthentication();

  /// Sets `oauth2_authorization`.
  const factory ApiManagementApiOauth2AuthorizationOrOpenidAuthentication.oauth2Authorization(
    ApiManagementApiOauth2Authorization oauth2Authorization,
  ) = ApiManagementApiOauth2AuthorizationOrOpenidAuthenticationOauth2Authorization;

  /// Sets `openid_authentication`.
  const factory ApiManagementApiOauth2AuthorizationOrOpenidAuthentication.openidAuthentication(
    ApiManagementApiOpenidAuthentication openidAuthentication,
  ) = ApiManagementApiOauth2AuthorizationOrOpenidAuthenticationChoice;

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

/// The [ApiManagementApiOauth2AuthorizationOrOpenidAuthentication.oauth2Authorization] choice: sets `oauth2_authorization`.
final class ApiManagementApiOauth2AuthorizationOrOpenidAuthenticationOauth2Authorization
    extends ApiManagementApiOauth2AuthorizationOrOpenidAuthentication {
  const ApiManagementApiOauth2AuthorizationOrOpenidAuthenticationOauth2Authorization(
    this.oauth2Authorization,
  );

  final ApiManagementApiOauth2Authorization oauth2Authorization;

  @internal
  @override
  String get blockKey => 'oauth2_authorization';

  @internal
  @override
  Map<String, Object?> encode() => {
    'oauth2_authorization': oauth2Authorization.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'oauth2_authorization': TfArg.literal(oauth2Authorization.encode()),
  };
}

/// The [ApiManagementApiOauth2AuthorizationOrOpenidAuthentication.openidAuthentication] choice: sets `openid_authentication`.
final class ApiManagementApiOauth2AuthorizationOrOpenidAuthenticationChoice
    extends ApiManagementApiOauth2AuthorizationOrOpenidAuthentication {
  const ApiManagementApiOauth2AuthorizationOrOpenidAuthenticationChoice(
    this.openidAuthentication,
  );

  final ApiManagementApiOpenidAuthentication openidAuthentication;

  @internal
  @override
  String get blockKey => 'openid_authentication';

  @internal
  @override
  Map<String, Object?> encode() => {
    'openid_authentication': openidAuthentication.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'openid_authentication': TfArg.literal(openidAuthentication.encode()),
  };
}

/// Typed helper for the `contact` block of
/// `azurerm_api_management_api` (derived from provider schema).
@immutable
final class ApiManagementApiContact {
  const ApiManagementApiContact({this.email, this.name, this.url});

  final TfArg<String>? email;

  final TfArg<String>? name;

  final TfArg<String>? url;

  @internal
  Map<String, Object?> encode() => {
    'email': ?email?.toTfJson(),
    'name': ?name?.toTfJson(),
    'url': ?url?.toTfJson(),
  };
}

/// Typed helper for the `import` block of
/// `azurerm_api_management_api` (derived from provider schema).
@immutable
final class ApiManagementApiImport {
  const ApiManagementApiImport({
    required this.contentFormat,
    required this.contentValue,
    this.wsdlSelector,
  });

  final TfArg<String> contentFormat;

  final TfArg<String> contentValue;

  final ApiManagementApiWsdlSelector? wsdlSelector;

  @internal
  Map<String, Object?> encode() => {
    'content_format': contentFormat.toTfJson(),
    'content_value': contentValue.toTfJson(),
    'wsdl_selector': ?wsdlSelector?.encode(),
  };
}

/// Typed helper for the `import.wsdl_selector` block of
/// `azurerm_api_management_api` (derived from provider schema).
@immutable
final class ApiManagementApiWsdlSelector {
  const ApiManagementApiWsdlSelector({
    required this.endpointName,
    required this.serviceName,
  });

  final TfArg<String> endpointName;

  final TfArg<String> serviceName;

  @internal
  Map<String, Object?> encode() => {
    'endpoint_name': endpointName.toTfJson(),
    'service_name': serviceName.toTfJson(),
  };
}

/// Typed helper for the `license` block of
/// `azurerm_api_management_api` (derived from provider schema).
@immutable
final class ApiManagementApiLicense {
  const ApiManagementApiLicense({this.name, this.url});

  final TfArg<String>? name;

  final TfArg<String>? url;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'url': ?url?.toTfJson(),
  };
}

/// Typed helper for the `oauth2_authorization` block of
/// `azurerm_api_management_api` (derived from provider schema).
@immutable
final class ApiManagementApiOauth2Authorization {
  const ApiManagementApiOauth2Authorization({
    required this.authorizationServerName,
    this.scope,
  });

  final TfArg<String> authorizationServerName;

  final TfArg<String>? scope;

  @internal
  Map<String, Object?> encode() => {
    'authorization_server_name': authorizationServerName.toTfJson(),
    'scope': ?scope?.toTfJson(),
  };
}

/// Typed helper for the `openid_authentication` block of
/// `azurerm_api_management_api` (derived from provider schema).
@immutable
final class ApiManagementApiOpenidAuthentication {
  const ApiManagementApiOpenidAuthentication({
    this.bearerTokenSendingMethods,
    required this.openidProviderName,
  });

  final List<ApiManagementApiBearerTokenSendingMethods>?
  bearerTokenSendingMethods;

  final TfArg<String> openidProviderName;

  @internal
  Map<String, Object?> encode() => {
    if (bearerTokenSendingMethods != null)
      'bearer_token_sending_methods': [
        for (final e in bearerTokenSendingMethods!) e.toTfJson(),
      ],
    'openid_provider_name': openidProviderName.toTfJson(),
  };
}

/// `bearer_token_sending_methods` — derived from the provider schema description.
extension type const ApiManagementApiBearerTokenSendingMethods._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementApiBearerTokenSendingMethods.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementApiBearerTokenSendingMethods.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementApiBearerTokenSendingMethods.arg(TfArg<String> arg)
    : this._(arg);

  static const authorizationheader =
      ApiManagementApiBearerTokenSendingMethods._(
        TfArgLiteral('authorizationHeader'),
      );
  static const query = ApiManagementApiBearerTokenSendingMethods._(
    TfArgLiteral('query'),
  );

  static const List<ApiManagementApiBearerTokenSendingMethods> values = [
    authorizationheader,
    query,
  ];
}

/// Typed helper for the `subscription_key_parameter_names` block of
/// `azurerm_api_management_api` (derived from provider schema).
@immutable
final class ApiManagementApiSubscriptionKeyParameterNames {
  const ApiManagementApiSubscriptionKeyParameterNames({
    required this.header,
    required this.query,
  });

  final TfArg<String> header;

  final TfArg<String> query;

  @internal
  Map<String, Object?> encode() => {
    'header': header.toTfJson(),
    'query': query.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_api_management_api`.
final class AzurermApiManagementApi extends Resource {
  static const String tfType = 'azurerm_api_management_api';

  AzurermApiManagementApi(
    super.localName, {
    required TfArg<String> apiManagementName,
    ApiManagementApiType? apiType,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> name,
    TfArg<String>? path,
    List<ApiManagementApiProtocols>? protocols,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> revision,
    TfArg<String>? revisionDescription,
    TfArg<String>? serviceUrl,
    TfArg<String>? sourceApiId,
    TfArg<bool>? subscriptionRequired,
    TfArg<String>? termsOfServiceUrl,
    TfArg<String>? version,
    TfArg<String>? versionDescription,
    TfArg<String>? versionSetId,
    ApiManagementApiContact? contact,
    ApiManagementApiImport? import,
    ApiManagementApiLicense? license,
    ApiManagementApiOauth2AuthorizationOrOpenidAuthentication?
    oauth2AuthorizationOrOpenidAuthentication,
    ApiManagementApiSubscriptionKeyParameterNames?
    subscriptionKeyParameterNames,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'api_type': ?apiType,
           'description': ?description,
           'display_name': ?displayName,
           'name': name,
           'path': ?path,
           if (protocols != null)
             'protocols': TfArg.literal([
               for (final e in protocols) e.toTfJson(),
             ]),
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'revision': revision,
           'revision_description': ?revisionDescription,
           'service_url': ?serviceUrl,
           'source_api_id': ?sourceApiId,
           'subscription_required': ?subscriptionRequired,
           'terms_of_service_url': ?termsOfServiceUrl,
           'version': ?version,
           'version_description': ?versionDescription,
           'version_set_id': ?versionSetId,
           if (contact != null) 'contact': TfArg.literal(contact.encode()),
           if (import != null) 'import': TfArg.literal(import.encode()),
           if (license != null) 'license': TfArg.literal(license.encode()),
           ...?oauth2AuthorizationOrOpenidAuthentication?.argMap,
           if (subscriptionKeyParameterNames != null)
             'subscription_key_parameter_names': TfArg.literal(
               subscriptionKeyParameterNames.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementApiSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementApi>`.
  RefTo<AzurermApiManagementApi> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `is_current` attribute.
  TfRef<bool> get isCurrent => TfRef.attribute<bool>(this, 'is_current');

  /// Reference to `is_online` attribute.
  TfRef<bool> get isOnline => TfRef.attribute<bool>(this, 'is_online');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `api_type` attribute.
  TfRef<String> get apiType => TfRef.attribute<String>(this, 'api_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `protocols` attribute.
  TfRef<List<String>> get protocols =>
      TfRef.attribute<List<String>>(this, 'protocols');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `revision` attribute.
  TfRef<String> get revision => TfRef.attribute<String>(this, 'revision');

  /// Reference to `revision_description` attribute.
  TfRef<String> get revisionDescription =>
      TfRef.attribute<String>(this, 'revision_description');

  /// Reference to `service_url` attribute.
  TfRef<String> get serviceUrl => TfRef.attribute<String>(this, 'service_url');

  /// Reference to `source_api_id` attribute.
  TfRef<String> get sourceApiId =>
      TfRef.attribute<String>(this, 'source_api_id');

  /// Reference to `subscription_required` attribute.
  TfRef<bool> get subscriptionRequired =>
      TfRef.attribute<bool>(this, 'subscription_required');

  /// Reference to `terms_of_service_url` attribute.
  TfRef<String> get termsOfServiceUrl =>
      TfRef.attribute<String>(this, 'terms_of_service_url');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `version_description` attribute.
  TfRef<String> get versionDescription =>
      TfRef.attribute<String>(this, 'version_description');

  /// Reference to `version_set_id` attribute.
  TfRef<String> get versionSetId =>
      TfRef.attribute<String>(this, 'version_set_id');
}
