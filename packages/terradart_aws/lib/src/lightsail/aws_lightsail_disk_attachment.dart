// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_disk_attachment`.
const Set<String> _awsLightsailDiskAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_lightsail_disk_attachment`.
final class AwsLightsailDiskAttachment extends Resource {
  static const String tfType = 'aws_lightsail_disk_attachment';

  AwsLightsailDiskAttachment({
    required super.localName,
    required TfArg<String> diskName,
    required TfArg<String> diskPath,
    required TfArg<String> instanceName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'disk_name': diskName,
           'disk_path': diskPath,
           'instance_name': instanceName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailDiskAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
