// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_folder_membership`.
const Set<String> _awsQuicksightFolderMembershipSensitive = <String>{};

/// Quicksight Folder Membership Member enum for `member_type`.
extension type const QuicksightFolderMembershipMemberType._(TfArg<String> _)
    implements TfArg<String> {
  QuicksightFolderMembershipMemberType.variable(String name)
    : this._(TfArg.variable(name));
  QuicksightFolderMembershipMemberType.expression(String template)
    : this._(TfArg.expression(template));
  const QuicksightFolderMembershipMemberType.arg(TfArg<String> arg)
    : this._(arg);

  static const dashboard = QuicksightFolderMembershipMemberType._(
    TfArgLiteral('DASHBOARD'),
  );
  static const analysis = QuicksightFolderMembershipMemberType._(
    TfArgLiteral('ANALYSIS'),
  );
  static const dataset = QuicksightFolderMembershipMemberType._(
    TfArgLiteral('DATASET'),
  );
  static const datasource = QuicksightFolderMembershipMemberType._(
    TfArgLiteral('DATASOURCE'),
  );
  static const topic = QuicksightFolderMembershipMemberType._(
    TfArgLiteral('TOPIC'),
  );

  static const List<QuicksightFolderMembershipMemberType> values = [
    dashboard,
    analysis,
    dataset,
    datasource,
    topic,
  ];
}

/// Factory wrapper for `aws_quicksight_folder_membership`.
final class AwsQuicksightFolderMembership extends Resource {
  static const String tfType = 'aws_quicksight_folder_membership';

  AwsQuicksightFolderMembership(
    super.localName, {
    TfArg<String>? awsAccountId,
    required TfArg<String> folderId,
    required TfArg<String> memberId,
    required QuicksightFolderMembershipMemberType memberType,
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
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `folder_id` attribute.
  TfRef<String> get folderId => TfRef.attribute<String>(this, 'folder_id');

  /// Reference to `member_id` attribute.
  TfRef<String> get memberId => TfRef.attribute<String>(this, 'member_id');

  /// Reference to `member_type` attribute.
  TfRef<String> get memberType => TfRef.attribute<String>(this, 'member_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
