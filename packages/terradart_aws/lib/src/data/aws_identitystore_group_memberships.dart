// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_identitystore_group_memberships`.
const Set<String> _awsIdentitystoreGroupMembershipsSensitive = <String>{};

/// Factory wrapper for `aws_identitystore_group_memberships`.
final class DataAwsIdentitystoreGroupMemberships extends Data {
  static const String tfType = 'aws_identitystore_group_memberships';

  DataAwsIdentitystoreGroupMemberships({
    required super.localName,
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
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIdentitystoreGroupMembershipsSensitive;

  /// Reference to `group_memberships` attribute.
  TfRef<List<Map<String, Object?>>> get groupMemberships =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'group_memberships');
}
