// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigtable/google_bigtable_instance.dart' show GoogleBigtableInstance;

/// Sensitive field paths for `google_bigtable_memory_layer`.
const Set<String> _googleBigtableMemoryLayerSensitive = <String>{};

/// Factory wrapper for `google_bigtable_memory_layer`.
///
/// Enables and manages the memory layer for a Cloud Bigtable cluster.
///
/// Creation of this resource enables the memory layer on the specified cluster
/// (`ENTERPRISE_PLUS` and `SSD` storage type required). Destruction of this
/// resource disables the memory layer on the cluster.
final class GoogleBigtableMemoryLayer extends Resource {
  static const String tfType = 'google_bigtable_memory_layer';

  GoogleBigtableMemoryLayer(
    super.localName, {
    required TfArg<String> cluster,
    TfArg<String>? deletionPolicy,
    required RefTo<GoogleBigtableInstance> instance,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster': cluster,
           'deletion_policy': ?deletionPolicy,
           'instance': instance.encodeAs('name'),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableMemoryLayerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableMemoryLayer>`.
  RefTo<GoogleBigtableMemoryLayer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `memory_config` attribute.
  TfRef<List<Map<String, Object?>>> get memoryConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'memory_config');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
