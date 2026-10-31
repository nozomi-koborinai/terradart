// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_turnstile_widgets`.
const Set<String> _cloudflareTurnstileWidgetsSensitive = <String>{};

/// Data Turnstile Widgets enum for `direction`.
extension type const DataTurnstileWidgetsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataTurnstileWidgetsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataTurnstileWidgetsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataTurnstileWidgetsDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataTurnstileWidgetsDirection._(TfArgLiteral('asc'));
  static const desc = DataTurnstileWidgetsDirection._(TfArgLiteral('desc'));

  static const List<DataTurnstileWidgetsDirection> values = [asc, desc];
}

/// Data Turnstile Widgets enum for `order`.
extension type const DataTurnstileWidgetsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataTurnstileWidgetsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataTurnstileWidgetsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataTurnstileWidgetsOrder.arg(TfArg<String> arg) : this._(arg);

  static const id = DataTurnstileWidgetsOrder._(TfArgLiteral('id'));
  static const sitekey = DataTurnstileWidgetsOrder._(TfArgLiteral('sitekey'));
  static const name = DataTurnstileWidgetsOrder._(TfArgLiteral('name'));
  static const createdOn = DataTurnstileWidgetsOrder._(
    TfArgLiteral('created_on'),
  );
  static const modifiedOn = DataTurnstileWidgetsOrder._(
    TfArgLiteral('modified_on'),
  );

  static const List<DataTurnstileWidgetsOrder> values = [
    id,
    sitekey,
    name,
    createdOn,
    modifiedOn,
  ];
}

/// Factory wrapper for `cloudflare_turnstile_widgets`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `Turnstile Sites
/// Read` - `Turnstile Sites Write`
final class DataCloudflareTurnstileWidgets extends Data {
  static const String tfType = 'cloudflare_turnstile_widgets';

  DataCloudflareTurnstileWidgets(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataTurnstileWidgetsDirection? direction,
    TfArg<String>? filter,
    TfArg<num>? maxItems,
    DataTurnstileWidgetsOrder? order,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'filter': ?filter,
           'max_items': ?maxItems,
           'order': ?order,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareTurnstileWidgetsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');
}
