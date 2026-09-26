// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_folder_membership`.
const Set<String> _awsQuicksightFolderMembershipSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_folder_membership`.
final class AwsQuicksightFolderMembership extends Resource {
  static const String tfType = 'aws_quicksight_folder_membership';

  AwsQuicksightFolderMembership({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> folderId,
    required TfArg<String> memberId,
    required TfArg<String> memberType,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'folder_id': folderId,
           'member_id': memberId,
           'member_type': memberType,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightFolderMembershipSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
