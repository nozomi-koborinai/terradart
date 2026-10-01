// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../backup/aws_backup_selection.dart';

/// Sensitive field paths for `aws_backup_selection`.
const Set<String> _awsBackupSelectionSensitive = <String>{};

/// Factory wrapper for `aws_backup_selection`.
final class DataAwsBackupSelection extends Data {
  static const String tfType = 'aws_backup_selection';

  DataAwsBackupSelection(
    super.localName, {
    required TfArg<String> planId,
    TfArg<String>? region,
    required TfArg<String> selectionId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'plan_id': planId,
           'region': ?region,
           'selection_id': selectionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupSelectionSensitive;

  /// A reference to the `aws_backup_selection` this data source reads, for
  /// arguments typed `RefTo<AwsBackupSelection>`.
  RefTo<AwsBackupSelection> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArn => TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `resources` attribute.
  TfRef<List<String>> get resources =>
      TfRef.attribute<List<String>>(this, 'resources');

  /// Reference to `plan_id` attribute.
  TfRef<String> get planId => TfRef.attribute<String>(this, 'plan_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `selection_id` attribute.
  TfRef<String> get selectionId =>
      TfRef.attribute<String>(this, 'selection_id');
}
