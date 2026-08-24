// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_member`.
const Set<String> _cloudflareAccountMemberSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_account_member` (derived from provider schema).
@immutable
final class DataAccountMemberFilter {
  const DataAccountMemberFilter({this.direction, this.order, this.status});

  final TfArg<String>? direction;

  final TfArg<String>? order;

  final TfArg<String>? status;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
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
    TfArg<String>? accountId,
    TfArg<String>? memberId,
    DataAccountMemberFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (memberId != null) 'member_id': memberId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccountMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
