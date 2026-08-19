// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_model_garden_enable_model`.
const Set<String> _googleVertexAiModelGardenEnableModelSensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_model_garden_enable_model`.
final class GoogleVertexAiModelGardenEnableModel extends Resource {
  static const String tfType = 'google_vertex_ai_model_garden_enable_model';

  GoogleVertexAiModelGardenEnableModel({
    required super.localName,
    TfArg<String>? project,
    required TfArg<String> publisherModelName,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (project != null) 'project': project,
           'publisher_model_name': publisherModelName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiModelGardenEnableModelSensitive;
}
