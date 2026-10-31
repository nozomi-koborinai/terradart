// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_account_members`.
const Set<String> _cloudflareAccountMembersSensitive = <String>{};

/// Data Account Members enum for `direction`.
extension type const DataAccountMembersDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataAccountMembersDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataAccountMembersDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountMembersDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataAccountMembersDirection._(TfArgLiteral('asc'));
  static const desc = DataAccountMembersDirection._(TfArgLiteral('desc'));

  static const List<DataAccountMembersDirection> values = [asc, desc];
}

/// Data Account Members enum for `order`.
extension type const DataAccountMembersOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataAccountMembersOrder.variable(String name) : this._(TfArg.variable(name));
  DataAccountMembersOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountMembersOrder.arg(TfArg<String> arg) : this._(arg);

  static const userFirstName = DataAccountMembersOrder._(
    TfArgLiteral('user.first_name'),
  );
  static const userLastName = DataAccountMembersOrder._(
    TfArgLiteral('user.last_name'),
  );
  static const userEmail = DataAccountMembersOrder._(
    TfArgLiteral('user.email'),
  );
  static const status = DataAccountMembersOrder._(TfArgLiteral('status'));

  static const List<DataAccountMembersOrder> values = [
    userFirstName,
    userLastName,
    userEmail,
    status,
  ];
}

/// Data Account Members enum for `status`.
extension type const DataAccountMembersStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataAccountMembersStatus.variable(String name) : this._(TfArg.variable(name));
  DataAccountMembersStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountMembersStatus.arg(TfArg<String> arg) : this._(arg);

  static const accepted = DataAccountMembersStatus._(TfArgLiteral('accepted'));
  static const pending = DataAccountMembersStatus._(TfArgLiteral('pending'));
  static const rejected = DataAccountMembersStatus._(TfArgLiteral('rejected'));

  static const List<DataAccountMembersStatus> values = [
    accepted,
    pending,
    rejected,
  ];
}

/// Factory wrapper for `cloudflare_account_members`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class DataCloudflareAccountMembers extends Data {
  static const String tfType = 'cloudflare_account_members';

  DataCloudflareAccountMembers(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataAccountMembersDirection? direction,
    TfArg<num>? maxItems,
    DataAccountMembersOrder? order,
    DataAccountMembersStatus? status,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountMembersSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
