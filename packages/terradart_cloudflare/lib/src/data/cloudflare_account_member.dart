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

  final TfArg<DataAccountMemberFilterDirection>? direction;

  final TfArg<DataAccountMemberFilterOrder>? order;

  final TfArg<DataAccountMemberFilterStatus>? status;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'order': ?order?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataAccountMemberFilterDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataAccountMemberFilterDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order` — derived from the provider schema description.
enum DataAccountMemberFilterOrder implements TerraformEnum {
  userFirstName('user.first_name'),
  userLastName('user.last_name'),
  userEmail('user.email'),
  status('status');

  const DataAccountMemberFilterOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// `status` — derived from the provider schema description.
enum DataAccountMemberFilterStatus implements TerraformEnum {
  accepted('accepted'),
  pending('pending'),
  rejected('rejected');

  const DataAccountMemberFilterStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_account_member`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class DataCloudflareAccountMember extends Data {
  static const String tfType = 'cloudflare_account_member';

  DataCloudflareAccountMember({
    required super.localName,
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
}
