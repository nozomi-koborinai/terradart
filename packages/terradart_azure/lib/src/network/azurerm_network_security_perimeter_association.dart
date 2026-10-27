// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_security_perimeter_association`.
const Set<String> _azurermNetworkSecurityPerimeterAssociationSensitive =
    <String>{};

/// Network Security Perimeter Association Access enum for `access_mode`.
extension type const NetworkSecurityPerimeterAssociationAccessMode._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkSecurityPerimeterAssociationAccessMode.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecurityPerimeterAssociationAccessMode.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecurityPerimeterAssociationAccessMode.arg(TfArg<String> arg)
    : this._(arg);

  static const audit = NetworkSecurityPerimeterAssociationAccessMode._(
    TfArgLiteral('Audit'),
  );
  static const enforced = NetworkSecurityPerimeterAssociationAccessMode._(
    TfArgLiteral('Enforced'),
  );
  static const learning = NetworkSecurityPerimeterAssociationAccessMode._(
    TfArgLiteral('Learning'),
  );

  static const List<NetworkSecurityPerimeterAssociationAccessMode> values = [
    audit,
    enforced,
    learning,
  ];
}

/// Factory wrapper for `azurerm_network_security_perimeter_association`.
final class AzurermNetworkSecurityPerimeterAssociation extends Resource {
  static const String tfType = 'azurerm_network_security_perimeter_association';

  AzurermNetworkSecurityPerimeterAssociation(
    super.localName, {
    required NetworkSecurityPerimeterAssociationAccessMode accessMode,
    required TfArg<String> name,
    required TfArg<String> networkSecurityPerimeterProfileId,
    required TfArg<String> resourceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_mode': accessMode,
           'name': name,
           'network_security_perimeter_profile_id':
               networkSecurityPerimeterProfileId,
           'resource_id': resourceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkSecurityPerimeterAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkSecurityPerimeterAssociation>`.
  RefTo<AzurermNetworkSecurityPerimeterAssociation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_mode` attribute.
  TfRef<String> get accessMode => TfRef.attribute<String>(this, 'access_mode');

  /// Reference to `network_security_perimeter_profile_id` attribute.
  TfRef<String> get networkSecurityPerimeterProfileId =>
      TfRef.attribute<String>(this, 'network_security_perimeter_profile_id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');
}
