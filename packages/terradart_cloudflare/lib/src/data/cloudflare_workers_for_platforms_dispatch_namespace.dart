// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../workers/cloudflare_workers_for_platforms_dispatch_namespace.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_workers_for_platforms_dispatch_namespace`.
const Set<String> _cloudflareWorkersForPlatformsDispatchNamespaceSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_workers_for_platforms_dispatch_namespace`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class DataCloudflareWorkersForPlatformsDispatchNamespace extends Data {
  static const String tfType =
      'cloudflare_workers_for_platforms_dispatch_namespace';

  DataCloudflareWorkersForPlatformsDispatchNamespace(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> dispatchNamespace,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'dispatch_namespace': dispatchNamespace,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareWorkersForPlatformsDispatchNamespaceSensitive;

  /// A reference to the `cloudflare_workers_for_platforms_dispatch_namespace` this data source reads, for
  /// arguments typed `RefTo<CloudflareWorkersForPlatformsDispatchNamespace>`.
  RefTo<CloudflareWorkersForPlatformsDispatchNamespace> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_by` attribute.
  TfRef<String> get createdBy => TfRef.attribute<String>(this, 'created_by');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_by` attribute.
  TfRef<String> get modifiedBy => TfRef.attribute<String>(this, 'modified_by');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');

  /// Reference to `namespace_name` attribute.
  TfRef<String> get namespaceName =>
      TfRef.attribute<String>(this, 'namespace_name');

  /// Reference to `script_count` attribute.
  TfRef<num> get scriptCount => TfRef.attribute<num>(this, 'script_count');

  /// Reference to `trusted_workers` attribute.
  TfRef<bool> get trustedWorkers =>
      TfRef.attribute<bool>(this, 'trusted_workers');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `dispatch_namespace` attribute.
  TfRef<String> get dispatchNamespace =>
      TfRef.attribute<String>(this, 'dispatch_namespace');
}
