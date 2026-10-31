// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_shares`.
const Set<String> _cloudflareSharesSensitive = <String>{};

/// Data Shares enum for `direction`.
extension type const DataSharesDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataSharesDirection.variable(String name) : this._(TfArg.variable(name));
  DataSharesDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataSharesDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataSharesDirection._(TfArgLiteral('asc'));
  static const desc = DataSharesDirection._(TfArgLiteral('desc'));

  static const List<DataSharesDirection> values = [asc, desc];
}

/// Data Shares enum for `kind`.
extension type const DataSharesKind._(TfArg<String> _)
    implements TfArg<String> {
  DataSharesKind.variable(String name) : this._(TfArg.variable(name));
  DataSharesKind.expression(String template)
    : this._(TfArg.expression(template));
  const DataSharesKind.arg(TfArg<String> arg) : this._(arg);

  static const sent = DataSharesKind._(TfArgLiteral('sent'));
  static const received = DataSharesKind._(TfArgLiteral('received'));

  static const List<DataSharesKind> values = [sent, received];
}

/// Data Shares enum for `order`.
extension type const DataSharesOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataSharesOrder.variable(String name) : this._(TfArg.variable(name));
  DataSharesOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataSharesOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataSharesOrder._(TfArgLiteral('name'));
  static const created = DataSharesOrder._(TfArgLiteral('created'));

  static const List<DataSharesOrder> values = [name, created];
}

/// Data Shares enum for `status`.
extension type const DataSharesStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataSharesStatus.variable(String name) : this._(TfArg.variable(name));
  DataSharesStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataSharesStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = DataSharesStatus._(TfArgLiteral('active'));
  static const deleting = DataSharesStatus._(TfArgLiteral('deleting'));
  static const deleted = DataSharesStatus._(TfArgLiteral('deleted'));

  static const List<DataSharesStatus> values = [active, deleting, deleted];
}

/// Data Shares Target enum for `target_type`.
extension type const DataSharesTargetType._(TfArg<String> _)
    implements TfArg<String> {
  DataSharesTargetType.variable(String name) : this._(TfArg.variable(name));
  DataSharesTargetType.expression(String template)
    : this._(TfArg.expression(template));
  const DataSharesTargetType.arg(TfArg<String> arg) : this._(arg);

  static const account = DataSharesTargetType._(TfArgLiteral('account'));
  static const organization = DataSharesTargetType._(
    TfArgLiteral('organization'),
  );

  static const List<DataSharesTargetType> values = [account, organization];
}

/// Factory wrapper for `cloudflare_shares`.
final class DataCloudflareShares extends Data {
  static const String tfType = 'cloudflare_shares';

  DataCloudflareShares(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataSharesDirection? direction,
    TfArg<bool>? includeRecipientCounts,
    TfArg<bool>? includeResources,
    DataSharesKind? kind,
    TfArg<num>? maxItems,
    DataSharesOrder? order,
    TfArg<List<String>>? resourceTypes,
    DataSharesStatus? status,
    TfArg<List<String>>? tag,
    DataSharesTargetType? targetType,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'include_recipient_counts': ?includeRecipientCounts,
           'include_resources': ?includeResources,
           'kind': ?kind,
           'max_items': ?maxItems,
           'order': ?order,
           'resource_types': ?resourceTypes,
           'status': ?status,
           'tag': ?tag,
           'target_type': ?targetType,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSharesSensitive;

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `include_recipient_counts` attribute.
  TfRef<bool> get includeRecipientCounts =>
      TfRef.attribute<bool>(this, 'include_recipient_counts');

  /// Reference to `include_resources` attribute.
  TfRef<bool> get includeResources =>
      TfRef.attribute<bool>(this, 'include_resources');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `resource_types` attribute.
  TfRef<List<String>> get resourceTypes =>
      TfRef.attribute<List<String>>(this, 'resource_types');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tag` attribute.
  TfRef<List<String>> get tag => TfRef.attribute<List<String>>(this, 'tag');

  /// Reference to `target_type` attribute.
  TfRef<String> get targetType => TfRef.attribute<String>(this, 'target_type');
}
