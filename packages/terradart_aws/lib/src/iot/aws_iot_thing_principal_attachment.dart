// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_thing_principal_attachment`.
const Set<String> _awsIotThingPrincipalAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_iot_thing_principal_attachment`.
final class AwsIotThingPrincipalAttachment extends Resource {
  static const String tfType = 'aws_iot_thing_principal_attachment';

  AwsIotThingPrincipalAttachment({
    required super.localName,
    required TfArg<String> principal,
    TfArg<String>? region,
    required TfArg<String> thing,
    TfArg<String>? thingPrincipalType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'principal': principal,
           if (region != null) 'region': region,
           'thing': thing,
           if (thingPrincipalType != null)
             'thing_principal_type': thingPrincipalType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotThingPrincipalAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
