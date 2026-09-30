// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_folder_membership`.
const Set<String> _awsQuicksightFolderMembershipSensitive = <String>{};

/// Quicksight Folder Membership Member enum for `member_type`.
enum QuicksightFolderMembershipMemberType implements TerraformEnum {
  dashboard('DASHBOARD'),
  analysis('ANALYSIS'),
  dataset('DATASET'),
  datasource('DATASOURCE'),
  topic('TOPIC');

  const QuicksightFolderMembershipMemberType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_quicksight_folder_membership`.
final class AwsQuicksightFolderMembership extends Resource {
  static const String tfType = 'aws_quicksight_folder_membership';

  AwsQuicksightFolderMembership({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> folderId,
    required TfArg<String> memberId,
    required TfArg<QuicksightFolderMembershipMemberType> memberType,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'folder_id': folderId,
           'member_id': memberId,
           'member_type': memberType,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightFolderMembershipSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightFolderMembership>`.
  RefTo<AwsQuicksightFolderMembership> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountIdRef =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `folder_id` attribute.
  TfRef<String> get folderIdRef => TfRef.attribute<String>(this, 'folder_id');

  /// Reference to `member_id` attribute.
  TfRef<String> get memberIdRef => TfRef.attribute<String>(this, 'member_id');

  /// Reference to `member_type` attribute.
  TfRef<String> get memberTypeRef =>
      TfRef.attribute<String>(this, 'member_type');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
