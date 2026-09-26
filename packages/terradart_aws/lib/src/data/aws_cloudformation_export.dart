// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudformation_export`.
const Set<String> _awsCloudformationExportSensitive = <String>{};

/// Factory wrapper for `aws_cloudformation_export`.
final class DataAwsCloudformationExport extends Data {
  static const String tfType = 'aws_cloudformation_export';

  DataAwsCloudformationExport({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsCloudformationExportSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `exporting_stack_id` attribute.
  TfRef<String> get exportingStackId =>
      TfRef.attribute<String>(this, 'exporting_stack_id');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
