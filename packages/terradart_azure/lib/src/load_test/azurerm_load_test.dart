// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_load_test`.
const Set<String> _azurermLoadTestSensitive = <String>{};

/// Typed helper for the `encryption` block of
/// `azurerm_load_test` (derived from provider schema).
@immutable
final class LoadTestEncryption {
  const LoadTestEncryption({required this.keyUrl, required this.identity});

  final TfArg<String> keyUrl;

  final LoadTestEncryptionIdentity identity;

  @internal
  Map<String, Object?> encode() => {
    'key_url': keyUrl.toTfJson(),
    'identity': identity.encode(),
  };
}

/// Typed helper for the `encryption.identity` block of
/// `azurerm_load_test` (derived from provider schema).
@immutable
final class LoadTestEncryptionIdentity {
  const LoadTestEncryptionIdentity({
    required this.identityId,
    required this.type,
  });

  final TfArg<String> identityId;

  final LoadTestType type;

  @internal
  Map<String, Object?> encode() => {
    'identity_id': identityId.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const LoadTestType._(TfArg<String> _) implements TfArg<String> {
  LoadTestType.variable(String name) : this._(TfArg.variable(name));
  LoadTestType.expression(String template) : this._(TfArg.expression(template));
  const LoadTestType.arg(TfArg<String> arg) : this._(arg);

  static const systemassigned = LoadTestType._(TfArgLiteral('SystemAssigned'));
  static const userassigned = LoadTestType._(TfArgLiteral('UserAssigned'));

  static const List<LoadTestType> values = [systemassigned, userassigned];
}

/// Typed helper for the `identity` block of
/// `azurerm_load_test` (derived from provider schema).
@immutable
final class LoadTestIdentity {
  const LoadTestIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_load_test`.
final class AzurermLoadTest extends Resource {
  static const String tfType = 'azurerm_load_test';

  AzurermLoadTest(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    LoadTestEncryption? encryption,
    LoadTestIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (encryption != null)
             'encryption': TfArg.literal(encryption.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLoadTestSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLoadTest>`.
  RefTo<AzurermLoadTest> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_plane_uri` attribute.
  TfRef<String> get dataPlaneUri =>
      TfRef.attribute<String>(this, 'data_plane_uri');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
