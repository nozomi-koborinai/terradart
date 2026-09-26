// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_router_configuration`.
const Set<String> _awsDxRouterConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_dx_router_configuration`.
final class DataAwsDxRouterConfiguration extends Data {
  static const String tfType = 'aws_dx_router_configuration';

  DataAwsDxRouterConfiguration({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> routerTypeIdentifier,
    required TfArg<String> virtualInterfaceId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'router_type_identifier': routerTypeIdentifier,
           'virtual_interface_id': virtualInterfaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxRouterConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `customer_router_config` attribute.
  TfRef<String> get customerRouterConfig =>
      TfRef.attribute<String>(this, 'customer_router_config');

  /// Reference to `router` attribute.
  TfRef<List<Map<String, Object?>>> get router =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'router');

  /// Reference to `virtual_interface_name` attribute.
  TfRef<String> get virtualInterfaceName =>
      TfRef.attribute<String>(this, 'virtual_interface_name');
}
