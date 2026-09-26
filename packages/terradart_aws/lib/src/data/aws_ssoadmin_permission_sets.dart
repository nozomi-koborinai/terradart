// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_permission_sets`.
const Set<String> _awsSsoadminPermissionSetsSensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_permission_sets`.
final class DataAwsSsoadminPermissionSets extends Data {
  static const String tfType = 'aws_ssoadmin_permission_sets';

  DataAwsSsoadminPermissionSets({
    required super.localName,
    required TfArg<String> instanceArn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_arn': instanceArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminPermissionSetsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');
}
