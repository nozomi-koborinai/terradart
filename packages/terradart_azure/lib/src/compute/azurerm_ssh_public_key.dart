// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_ssh_public_key`.
const Set<String> _azurermSshPublicKeySensitive = <String>{};

/// Factory wrapper for `azurerm_ssh_public_key`.
final class AzurermSshPublicKey extends Resource {
  static const String tfType = 'azurerm_ssh_public_key';

  AzurermSshPublicKey(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> publicKey,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'public_key': publicKey,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSshPublicKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSshPublicKey>`.
  RefTo<AzurermSshPublicKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_key` attribute.
  TfRef<String> get publicKey => TfRef.attribute<String>(this, 'public_key');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
