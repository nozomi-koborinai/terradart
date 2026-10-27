// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dev_center_project`.
const Set<String> _azurermDevCenterProjectSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_dev_center_project` (derived from provider schema).
@immutable
final class DevCenterProjectIdentity {
  const DevCenterProjectIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_dev_center_project`.
final class AzurermDevCenterProject extends Resource {
  static const String tfType = 'azurerm_dev_center_project';

  AzurermDevCenterProject(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> devCenterId,
    required TfArg<String> location,
    TfArg<num>? maximumDevBoxesPerUser,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    DevCenterProjectIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'dev_center_id': devCenterId,
           'location': location,
           'maximum_dev_boxes_per_user': ?maximumDevBoxesPerUser,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDevCenterProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDevCenterProject>`.
  RefTo<AzurermDevCenterProject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dev_center_uri` attribute.
  TfRef<String> get devCenterUri =>
      TfRef.attribute<String>(this, 'dev_center_uri');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dev_center_id` attribute.
  TfRef<String> get devCenterId =>
      TfRef.attribute<String>(this, 'dev_center_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maximum_dev_boxes_per_user` attribute.
  TfRef<num> get maximumDevBoxesPerUser =>
      TfRef.attribute<num>(this, 'maximum_dev_boxes_per_user');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
