// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_autoscaling_attachment`.
const Set<String> _awsAutoscalingAttachmentSensitive = <String>{};

/// Exactly one of `elb`, `lb_target_group_arn` on `aws_autoscaling_attachment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.elb(...)`.
sealed class AutoscalingAttachmentElbOrLbTargetGroupArn {
  const AutoscalingAttachmentElbOrLbTargetGroupArn();

  /// Sets `elb`.
  const factory AutoscalingAttachmentElbOrLbTargetGroupArn.elb(
    TfArg<String> elb,
  ) = AutoscalingAttachmentElbOrLbTargetGroupArnElb;

  /// Sets `lb_target_group_arn`.
  const factory AutoscalingAttachmentElbOrLbTargetGroupArn.lbTargetGroupArn(
    TfArg<String> lbTargetGroupArn,
  ) = AutoscalingAttachmentElbOrLbTargetGroupArnLbTargetGroupArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AutoscalingAttachmentElbOrLbTargetGroupArn.elb] choice: sets `elb`.
final class AutoscalingAttachmentElbOrLbTargetGroupArnElb
    extends AutoscalingAttachmentElbOrLbTargetGroupArn {
  const AutoscalingAttachmentElbOrLbTargetGroupArnElb(this.elb);

  final TfArg<String> elb;

  @override
  String get blockKey => 'elb';

  @override
  Map<String, Object?> encode() => {'elb': elb.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'elb': elb};
}

/// The [AutoscalingAttachmentElbOrLbTargetGroupArn.lbTargetGroupArn] choice: sets `lb_target_group_arn`.
final class AutoscalingAttachmentElbOrLbTargetGroupArnLbTargetGroupArn
    extends AutoscalingAttachmentElbOrLbTargetGroupArn {
  const AutoscalingAttachmentElbOrLbTargetGroupArnLbTargetGroupArn(
    this.lbTargetGroupArn,
  );

  final TfArg<String> lbTargetGroupArn;

  @override
  String get blockKey => 'lb_target_group_arn';

  @override
  Map<String, Object?> encode() => {
    'lb_target_group_arn': lbTargetGroupArn.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'lb_target_group_arn': lbTargetGroupArn,
  };
}

/// Factory wrapper for `aws_autoscaling_attachment`.
final class AwsAutoscalingAttachment extends Resource {
  static const String tfType = 'aws_autoscaling_attachment';

  AwsAutoscalingAttachment({
    required super.localName,
    required TfArg<String> autoscalingGroupName,
    required AutoscalingAttachmentElbOrLbTargetGroupArn elbOrLbTargetGroupArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'autoscaling_group_name': autoscalingGroupName,
           ...elbOrLbTargetGroupArn.argMap,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAutoscalingAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAutoscalingAttachment>`.
  RefTo<AwsAutoscalingAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
