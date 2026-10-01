// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_identitystore_group_memberships`.
const Set<String> _awsIdentitystoreGroupMembershipsSensitive = <String>{};

/// Factory wrapper for `aws_identitystore_group_memberships`.
final class DataAwsIdentitystoreGroupMemberships extends Data {
  static const String tfType = 'aws_identitystore_group_memberships';

  DataAwsIdentitystoreGroupMemberships(
    super.localName, {
    required TfArg<String> groupId,
    required TfArg<String> identityStoreId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group_id': groupId,
           'identity_store_id': identityStoreId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIdentitystoreGroupMembershipsSensitive;

  /// Reference to `group_memberships` attribute.
  TfRef<List<Map<String, Object?>>> get groupMemberships =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'group_memberships');

  /// Reference to `group_id` attribute.
  TfRef<String> get groupId => TfRef.attribute<String>(this, 'group_id');

  /// Reference to `identity_store_id` attribute.
  TfRef<String> get identityStoreId =>
      TfRef.attribute<String>(this, 'identity_store_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
