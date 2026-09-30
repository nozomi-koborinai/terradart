// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_alb_target_group_attachment`.
const Set<String> _awsAlbTargetGroupAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_alb_target_group_attachment`.
final class AwsAlbTargetGroupAttachment extends Resource {
  static const String tfType = 'aws_alb_target_group_attachment';

  AwsAlbTargetGroupAttachment({
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
  Set<String> get sensitiveFields => _awsAlbTargetGroupAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAlbTargetGroupAttachment>`.
  RefTo<AwsAlbTargetGroupAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZoneRef =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `port` attribute.
  TfRef<num> get portRef => TfRef.attribute<num>(this, 'port');

  /// Reference to `quic_server_id` attribute.
  TfRef<String> get quicServerIdRef =>
      TfRef.attribute<String>(this, 'quic_server_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `target_group_arn` attribute.
  TfRef<String> get targetGroupArnRef =>
      TfRef.attribute<String>(this, 'target_group_arn');

  /// Reference to `target_id` attribute.
  TfRef<String> get targetIdRef => TfRef.attribute<String>(this, 'target_id');
}
