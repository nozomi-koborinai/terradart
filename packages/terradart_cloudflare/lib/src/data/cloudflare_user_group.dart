// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../user/cloudflare_user_group.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_user_group`.
const Set<String> _cloudflareUserGroupSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_user_group` (derived from provider schema).
@immutable
final class DataUserGroupFilter {
  const DataUserGroupFilter({
    this.direction,
    this.fuzzyName,
    this.id,
    this.name,
  });

  final TfArg<DataUserGroupDirection>? direction;

  final TfArg<String>? fuzzyName;

  final TfArg<String>? id;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'fuzzy_name': ?fuzzyName?.toTfJson(),
    'id': ?id?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataUserGroupDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataUserGroupDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_user_group`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class DataCloudflareUserGroup extends Data {
  static const String tfType = 'cloudflare_user_group';

  DataCloudflareUserGroup({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? userGroupId,
    DataUserGroupFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'user_group_id': ?userGroupId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserGroupSensitive;

  /// A reference to the `cloudflare_user_group` this data source reads, for
  /// arguments typed `RefTo<CloudflareUserGroup>`.
  RefTo<CloudflareUserGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `user_group_id` attribute.
  TfRef<String> get userGroupId =>
      TfRef.attribute<String>(this, 'user_group_id');
}
