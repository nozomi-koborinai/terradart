// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_video_indexer_account`.
const Set<String> _azurermVideoIndexerAccountSensitive = <String>{};

/// Video Indexer Account Public Network enum for `public_network_access`.
extension type const VideoIndexerAccountPublicNetworkAccess._(TfArg<String> _)
    implements TfArg<String> {
  VideoIndexerAccountPublicNetworkAccess.variable(String name)
    : this._(TfArg.variable(name));
  VideoIndexerAccountPublicNetworkAccess.expression(String template)
    : this._(TfArg.expression(template));
  const VideoIndexerAccountPublicNetworkAccess.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = VideoIndexerAccountPublicNetworkAccess._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = VideoIndexerAccountPublicNetworkAccess._(
    TfArgLiteral('Enabled'),
  );

  static const List<VideoIndexerAccountPublicNetworkAccess> values = [
    disabled,
    enabled,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_video_indexer_account` (derived from provider schema).
@immutable
final class VideoIndexerAccountIdentity {
  const VideoIndexerAccountIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `storage` block of
/// `azurerm_video_indexer_account` (derived from provider schema).
@immutable
final class VideoIndexerAccountStorage {
  const VideoIndexerAccountStorage({
    required this.storageAccountId,
    this.userAssignedIdentityId,
  });

  final TfArg<String> storageAccountId;

  final TfArg<String>? userAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'storage_account_id': storageAccountId.toTfJson(),
    'user_assigned_identity_id': ?userAssignedIdentityId?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_video_indexer_account`.
final class AzurermVideoIndexerAccount extends Resource {
  static const String tfType = 'azurerm_video_indexer_account';

  AzurermVideoIndexerAccount(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    VideoIndexerAccountPublicNetworkAccess? publicNetworkAccess,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required VideoIndexerAccountIdentity identity,
    required VideoIndexerAccountStorage storage,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'public_network_access': ?publicNetworkAccess,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'identity': TfArg.literal(identity.encode()),
           'storage': TfArg.literal(storage.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVideoIndexerAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVideoIndexerAccount>`.
  RefTo<AzurermVideoIndexerAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
