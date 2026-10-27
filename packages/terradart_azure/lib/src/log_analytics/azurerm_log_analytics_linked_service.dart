// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_log_analytics_linked_service`.
const Set<String> _azurermLogAnalyticsLinkedServiceSensitive = <String>{};

/// Exactly one of `read_access_id`, `write_access_id` on `azurerm_log_analytics_linked_service`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.readAccessId(...)`.
sealed class LogAnalyticsLinkedServiceAccessId {
  const LogAnalyticsLinkedServiceAccessId();

  /// Sets `read_access_id`.
  const factory LogAnalyticsLinkedServiceAccessId.readAccessId(
    TfArg<String> readAccessId,
  ) = LogAnalyticsLinkedServiceReadAccessId;

  /// Sets `write_access_id`.
  const factory LogAnalyticsLinkedServiceAccessId.writeAccessId(
    TfArg<String> writeAccessId,
  ) = LogAnalyticsLinkedServiceWriteAccessId;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LogAnalyticsLinkedServiceAccessId.readAccessId] choice: sets `read_access_id`.
final class LogAnalyticsLinkedServiceReadAccessId
    extends LogAnalyticsLinkedServiceAccessId {
  const LogAnalyticsLinkedServiceReadAccessId(this.readAccessId);

  final TfArg<String> readAccessId;

  @internal
  @override
  String get blockKey => 'read_access_id';

  @internal
  @override
  Map<String, Object?> encode() => {'read_access_id': readAccessId.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'read_access_id': readAccessId};
}

/// The [LogAnalyticsLinkedServiceAccessId.writeAccessId] choice: sets `write_access_id`.
final class LogAnalyticsLinkedServiceWriteAccessId
    extends LogAnalyticsLinkedServiceAccessId {
  const LogAnalyticsLinkedServiceWriteAccessId(this.writeAccessId);

  final TfArg<String> writeAccessId;

  @internal
  @override
  String get blockKey => 'write_access_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'write_access_id': writeAccessId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'write_access_id': writeAccessId};
}

/// Factory wrapper for `azurerm_log_analytics_linked_service`.
final class AzurermLogAnalyticsLinkedService extends Resource {
  static const String tfType = 'azurerm_log_analytics_linked_service';

  AzurermLogAnalyticsLinkedService(
    super.localName, {
    required LogAnalyticsLinkedServiceAccessId accessId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...accessId.argMap,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLogAnalyticsLinkedServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsLinkedService>`.
  RefTo<AzurermLogAnalyticsLinkedService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `read_access_id` attribute.
  TfRef<String> get readAccessId =>
      TfRef.attribute<String>(this, 'read_access_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');

  /// Reference to `write_access_id` attribute.
  TfRef<String> get writeAccessId =>
      TfRef.attribute<String>(this, 'write_access_id');
}
