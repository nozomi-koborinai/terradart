// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_arc_machine`.
const Set<String> _azurermArcMachineSensitive = <String>{};

/// Arc Machine enum for `kind`.
extension type const ArcMachineKind._(TfArg<String> _)
    implements TfArg<String> {
  ArcMachineKind.variable(String name) : this._(TfArg.variable(name));
  ArcMachineKind.expression(String template)
    : this._(TfArg.expression(template));
  const ArcMachineKind.arg(TfArg<String> arg) : this._(arg);

  static const avs = ArcMachineKind._(TfArgLiteral('AVS'));
  static const aws = ArcMachineKind._(TfArgLiteral('AWS'));
  static const eps = ArcMachineKind._(TfArgLiteral('EPS'));
  static const gcp = ArcMachineKind._(TfArgLiteral('GCP'));
  static const hci = ArcMachineKind._(TfArgLiteral('HCI'));
  static const scvmm = ArcMachineKind._(TfArgLiteral('SCVMM'));
  static const vmware = ArcMachineKind._(TfArgLiteral('VMware'));

  static const List<ArcMachineKind> values = [
    avs,
    aws,
    eps,
    gcp,
    hci,
    scvmm,
    vmware,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_arc_machine` (derived from provider schema).
@immutable
final class ArcMachineIdentity {
  const ArcMachineIdentity({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Factory wrapper for `azurerm_arc_machine`.
final class AzurermArcMachine extends Resource {
  static const String tfType = 'azurerm_arc_machine';

  AzurermArcMachine(
    super.localName, {
    required ArcMachineKind kind,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    ArcMachineIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'kind': kind,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermArcMachineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermArcMachine>`.
  RefTo<AzurermArcMachine> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
