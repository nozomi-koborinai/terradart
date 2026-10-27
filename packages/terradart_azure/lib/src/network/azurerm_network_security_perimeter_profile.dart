// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_security_perimeter_profile`.
const Set<String> _azurermNetworkSecurityPerimeterProfileSensitive = <String>{};

/// Factory wrapper for `azurerm_network_security_perimeter_profile`.
final class AzurermNetworkSecurityPerimeterProfile extends Resource {
  static const String tfType = 'azurerm_network_security_perimeter_profile';

  AzurermNetworkSecurityPerimeterProfile(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> networkSecurityPerimeterId,
    super.lifecycle,
    super.dependsOn,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkSecurityPerimeterProfile>`.
  RefTo<AzurermNetworkSecurityPerimeterProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `network_security_perimeter_id` attribute.
  TfRef<String> get networkSecurityPerimeterId =>
      TfRef.attribute<String>(this, 'network_security_perimeter_id');
}
