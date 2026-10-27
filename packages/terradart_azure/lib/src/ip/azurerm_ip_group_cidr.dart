// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_ip_group_cidr`.
const Set<String> _azurermIpGroupCidrSensitive = <String>{};

/// Factory wrapper for `azurerm_ip_group_cidr`.
final class AzurermIpGroupCidr extends Resource {
  static const String tfType = 'azurerm_ip_group_cidr';

  AzurermIpGroupCidr(
    super.localName, {
    required TfArg<String> cidr,
    required TfArg<String> ipGroupId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'cidr': cidr, 'ip_group_id': ipGroupId},
       );

  @override
  Set<String> get sensitiveFields => _azurermIpGroupCidrSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIpGroupCidr>`.
  RefTo<AzurermIpGroupCidr> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidr => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `ip_group_id` attribute.
  TfRef<String> get ipGroupId => TfRef.attribute<String>(this, 'ip_group_id');
}
