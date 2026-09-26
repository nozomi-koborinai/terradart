// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_autoscaling_group_tag`.
const Set<String> _awsAutoscalingGroupTagSensitive = <String>{};

/// Typed helper for the `tag` block of
/// `aws_autoscaling_group_tag` (derived from provider schema).
@immutable
final class AutoscalingGroupTagTag {
  const AutoscalingGroupTagTag({
    required this.key,
    required this.propagateAtLaunch,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<bool> propagateAtLaunch;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'propagate_at_launch': propagateAtLaunch.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_autoscaling_group_tag`.
final class AwsAutoscalingGroupTag extends Resource {
  static const String tfType = 'aws_autoscaling_group_tag';

  AwsAutoscalingGroupTag({
    required super.localName,
    required TfArg<String> autoscalingGroupName,
    TfArg<String>? region,
    required AutoscalingGroupTagTag tag,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'autoscaling_group_name': autoscalingGroupName,
           if (region != null) 'region': region,
           'tag': TfArg.literal(tag.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingGroupTagSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
