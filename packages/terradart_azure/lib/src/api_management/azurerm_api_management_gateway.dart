// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_gateway`.
const Set<String> _azurermApiManagementGatewaySensitive = <String>{};

/// Typed helper for the `location_data` block of
/// `azurerm_api_management_gateway` (derived from provider schema).
@immutable
final class ApiManagementGatewayLocationData {
  const ApiManagementGatewayLocationData({
    this.city,
    this.district,
    required this.name,
    this.region,
  });

  final TfArg<String>? city;

  final TfArg<String>? district;

  final TfArg<String> name;

  final TfArg<String>? region;

  @internal
  Map<String, Object?> encode() => {
    'city': ?city?.toTfJson(),
    'district': ?district?.toTfJson(),
    'name': name.toTfJson(),
    'region': ?region?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_api_management_gateway`.
final class AzurermApiManagementGateway extends Resource {
  static const String tfType = 'azurerm_api_management_gateway';

  AzurermApiManagementGateway(
    super.localName, {
    required TfArg<String> apiManagementId,
    TfArg<String>? description,
    required TfArg<String> name,
    required ApiManagementGatewayLocationData locationData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_id': apiManagementId,
           'description': ?description,
           'name': name,
           'location_data': TfArg.literal(locationData.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementGateway>`.
  RefTo<AzurermApiManagementGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');
}
