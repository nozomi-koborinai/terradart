// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fis_experiment_templates`.
const Set<String> _awsFisExperimentTemplatesSensitive = <String>{};

/// Factory wrapper for `aws_fis_experiment_templates`.
final class DataAwsFisExperimentTemplates extends Data {
  static const String tfType = 'aws_fis_experiment_templates';

  DataAwsFisExperimentTemplates({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFisExperimentTemplatesSensitive;

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
