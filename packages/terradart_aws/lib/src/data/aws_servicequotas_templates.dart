// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicequotas_templates`.
const Set<String> _awsServicequotasTemplatesSensitive = <String>{};

/// Factory wrapper for `aws_servicequotas_templates`.
final class DataAwsServicequotasTemplates extends Data {
  static const String tfType = 'aws_servicequotas_templates';

  DataAwsServicequotasTemplates({
    required super.localName,
    TfArg<String>? awsRegion,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsRegion != null) 'aws_region': awsRegion,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicequotasTemplatesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `templates` attribute.
  TfRef<List<Map<String, Object?>>> get templates =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'templates');
}
