// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_shares`.
const Set<String> _cloudflareSharesSensitive = <String>{};

/// Factory wrapper for `cloudflare_shares`.
final class DataCloudflareShares extends Data {
  static const String tfType = 'cloudflare_shares';

  DataCloudflareShares({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? direction,
    TfArg<bool>? includeRecipientCounts,
    TfArg<bool>? includeResources,
    TfArg<String>? kind,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<List<String>>? resourceTypes,
    TfArg<String>? status,
    TfArg<List<String>>? tag,
    TfArg<String>? targetType,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (direction != null) 'direction': direction,
           if (includeRecipientCounts != null)
             'include_recipient_counts': includeRecipientCounts,
           if (includeResources != null) 'include_resources': includeResources,
           if (kind != null) 'kind': kind,
           if (maxItems != null) 'max_items': maxItems,
           if (order != null) 'order': order,
           if (resourceTypes != null) 'resource_types': resourceTypes,
           if (status != null) 'status': status,
           if (tag != null) 'tag': tag,
           if (targetType != null) 'target_type': targetType,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSharesSensitive;

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');
}
