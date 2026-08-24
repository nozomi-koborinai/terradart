// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String>? direction;

  final TfArg<String>? fuzzyName;

  final TfArg<String>? id;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (fuzzyName != null) 'fuzzy_name': fuzzyName!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
  };
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
    required TfArg<String> accountId,
    TfArg<String>? userGroupId,
    DataUserGroupFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (userGroupId != null) 'user_group_id': userGroupId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
