// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_user_groups`.
const Set<String> _cloudflareUserGroupsSensitive = <String>{};

/// Data User Groups enum for `direction`.
extension type const DataUserGroupsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataUserGroupsDirection.variable(String name) : this._(TfArg.variable(name));
  DataUserGroupsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataUserGroupsDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataUserGroupsDirection._(TfArgLiteral('asc'));
  static const desc = DataUserGroupsDirection._(TfArgLiteral('desc'));

  static const List<DataUserGroupsDirection> values = [asc, desc];
}

/// Factory wrapper for `cloudflare_user_groups`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class DataCloudflareUserGroups extends Data {
  static const String tfType = 'cloudflare_user_groups';

  DataCloudflareUserGroups(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    DataUserGroupsDirection? direction,
    TfArg<String>? fuzzyName,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'fuzzy_name': ?fuzzyName,
           'max_items': ?maxItems,
           'name': ?name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserGroupsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `fuzzy_name` attribute.
  TfRef<String> get fuzzyName => TfRef.attribute<String>(this, 'fuzzy_name');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');
}
