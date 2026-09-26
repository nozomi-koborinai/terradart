// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emrcontainers_virtual_cluster`.
const Set<String> _awsEmrcontainersVirtualClusterSensitive = <String>{};

/// Factory wrapper for `aws_emrcontainers_virtual_cluster`.
final class DataAwsEmrcontainersVirtualCluster extends Data {
  static const String tfType = 'aws_emrcontainers_virtual_cluster';

  DataAwsEmrcontainersVirtualCluster({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualClusterId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'virtual_cluster_id': virtualClusterId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrcontainersVirtualClusterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `container_provider` attribute.
  TfRef<List<Map<String, Object?>>> get containerProvider =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'container_provider');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
