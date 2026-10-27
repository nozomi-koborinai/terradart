// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iotcentral_application`.
const Set<String> _azurermIotcentralApplicationSensitive = <String>{};

/// Iotcentral Application enum for `sku`.
extension type const IotcentralApplicationSku._(TfArg<String> _)
    implements TfArg<String> {
  IotcentralApplicationSku.variable(String name) : this._(TfArg.variable(name));
  IotcentralApplicationSku.expression(String template)
    : this._(TfArg.expression(template));
  const IotcentralApplicationSku.arg(TfArg<String> arg) : this._(arg);

  static const st1 = IotcentralApplicationSku._(TfArgLiteral('ST1'));
  static const st2 = IotcentralApplicationSku._(TfArgLiteral('ST2'));
  static const st0 = IotcentralApplicationSku._(TfArgLiteral('ST0'));

  static const List<IotcentralApplicationSku> values = [st1, st2, st0];
}

/// Typed helper for the `identity` block of
/// `azurerm_iotcentral_application` (derived from provider schema).
@immutable
final class IotcentralApplicationIdentity {
  const IotcentralApplicationIdentity({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Factory wrapper for `azurerm_iotcentral_application`.
final class AzurermIotcentralApplication extends Resource {
  static const String tfType = 'azurerm_iotcentral_application';

  AzurermIotcentralApplication(
    super.localName, {
    TfArg<String>? displayName,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    IotcentralApplicationSku? sku,
    required TfArg<String> subDomain,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? template,
    IotcentralApplicationIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': ?displayName,
           'location': location,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': ?sku,
           'sub_domain': subDomain,
           'tags': ?tags,
           'template': ?template,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIotcentralApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIotcentralApplication>`.
  RefTo<AzurermIotcentralApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `sub_domain` attribute.
  TfRef<String> get subDomain => TfRef.attribute<String>(this, 'sub_domain');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `template` attribute.
  TfRef<String> get template => TfRef.attribute<String>(this, 'template');
}
