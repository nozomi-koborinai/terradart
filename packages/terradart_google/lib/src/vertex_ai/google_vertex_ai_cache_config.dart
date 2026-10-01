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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'disable_cache': disableCache, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiCacheConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiCacheConfig>`.
  RefTo<GoogleVertexAiCacheConfig> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `disable_cache` attribute.
  TfRef<bool> get disableCache => TfRef.attribute<bool>(this, 'disable_cache');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
