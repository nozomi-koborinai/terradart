// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lightsail_lb_attachment`.
const Set<String> _awsLightsailLbAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_lightsail_lb_attachment`.
final class AwsLightsailLbAttachment extends Resource {
  static const String tfType = 'aws_lightsail_lb_attachment';

  AwsLightsailLbAttachment({
    required super.localName,
    required TfArg<String> instanceName,
    required TfArg<String> lbName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName,
           'lb_name': lbName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLightsailLbAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
