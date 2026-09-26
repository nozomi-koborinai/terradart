// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_topic`.
const Set<String> _awsMskTopicSensitive = <String>{};

/// Factory wrapper for `aws_msk_topic`.
final class AwsMskTopic extends Resource {
  static const String tfType = 'aws_msk_topic';

  AwsMskTopic({
    required super.localName,
    required TfArg<String> clusterArn,
    TfArg<String>? configs,
    required TfArg<String> name,
    required TfArg<num> partitionCount,
    TfArg<String>? region,
    required TfArg<num> replicationFactor,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_arn': clusterArn,
           if (configs != null) 'configs': configs,
           'name': name,
           'partition_count': partitionCount,
           if (region != null) 'region': region,
           'replication_factor': replicationFactor,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskTopicSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `configs_actual` attribute.
  TfRef<String> get configsActual =>
      TfRef.attribute<String>(this, 'configs_actual');
}
