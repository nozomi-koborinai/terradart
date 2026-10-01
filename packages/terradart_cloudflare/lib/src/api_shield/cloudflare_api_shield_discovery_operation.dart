// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_api_shield_discovery_operation`.
const Set<String> _cloudflareApiShieldDiscoveryOperationSensitive = <String>{};

/// Api Shield Discovery Operation enum for `state`.
extension type const ApiShieldDiscoveryOperationState._(TfArg<String> _)
    implements TfArg<String> {
  ApiShieldDiscoveryOperationState.variable(String name)
    : this._(TfArg.variable(name));
  ApiShieldDiscoveryOperationState.expression(String template)
    : this._(TfArg.expression(template));
  const ApiShieldDiscoveryOperationState.arg(TfArg<String> arg) : this._(arg);

  static const review = ApiShieldDiscoveryOperationState._(
    TfArgLiteral('review'),
  );
  static const ignored = ApiShieldDiscoveryOperationState._(
    TfArgLiteral('ignored'),
  );

  static const List<ApiShieldDiscoveryOperationState> values = [
    review,
    ignored,
  ];
}

/// Factory wrapper for `cloudflare_api_shield_discovery_operation`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Domain API Gateway`
final class CloudflareApiShieldDiscoveryOperation extends Resource {
  static const String tfType = 'cloudflare_api_shield_discovery_operation';

  CloudflareApiShieldDiscoveryOperation(
    super.localName, {
    required TfArg<String> operationId,
    ApiShieldDiscoveryOperationState? state,
    RefTo<CloudflareZone>? zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'operation_id': operationId,
           'state': ?state,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareApiShieldDiscoveryOperationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareApiShieldDiscoveryOperation>`.
  RefTo<CloudflareApiShieldDiscoveryOperation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `operation_id` attribute.
  TfRef<String> get operationId =>
      TfRef.attribute<String>(this, 'operation_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
