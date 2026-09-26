// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_inspector2_member_association`.
const Set<String> _awsInspector2MemberAssociationSensitive = <String>{};

/// Factory wrapper for `aws_inspector2_member_association`.
final class AwsInspector2MemberAssociation extends Resource {
  static const String tfType = 'aws_inspector2_member_association';

  AwsInspector2MemberAssociation({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInspector2MemberAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `delegated_admin_account_id` attribute.
  TfRef<String> get delegatedAdminAccountId =>
      TfRef.attribute<String>(this, 'delegated_admin_account_id');

  /// Reference to `relationship_status` attribute.
  TfRef<String> get relationshipStatus =>
      TfRef.attribute<String>(this, 'relationship_status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
