// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  DataCloudflareWorkersForPlatformsDispatchNamespace({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> dispatchNamespace,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'dispatch_namespace': dispatchNamespace,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareWorkersForPlatformsDispatchNamespaceSensitive;

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
}
