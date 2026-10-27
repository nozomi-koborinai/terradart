// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_subscription`.
const Set<String> _azurermApiManagementSubscriptionSensitive = <String>{
  'primary_key',
  'secondary_key',
};

/// Api Management Subscription enum for `state`.
extension type const ApiManagementSubscriptionState._(TfArg<String> _)
    implements TfArg<String> {
  ApiManagementSubscriptionState.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementSubscriptionState.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementSubscriptionState.arg(TfArg<String> arg) : this._(arg);

  static const active = ApiManagementSubscriptionState._(
    TfArgLiteral('active'),
  );
  static const cancelled = ApiManagementSubscriptionState._(
    TfArgLiteral('cancelled'),
  );
  static const expired = ApiManagementSubscriptionState._(
    TfArgLiteral('expired'),
  );
  static const rejected = ApiManagementSubscriptionState._(
    TfArgLiteral('rejected'),
  );
  static const submitted = ApiManagementSubscriptionState._(
    TfArgLiteral('submitted'),
  );
  static const suspended = ApiManagementSubscriptionState._(
    TfArgLiteral('suspended'),
  );

  static const List<ApiManagementSubscriptionState> values = [
    active,
    cancelled,
    expired,
    rejected,
    submitted,
    suspended,
  ];
}

/// At most one of `api_id`, `product_id` on `azurerm_api_management_subscription`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.apiId(...)`.
sealed class ApiManagementSubscriptionScope {
  const ApiManagementSubscriptionScope();

  /// Sets `api_id`.
  const factory ApiManagementSubscriptionScope.apiId(TfArg<String> apiId) =
      ApiManagementSubscriptionScopeApiId;

  /// Sets `product_id`.
  const factory ApiManagementSubscriptionScope.productId(
    TfArg<String> productId,
  ) = ApiManagementSubscriptionScopeProductId;

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

/// The [ApiManagementSubscriptionScope.apiId] choice: sets `api_id`.
final class ApiManagementSubscriptionScopeApiId
    extends ApiManagementSubscriptionScope {
  const ApiManagementSubscriptionScopeApiId(this.apiId);

  final TfArg<String> apiId;

  @internal
  @override
  String get blockKey => 'api_id';

  @internal
  @override
  Map<String, Object?> encode() => {'api_id': apiId.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'api_id': apiId};
}

/// The [ApiManagementSubscriptionScope.productId] choice: sets `product_id`.
final class ApiManagementSubscriptionScopeProductId
    extends ApiManagementSubscriptionScope {
  const ApiManagementSubscriptionScopeProductId(this.productId);

  final TfArg<String> productId;

  @internal
  @override
  String get blockKey => 'product_id';

  @internal
  @override
  Map<String, Object?> encode() => {'product_id': productId.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'product_id': productId};
}

/// Factory wrapper for `azurerm_api_management_subscription`.
final class AzurermApiManagementSubscription extends Resource {
  static const String tfType = 'azurerm_api_management_subscription';

  AzurermApiManagementSubscription(
    super.localName, {
    TfArg<bool>? allowTracing,
    ApiManagementSubscriptionScope? scope,
    required TfArg<String> apiManagementName,
    required TfArg<String> displayName,
    Sensitive<String>? primaryKey,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    Sensitive<String>? secondaryKey,
    ApiManagementSubscriptionState? state,
    TfArg<String>? subscriptionId,
    TfArg<String>? userId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_tracing': ?allowTracing,
           ...?scope?.argMap,
           'api_management_name': apiManagementName,
           'display_name': displayName,
           'primary_key': ?primaryKey,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'secondary_key': ?secondaryKey,
           'state': ?state,
           'subscription_id': ?subscriptionId,
           'user_id': ?userId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementSubscription>`.
  RefTo<AzurermApiManagementSubscription> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_tracing` attribute.
  TfRef<bool> get allowTracing => TfRef.attribute<bool>(this, 'allow_tracing');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `product_id` attribute.
  TfRef<String> get productId => TfRef.attribute<String>(this, 'product_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `secondary_key` attribute.
  TfRef<String> get secondaryKey =>
      TfRef.attribute<String>(this, 'secondary_key');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
