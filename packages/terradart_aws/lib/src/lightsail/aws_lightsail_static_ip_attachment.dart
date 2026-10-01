// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_static_ip_attachment`.
const Set<String> _awsLightsailStaticIpAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_lightsail_static_ip_attachment`.
final class AwsLightsailStaticIpAttachment extends Resource {
  static const String tfType = 'aws_lightsail_static_ip_attachment';

  AwsLightsailStaticIpAttachment({
    required super.localName,
    required TfArg<String> instanceName,
    TfArg<String>? region,
    required TfArg<String> staticIpName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName,
           'region': ?region,
           'static_ip_name': staticIpName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailStaticIpAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLightsailStaticIpAttachment>`.
  RefTo<AwsLightsailStaticIpAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `instance_name` attribute.
  TfRef<String> get instanceName =>
      TfRef.attribute<String>(this, 'instance_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `static_ip_name` attribute.
  TfRef<String> get staticIpName =>
      TfRef.attribute<String>(this, 'static_ip_name');
}
