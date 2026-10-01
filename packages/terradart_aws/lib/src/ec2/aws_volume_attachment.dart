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
           'force_detach': ?forceDetach,
           'instance_id': instanceId,
           'region': ?region,
           'skip_destroy': ?skipDestroy,
           'stop_instance_before_detaching': ?stopInstanceBeforeDetaching,
           'volume_id': volumeId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVolumeAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVolumeAttachment>`.
  RefTo<AwsVolumeAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `device_name` attribute.
  TfRef<String> get deviceName => TfRef.attribute<String>(this, 'device_name');

  /// Reference to `force_detach` attribute.
  TfRef<bool> get forceDetach => TfRef.attribute<bool>(this, 'force_detach');

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `skip_destroy` attribute.
  TfRef<bool> get skipDestroy => TfRef.attribute<bool>(this, 'skip_destroy');

  /// Reference to `stop_instance_before_detaching` attribute.
  TfRef<bool> get stopInstanceBeforeDetaching =>
      TfRef.attribute<bool>(this, 'stop_instance_before_detaching');

  /// Reference to `volume_id` attribute.
  TfRef<String> get volumeId => TfRef.attribute<String>(this, 'volume_id');
}
