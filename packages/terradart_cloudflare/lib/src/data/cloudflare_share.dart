// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../share/cloudflare_share.dart';

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

  final TfArg<DataShareFilterDirection>? direction;

  final TfArg<DataShareFilterKind>? kind;

  final TfArg<DataShareFilterOrder>? order;

  final TfArg<List<Object?>>? resourceTypes;

  final TfArg<DataShareFilterStatus>? status;

  final TfArg<List<Object?>>? tag;

  final TfArg<DataShareFilterTargetType>? targetType;

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

/// `direction` — derived from the provider schema description.
enum DataShareFilterDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataShareFilterDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `kind` — derived from the provider schema description.
enum DataShareFilterKind implements TerraformEnum {
  sent('sent'),
  received('received');

  const DataShareFilterKind(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order` — derived from the provider schema description.
enum DataShareFilterOrder implements TerraformEnum {
  name('name'),
  created('created');

  const DataShareFilterOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// `status` — derived from the provider schema description.
enum DataShareFilterStatus implements TerraformEnum {
  active('active'),
  deleting('deleting'),
  deleted('deleted');

  const DataShareFilterStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// `target_type` — derived from the provider schema description.
enum DataShareFilterTargetType implements TerraformEnum {
  account('account'),
  organization('organization');

  const DataShareFilterTargetType(this.terraformValue);
  @override
  final String terraformValue;
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
    super.provider,
    super.timeouts,
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

  /// A reference to the `cloudflare_share` this data source reads, for
  /// arguments typed `RefTo<CloudflareShare>`.
  RefTo<CloudflareShare> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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
