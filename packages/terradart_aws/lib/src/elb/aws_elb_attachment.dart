// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_elb_attachment`.
const Set<String> _awsElbAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_elb_attachment`.
final class AwsElbAttachment extends Resource {
  static const String tfType = 'aws_elb_attachment';

  AwsElbAttachment({
    required super.localName,
    required TfArg<String> elb,
    required TfArg<String> instance,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'elb': elb,
           'instance': instance,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsElbAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
