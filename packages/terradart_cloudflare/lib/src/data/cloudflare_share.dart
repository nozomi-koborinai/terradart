// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_share`.
const Set<String> _cloudflareShareSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_share` (derived from provider schema).
@immutable
final class DataShareFilter {
  const DataShareFilter({
    this.direction,
    this.kind,
    this.order,
    this.resourceTypes,
    this.status,
    this.tag,
    this.targetType,
  });

  final TfArg<String>? direction;

  final TfArg<String>? kind;

  final TfArg<String>? order;

  final TfArg<List<Object?>>? resourceTypes;

  final TfArg<String>? status;

  final TfArg<List<Object?>>? tag;

  final TfArg<String>? targetType;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (kind != null) 'kind': kind!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (resourceTypes != null) 'resource_types': resourceTypes!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
    if (tag != null) 'tag': tag!.toTfJson(),
    if (targetType != null) 'target_type': targetType!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_share`.
final class DataCloudflareShare extends Data {
  static const String tfType = 'cloudflare_share';

  DataCloudflareShare({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? includeRecipientCounts,
    TfArg<bool>? includeResources,
    TfArg<String>? shareId,
    DataShareFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (includeRecipientCounts != null)
             'include_recipient_counts': includeRecipientCounts,
           if (includeResources != null) 'include_resources': includeResources,
           if (shareId != null) 'share_id': shareId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareShareSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `associated_recipient_count` attribute.
  TfRef<num> get associatedRecipientCount =>
      TfRef.attribute<num>(this, 'associated_recipient_count');

  /// Reference to `associating_recipient_count` attribute.
  TfRef<num> get associatingRecipientCount =>
      TfRef.attribute<num>(this, 'associating_recipient_count');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `disassociated_recipient_count` attribute.
  TfRef<num> get disassociatedRecipientCount =>
      TfRef.attribute<num>(this, 'disassociated_recipient_count');

  /// Reference to `disassociating_recipient_count` attribute.
  TfRef<num> get disassociatingRecipientCount =>
      TfRef.attribute<num>(this, 'disassociating_recipient_count');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `target_type` attribute.
  TfRef<String> get targetType => TfRef.attribute<String>(this, 'target_type');
}
