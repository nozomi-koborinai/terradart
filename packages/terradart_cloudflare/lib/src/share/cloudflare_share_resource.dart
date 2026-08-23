// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_share_resource`.
const Set<String> _cloudflareShareResourceSensitive = <String>{};

/// Factory wrapper for `cloudflare_share_resource`.
final class CloudflareShareResource extends Resource {
  static const String tfType = 'cloudflare_share_resource';

  CloudflareShareResource({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> meta,
    required TfArg<String> resourceAccountId,
    required TfArg<String> resourceId,
    required TfArg<String> resourceType,
    required TfArg<String> shareId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'meta': meta,
           'resource_account_id': resourceAccountId,
           'resource_id': resourceId,
           'resource_type': resourceType,
           'share_id': shareId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareResourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `resource_version` attribute.
  TfRef<num> get resourceVersion =>
      TfRef.attribute<num>(this, 'resource_version');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
