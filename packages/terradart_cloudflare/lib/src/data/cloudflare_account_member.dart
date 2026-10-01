// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account_member.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_account_member`.
const Set<String> _cloudflareAccountMemberSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_account_member` (derived from provider schema).
@immutable
final class DataAccountMemberFilter {
  const DataAccountMemberFilter({this.direction, this.order, this.status});

  final DataAccountMemberDirection? direction;

  final DataAccountMemberOrder? order;

  final DataAccountMemberFilterStatus? status;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'order': ?order?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataAccountMemberDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataAccountMemberDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataAccountMemberDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountMemberDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataAccountMemberDirection._(TfArgLiteral('asc'));
  static const desc = DataAccountMemberDirection._(TfArgLiteral('desc'));

  static const List<DataAccountMemberDirection> values = [asc, desc];
}

/// `order` — derived from the provider schema description.
extension type const DataAccountMemberOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataAccountMemberOrder.variable(String name) : this._(TfArg.variable(name));
  DataAccountMemberOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountMemberOrder.arg(TfArg<String> arg) : this._(arg);

  static const userFirstName = DataAccountMemberOrder._(
    TfArgLiteral('user.first_name'),
  );
  static const userLastName = DataAccountMemberOrder._(
    TfArgLiteral('user.last_name'),
  );
  static const userEmail = DataAccountMemberOrder._(TfArgLiteral('user.email'));
  static const status = DataAccountMemberOrder._(TfArgLiteral('status'));

  static const List<DataAccountMemberOrder> values = [
    userFirstName,
    userLastName,
    userEmail,
    status,
  ];
}

/// `status` — derived from the provider schema description.
extension type const DataAccountMemberFilterStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataAccountMemberFilterStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataAccountMemberFilterStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountMemberFilterStatus.arg(TfArg<String> arg) : this._(arg);

  static const accepted = DataAccountMemberFilterStatus._(
    TfArgLiteral('accepted'),
  );
  static const pending = DataAccountMemberFilterStatus._(
    TfArgLiteral('pending'),
  );
  static const rejected = DataAccountMemberFilterStatus._(
    TfArgLiteral('rejected'),
  );

  static const List<DataAccountMemberFilterStatus> values = [
    accepted,
    pending,
    rejected,
  ];
}

/// Factory wrapper for `cloudflare_account_member`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class DataCloudflareAccountMember extends Data {
  static const String tfType = 'cloudflare_account_member';

  DataCloudflareAccountMember(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? memberId,
    DataAccountMemberFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'member_id': ?memberId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountMemberSensitive;

  /// A reference to the `cloudflare_account_member` this data source reads, for
  /// arguments typed `RefTo<CloudflareAccountMember>`.
  RefTo<CloudflareAccountMember> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `member_id` attribute.
  TfRef<String> get memberId => TfRef.attribute<String>(this, 'member_id');
}
