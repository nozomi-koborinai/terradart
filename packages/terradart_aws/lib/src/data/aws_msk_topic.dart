// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../msk/aws_msk_topic.dart';

/// Sensitive field paths for `aws_msk_topic`.
const Set<String> _awsMskTopicSensitive = <String>{};

/// Factory wrapper for `aws_msk_topic`.
final class DataAwsMskTopic extends Data {
  static const String tfType = 'aws_msk_topic';

  DataAwsMskTopic({
    required super.localName,
    required TfArg<String> clusterArn,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'cluster_arn': clusterArn, 'name': name, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsMskTopicSensitive;

  /// A reference to the `aws_msk_topic` this data source reads, for
  /// arguments typed `RefTo<AwsMskTopic>`.
  RefTo<AwsMskTopic> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `configs` attribute.
  TfRef<String> get configs => TfRef.attribute<String>(this, 'configs');

  /// Reference to `partition_count` attribute.
  TfRef<num> get partitionCount =>
      TfRef.attribute<num>(this, 'partition_count');

  /// Reference to `replication_factor` attribute.
  TfRef<num> get replicationFactor =>
      TfRef.attribute<num>(this, 'replication_factor');

  /// Reference to `cluster_arn` attribute.
  TfRef<String> get clusterArnRef =>
      TfRef.attribute<String>(this, 'cluster_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
