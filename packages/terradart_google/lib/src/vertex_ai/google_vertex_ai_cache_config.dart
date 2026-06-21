// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_cache_config`.
const Set<String> _googleVertexAiCacheConfigSensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_cache_config`.
final class GoogleVertexAiCacheConfig extends Resource {
  static const String tfType = 'google_vertex_ai_cache_config';

  GoogleVertexAiCacheConfig({
    required super.localName,
    required TfArg<bool> disableCache,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'disable_cache': disableCache,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiCacheConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
