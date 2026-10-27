// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_gateway_route_config`.
const Set<String> _azurermSpringCloudGatewayRouteConfigSensitive = <String>{};

/// Typed helper for the `open_api` block of
/// `azurerm_spring_cloud_gateway_route_config` (derived from provider schema).
@immutable
final class SpringCloudGatewayRouteConfigOpenApi {
  const SpringCloudGatewayRouteConfigOpenApi({this.uri});

  final TfArg<String>? uri;

  @internal
  Map<String, Object?> encode() => {'uri': ?uri?.toTfJson()};
}

/// Typed helper for the `route` block of
/// `azurerm_spring_cloud_gateway_route_config` (derived from provider schema).
@immutable
final class SpringCloudGatewayRouteConfigRoute {
  const SpringCloudGatewayRouteConfigRoute({
    this.classificationTags,
    this.description,
    this.filters,
    required this.order,
    this.predicates,
    this.ssoValidationEnabled,
    this.title,
    this.tokenRelay,
    this.uri,
  });

  final TfArg<List<String>>? classificationTags;

  final TfArg<String>? description;

  final TfArg<List<String>>? filters;

  final TfArg<num> order;

  final TfArg<List<String>>? predicates;

  final TfArg<bool>? ssoValidationEnabled;

  final TfArg<String>? title;

  final TfArg<bool>? tokenRelay;

  final TfArg<String>? uri;

  @internal
  Map<String, Object?> encode() => {
    'classification_tags': ?classificationTags?.toTfJson(),
    'description': ?description?.toTfJson(),
    'filters': ?filters?.toTfJson(),
    'order': order.toTfJson(),
    'predicates': ?predicates?.toTfJson(),
    'sso_validation_enabled': ?ssoValidationEnabled?.toTfJson(),
    'title': ?title?.toTfJson(),
    'token_relay': ?tokenRelay?.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_spring_cloud_gateway_route_config`.
final class AzurermSpringCloudGatewayRouteConfig extends Resource {
  static const String tfType = 'azurerm_spring_cloud_gateway_route_config';

  AzurermSpringCloudGatewayRouteConfig(
    super.localName, {
    TfArg<List<String>>? filters,
    required TfArg<String> name,
    TfArg<List<String>>? predicates,
    required TfArg<String> protocol,
    TfArg<String>? springCloudAppId,
    required TfArg<String> springCloudGatewayId,
    TfArg<bool>? ssoValidationEnabled,
    SpringCloudGatewayRouteConfigOpenApi? openApi,
    List<SpringCloudGatewayRouteConfigRoute>? route,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'filters': ?filters,
           'name': name,
           'predicates': ?predicates,
           'protocol': protocol,
           'spring_cloud_app_id': ?springCloudAppId,
           'spring_cloud_gateway_id': springCloudGatewayId,
           'sso_validation_enabled': ?ssoValidationEnabled,
           if (openApi != null) 'open_api': TfArg.literal(openApi.encode()),
           if (route != null)
             'route': TfArg.literal([for (final e in route) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudGatewayRouteConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudGatewayRouteConfig>`.
  RefTo<AzurermSpringCloudGatewayRouteConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `filters` attribute.
  TfRef<List<String>> get filters =>
      TfRef.attribute<List<String>>(this, 'filters');

  /// Reference to `predicates` attribute.
  TfRef<List<String>> get predicates =>
      TfRef.attribute<List<String>>(this, 'predicates');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `spring_cloud_app_id` attribute.
  TfRef<String> get springCloudAppId =>
      TfRef.attribute<String>(this, 'spring_cloud_app_id');

  /// Reference to `spring_cloud_gateway_id` attribute.
  TfRef<String> get springCloudGatewayId =>
      TfRef.attribute<String>(this, 'spring_cloud_gateway_id');

  /// Reference to `sso_validation_enabled` attribute.
  TfRef<bool> get ssoValidationEnabled =>
      TfRef.attribute<bool>(this, 'sso_validation_enabled');
}
