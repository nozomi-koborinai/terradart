// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_autoscaling_traffic_source_attachment`.
const Set<String> _awsAutoscalingTrafficSourceAttachmentSensitive = <String>{};

/// Typed helper for the `traffic_source` block of
/// `aws_autoscaling_traffic_source_attachment` (derived from provider schema).
@immutable
final class AutoscalingTrafficSourceAttachmentTrafficSource {
  const AutoscalingTrafficSourceAttachmentTrafficSource({
    required this.identifier,
    required this.type,
  });

  final TfArg<String> identifier;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'identifier': identifier.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_autoscaling_traffic_source_attachment`.
final class AwsAutoscalingTrafficSourceAttachment extends Resource {
  static const String tfType = 'aws_autoscaling_traffic_source_attachment';

  AwsAutoscalingTrafficSourceAttachment({
    required super.localName,
    required TfArg<String> autoscalingGroupName,
    TfArg<String>? region,
    AutoscalingTrafficSourceAttachmentTrafficSource? trafficSource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'autoscaling_group_name': autoscalingGroupName,
           'region': ?region,
           if (trafficSource != null)
             'traffic_source': TfArg.literal(trafficSource.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAutoscalingTrafficSourceAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAutoscalingTrafficSourceAttachment>`.
  RefTo<AwsAutoscalingTrafficSourceAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `autoscaling_group_name` attribute.
  TfRef<String> get autoscalingGroupNameRef =>
      TfRef.attribute<String>(this, 'autoscaling_group_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
