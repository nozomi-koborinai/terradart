// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_network_security_perimeter_profile.dart';

/// Sensitive field paths for `azurerm_network_security_perimeter_profile`.
const Set<String> _azurermNetworkSecurityPerimeterProfileSensitive = <String>{};

/// Factory wrapper for `azurerm_network_security_perimeter_profile`.
final class DataAzurermNetworkSecurityPerimeterProfile extends Data {
  static const String tfType = 'azurerm_network_security_perimeter_profile';

  DataAzurermNetworkSecurityPerimeterProfile(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> networkSecurityPerimeterId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'network_security_perimeter_id': networkSecurityPerimeterId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkSecurityPerimeterProfileSensitive;

  /// A reference to the `azurerm_network_security_perimeter_profile` this data source reads, for
  /// arguments typed `RefTo<AzurermNetworkSecurityPerimeterProfile>`.
  RefTo<AzurermNetworkSecurityPerimeterProfile> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `network_security_perimeter_id` attribute.
  TfRef<String> get networkSecurityPerimeterId =>
      TfRef.attribute<String>(this, 'network_security_perimeter_id');
}
