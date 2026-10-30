// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_accounts`.
const Set<String> _cloudflareAccountsSensitive = <String>{};

/// Data Accounts enum for `direction`.
extension type const DataAccountsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataAccountsDirection.variable(String name) : this._(TfArg.variable(name));
  DataAccountsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountsDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataAccountsDirection._(TfArgLiteral('asc'));
  static const desc = DataAccountsDirection._(TfArgLiteral('desc'));

  static const List<DataAccountsDirection> values = [asc, desc];
}

/// Factory wrapper for `cloudflare_accounts`.
final class DataCloudflareAccounts extends Data {
  static const String tfType = 'cloudflare_accounts';

  DataCloudflareAccounts(
    super.localName, {
    DataAccountsDirection? direction,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'direction': ?direction,
           'max_items': ?maxItems,
           'name': ?name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');
}
