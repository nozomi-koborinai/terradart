// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_arc_resource_bridge_appliance`.
const Set<String> _azurermArcResourceBridgeApplianceSensitive = <String>{};

/// Arc Resource Bridge Appliance enum for `distro`.
extension type const ArcResourceBridgeApplianceDistro._(TfArg<String> _)
    implements TfArg<String> {
  ArcResourceBridgeApplianceDistro.variable(String name)
    : this._(TfArg.variable(name));
  ArcResourceBridgeApplianceDistro.expression(String template)
    : this._(TfArg.expression(template));
  const ArcResourceBridgeApplianceDistro.arg(TfArg<String> arg) : this._(arg);

  static const aksedge = ArcResourceBridgeApplianceDistro._(
    TfArgLiteral('AKSEdge'),
  );

  static const List<ArcResourceBridgeApplianceDistro> values = [aksedge];
}

/// Arc Resource Bridge Appliance Infrastructure enum for `infrastructure_provider`.
extension type const ArcResourceBridgeApplianceInfrastructureProvider._(
  TfArg<String> _
) implements TfArg<String> {
  ArcResourceBridgeApplianceInfrastructureProvider.variable(String name)
    : this._(TfArg.variable(name));
  ArcResourceBridgeApplianceInfrastructureProvider.expression(String template)
    : this._(TfArg.expression(template));
  const ArcResourceBridgeApplianceInfrastructureProvider.arg(TfArg<String> arg)
    : this._(arg);

  static const hci = ArcResourceBridgeApplianceInfrastructureProvider._(
    TfArgLiteral('HCI'),
  );
  static const scvmm = ArcResourceBridgeApplianceInfrastructureProvider._(
    TfArgLiteral('SCVMM'),
  );
  static const vmware = ArcResourceBridgeApplianceInfrastructureProvider._(
    TfArgLiteral('VMWare'),
  );

  static const List<ArcResourceBridgeApplianceInfrastructureProvider> values = [
    hci,
    scvmm,
    vmware,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_arc_resource_bridge_appliance` (derived from provider schema).
@immutable
final class ArcResourceBridgeApplianceIdentity {
  const ArcResourceBridgeApplianceIdentity({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Factory wrapper for `azurerm_arc_resource_bridge_appliance`.
final class AzurermArcResourceBridgeAppliance extends Resource {
  static const String tfType = 'azurerm_arc_resource_bridge_appliance';

  AzurermArcResourceBridgeAppliance(
    super.localName, {
    required ArcResourceBridgeApplianceDistro distro,
    required ArcResourceBridgeApplianceInfrastructureProvider
    infrastructureProvider,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? publicKeyBase64,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required ArcResourceBridgeApplianceIdentity identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'distro': distro,
           'infrastructure_provider': infrastructureProvider,
           'location': location,
           'name': name,
           'public_key_base64': ?publicKeyBase64,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermArcResourceBridgeApplianceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermArcResourceBridgeAppliance>`.
  RefTo<AzurermArcResourceBridgeAppliance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `distro` attribute.
  TfRef<String> get distro => TfRef.attribute<String>(this, 'distro');

  /// Reference to `infrastructure_provider` attribute.
  TfRef<String> get infrastructureProvider =>
      TfRef.attribute<String>(this, 'infrastructure_provider');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_key_base64` attribute.
  TfRef<String> get publicKeyBase64 =>
      TfRef.attribute<String>(this, 'public_key_base64');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
