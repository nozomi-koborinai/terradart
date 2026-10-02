// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../share/cloudflare_share.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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

  final DataShareDirection? direction;

  final DataShareFilterKind? kind;

  final DataShareOrder? order;

  final TfArg<List<String>>? resourceTypes;

  final DataShareFilterStatus? status;

  final TfArg<List<String>>? tag;

  final DataShareFilterTargetType? targetType;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'kind': ?kind?.toTfJson(),
    'order': ?order?.toTfJson(),
    'resource_types': ?resourceTypes?.toTfJson(),
    'status': ?status?.toTfJson(),
    'tag': ?tag?.toTfJson(),
    'target_type': ?targetType?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataShareDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataShareDirection.variable(String name) : this._(TfArg.variable(name));
  DataShareDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataShareDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataShareDirection._(TfArgLiteral('asc'));
  static const desc = DataShareDirection._(TfArgLiteral('desc'));

  static const List<DataShareDirection> values = [asc, desc];
}

/// `kind` — derived from the provider schema description.
extension type const DataShareFilterKind._(TfArg<String> _)
    implements TfArg<String> {
  DataShareFilterKind.variable(String name) : this._(TfArg.variable(name));
  DataShareFilterKind.expression(String template)
    : this._(TfArg.expression(template));
  const DataShareFilterKind.arg(TfArg<String> arg) : this._(arg);

  static const sent = DataShareFilterKind._(TfArgLiteral('sent'));
  static const received = DataShareFilterKind._(TfArgLiteral('received'));

  static const List<DataShareFilterKind> values = [sent, received];
}

/// `order` — derived from the provider schema description.
extension type const DataShareOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataShareOrder.variable(String name) : this._(TfArg.variable(name));
  DataShareOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataShareOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataShareOrder._(TfArgLiteral('name'));
  static const created = DataShareOrder._(TfArgLiteral('created'));

  static const List<DataShareOrder> values = [name, created];
}

/// `status` — derived from the provider schema description.
extension type const DataShareFilterStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataShareFilterStatus.variable(String name) : this._(TfArg.variable(name));
  DataShareFilterStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataShareFilterStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = DataShareFilterStatus._(TfArgLiteral('active'));
  static const deleting = DataShareFilterStatus._(TfArgLiteral('deleting'));
  static const deleted = DataShareFilterStatus._(TfArgLiteral('deleted'));

  static const List<DataShareFilterStatus> values = [active, deleting, deleted];
}

/// `target_type` — derived from the provider schema description.
extension type const DataShareFilterTargetType._(TfArg<String> _)
    implements TfArg<String> {
  DataShareFilterTargetType.variable(String name)
    : this._(TfArg.variable(name));
  DataShareFilterTargetType.expression(String template)
    : this._(TfArg.expression(template));
  const DataShareFilterTargetType.arg(TfArg<String> arg) : this._(arg);

  static const account = DataShareFilterTargetType._(TfArgLiteral('account'));
  static const organization = DataShareFilterTargetType._(
    TfArgLiteral('organization'),
  );

  static const List<DataShareFilterTargetType> values = [account, organization];
}

/// Factory wrapper for `cloudflare_share`.
final class DataCloudflareShare extends Data {
  static const String tfType = 'cloudflare_share';

  DataCloudflareShare(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? includeRecipientCounts,
    TfArg<bool>? includeResources,
    TfArg<String>? shareId,
    DataShareFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'include_recipient_counts': ?includeRecipientCounts,
           'include_resources': ?includeResources,
           'share_id': ?shareId,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `include_recipient_counts` attribute.
  TfRef<bool> get includeRecipientCounts =>
      TfRef.attribute<bool>(this, 'include_recipient_counts');

  /// Reference to `include_resources` attribute.
  TfRef<bool> get includeResources =>
      TfRef.attribute<bool>(this, 'include_resources');

  /// Reference to `share_id` attribute.
  TfRef<String> get shareId => TfRef.attribute<String>(this, 'share_id');
}
