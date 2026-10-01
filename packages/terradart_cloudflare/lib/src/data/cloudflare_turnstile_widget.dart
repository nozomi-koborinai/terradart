// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../turnstile/cloudflare_turnstile_widget.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_turnstile_widget`.
const Set<String> _cloudflareTurnstileWidgetSensitive = <String>{'secret'};

/// Typed helper for the `filter` block of
/// `cloudflare_turnstile_widget` (derived from provider schema).
@immutable
final class DataTurnstileWidgetFilter {
  const DataTurnstileWidgetFilter({this.direction, this.filter, this.order});

  final DataTurnstileWidgetDirection? direction;

  final TfArg<String>? filter;

  final DataTurnstileWidgetOrder? order;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'filter': ?filter?.toTfJson(),
    'order': ?order?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataTurnstileWidgetDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataTurnstileWidgetDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataTurnstileWidgetDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataTurnstileWidgetDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataTurnstileWidgetDirection._(TfArgLiteral('asc'));
  static const desc = DataTurnstileWidgetDirection._(TfArgLiteral('desc'));

  static const List<DataTurnstileWidgetDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataTurnstileWidgetOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataTurnstileWidgetOrder.variable(String name) : this._(TfArg.variable(name));
  DataTurnstileWidgetOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataTurnstileWidgetOrder.arg(TfArg<String> arg) : this._(arg);

  static const id = DataTurnstileWidgetOrder._(TfArgLiteral('id'));
  static const sitekey = DataTurnstileWidgetOrder._(TfArgLiteral('sitekey'));
  static const name = DataTurnstileWidgetOrder._(TfArgLiteral('name'));
  static const createdOn = DataTurnstileWidgetOrder._(
    TfArgLiteral('created_on'),
  );
  static const modifiedOn = DataTurnstileWidgetOrder._(
    TfArgLiteral('modified_on'),
  );

  static const List<DataTurnstileWidgetOrder> values = [
    id,
    sitekey,
    name,
    createdOn,
    modifiedOn,
  ];
}

/// Factory wrapper for `cloudflare_turnstile_widget`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `Turnstile Sites
/// Read` - `Turnstile Sites Write`
final class DataCloudflareTurnstileWidget extends Data {
  static const String tfType = 'cloudflare_turnstile_widget';

  DataCloudflareTurnstileWidget(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? sitekey,
    DataTurnstileWidgetFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'sitekey': ?sitekey,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTurnstileWidgetSensitive;

  /// A reference to the `cloudflare_turnstile_widget` this data source reads, for
  /// arguments typed `RefTo<CloudflareTurnstileWidget>`.
  RefTo<CloudflareTurnstileWidget> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bot_fight_mode` attribute.
  TfRef<bool> get botFightMode => TfRef.attribute<bool>(this, 'bot_fight_mode');

  /// Reference to `clearance_level` attribute.
  TfRef<String> get clearanceLevel =>
      TfRef.attribute<String>(this, 'clearance_level');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `deployed_via` attribute.
  TfRef<String> get deployedVia =>
      TfRef.attribute<String>(this, 'deployed_via');

  /// Reference to `domains` attribute.
  TfRef<List<String>> get domains =>
      TfRef.attribute<List<String>>(this, 'domains');

  /// Reference to `ephemeral_id` attribute.
  TfRef<bool> get ephemeralId => TfRef.attribute<bool>(this, 'ephemeral_id');

  /// Reference to `last_modified_via` attribute.
  TfRef<String> get lastModifiedVia =>
      TfRef.attribute<String>(this, 'last_modified_via');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `offlabel` attribute.
  TfRef<bool> get offlabel => TfRef.attribute<bool>(this, 'offlabel');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `sitekey` attribute.
  TfRef<String> get sitekey => TfRef.attribute<String>(this, 'sitekey');
}
