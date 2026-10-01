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
           'configs': ?configs,
           'name': name,
           'partition_count': partitionCount,
           'region': ?region,
           'replication_factor': replicationFactor,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskTopicSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMskTopic>`.
  RefTo<AwsMskTopic> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `configs_actual` attribute.
  TfRef<String> get configsActual =>
      TfRef.attribute<String>(this, 'configs_actual');

  /// Reference to `cluster_arn` attribute.
  TfRef<String> get clusterArn => TfRef.attribute<String>(this, 'cluster_arn');

  /// Reference to `configs` attribute.
  TfRef<String> get configs => TfRef.attribute<String>(this, 'configs');

  /// Reference to `partition_count` attribute.
  TfRef<num> get partitionCount =>
      TfRef.attribute<num>(this, 'partition_count');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `replication_factor` attribute.
  TfRef<num> get replicationFactor =>
      TfRef.attribute<num>(this, 'replication_factor');
}
