// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_target_group_attachment`.
const Set<String> _awsLbTargetGroupAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_lb_target_group_attachment`.
final class AwsLbTargetGroupAttachment extends Resource {
  static const String tfType = 'aws_lb_target_group_attachment';

  AwsLbTargetGroupAttachment({
    required super.localName,
    TfArg<String>? availabilityZone,
    TfArg<num>? port,
    TfArg<String>? quicServerId,
    TfArg<String>? region,
    required TfArg<String> targetGroupArn,
    required TfArg<String> targetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone': ?availabilityZone,
           'port': ?port,
           'quic_server_id': ?quicServerId,
           'region': ?region,
           'target_group_arn': targetGroupArn,
           'target_id': targetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbTargetGroupAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLbTargetGroupAttachment>`.
  RefTo<AwsLbTargetGroupAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
