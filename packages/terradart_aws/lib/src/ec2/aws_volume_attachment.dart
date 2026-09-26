// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_volume_attachment`.
const Set<String> _awsVolumeAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_volume_attachment`.
final class AwsVolumeAttachment extends Resource {
  static const String tfType = 'aws_volume_attachment';

  AwsVolumeAttachment({
    required super.localName,
    required TfArg<String> deviceName,
    TfArg<bool>? forceDetach,
    required TfArg<String> instanceId,
    TfArg<String>? region,
    TfArg<bool>? skipDestroy,
    TfArg<bool>? stopInstanceBeforeDetaching,
    required TfArg<String> volumeId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'device_name': deviceName,
           if (forceDetach != null) 'force_detach': forceDetach,
           'instance_id': instanceId,
           if (region != null) 'region': region,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
           if (stopInstanceBeforeDetaching != null)
             'stop_instance_before_detaching': stopInstanceBeforeDetaching,
           'volume_id': volumeId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVolumeAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
