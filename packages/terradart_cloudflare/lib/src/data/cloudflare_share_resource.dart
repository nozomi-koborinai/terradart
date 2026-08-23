// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_share_resource`.
const Set<String> _cloudflareShareResourceSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_share_resource` (derived from provider schema).
@immutable
final class DataShareResourceFilter {
  const DataShareResourceFilter({this.resourceType, this.status});

  final TfArg<String>? resourceType;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (resourceType != null) 'resource_type': resourceType!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_share_resource`.
final class DataCloudflareShareResource extends Data {
  static const String tfType = 'cloudflare_share_resource';

  DataCloudflareShareResource({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> shareId,
    TfArg<String>? shareResourceId,
    DataShareResourceFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'share_id': shareId,
           if (shareResourceId != null) 'share_resource_id': shareResourceId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareResourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `meta` attribute.
  TfRef<String> get meta => TfRef.attribute<String>(this, 'meta');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `resource_account_id` attribute.
  TfRef<String> get resourceAccountId =>
      TfRef.attribute<String>(this, 'resource_account_id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `resource_version` attribute.
  TfRef<num> get resourceVersion =>
      TfRef.attribute<num>(this, 'resource_version');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
