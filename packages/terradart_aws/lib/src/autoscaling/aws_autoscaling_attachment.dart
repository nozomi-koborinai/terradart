// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_autoscaling_attachment`.
const Set<String> _awsAutoscalingAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_autoscaling_attachment`.
final class AwsAutoscalingAttachment extends Resource {
  static const String tfType = 'aws_autoscaling_attachment';

  AwsAutoscalingAttachment({
    required super.localName,
    required TfArg<String> autoscalingGroupName,
    TfArg<String>? elb,
    TfArg<String>? lbTargetGroupArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'autoscaling_group_name': autoscalingGroupName,
           if (elb != null) 'elb': elb,
           if (lbTargetGroupArn != null)
             'lb_target_group_arn': lbTargetGroupArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
