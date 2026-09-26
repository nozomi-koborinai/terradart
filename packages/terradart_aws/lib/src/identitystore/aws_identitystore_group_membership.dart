// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_identitystore_group_membership`.
const Set<String> _awsIdentitystoreGroupMembershipSensitive = <String>{};

/// Factory wrapper for `aws_identitystore_group_membership`.
final class AwsIdentitystoreGroupMembership extends Resource {
  static const String tfType = 'aws_identitystore_group_membership';

  AwsIdentitystoreGroupMembership({
    required super.localName,
    required TfArg<String> groupId,
    required TfArg<String> identityStoreId,
    required TfArg<String> memberId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group_id': groupId,
           'identity_store_id': identityStoreId,
           'member_id': memberId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIdentitystoreGroupMembershipSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `membership_id` attribute.
  TfRef<String> get membershipId =>
      TfRef.attribute<String>(this, 'membership_id');
}
