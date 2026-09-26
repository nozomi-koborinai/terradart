// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_backup_selection`.
const Set<String> _awsBackupSelectionSensitive = <String>{};

/// Factory wrapper for `aws_backup_selection`.
final class DataAwsBackupSelection extends Data {
  static const String tfType = 'aws_backup_selection';

  DataAwsBackupSelection({
    required super.localName,
    required TfArg<String> planId,
    TfArg<String>? region,
    required TfArg<String> selectionId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'plan_id': planId,
           if (region != null) 'region': region,
           'selection_id': selectionId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBackupSelectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `iam_role_arn` attribute.
  TfRef<String> get iamRoleArn => TfRef.attribute<String>(this, 'iam_role_arn');

  /// Reference to `resources` attribute.
  TfRef<List<String>> get resources =>
      TfRef.attribute<List<String>>(this, 'resources');
}
