// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_thing_principal_attachment`.
const Set<String> _awsIotThingPrincipalAttachmentSensitive = <String>{};

/// Iot Thing Principal Attachment Thing Principal enum for `thing_principal_type`.
enum IotThingPrincipalAttachmentThingPrincipalType implements TerraformEnum {
  exclusiveThing('EXCLUSIVE_THING'),
  nonExclusiveThing('NON_EXCLUSIVE_THING');

  const IotThingPrincipalAttachmentThingPrincipalType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_iot_thing_principal_attachment`.
final class AwsIotThingPrincipalAttachment extends Resource {
  static const String tfType = 'aws_iot_thing_principal_attachment';

  AwsIotThingPrincipalAttachment(
    super.localName, {
    required TfArg<String> principal,
    TfArg<String>? region,
    required TfArg<String> thing,
    TfArg<IotThingPrincipalAttachmentThingPrincipalType>? thingPrincipalType,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'principal': principal,
           'region': ?region,
           'thing': thing,
           'thing_principal_type': ?thingPrincipalType,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotThingPrincipalAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotThingPrincipalAttachment>`.
  RefTo<AwsIotThingPrincipalAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `principal` attribute.
  TfRef<String> get principal => TfRef.attribute<String>(this, 'principal');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `thing` attribute.
  TfRef<String> get thing => TfRef.attribute<String>(this, 'thing');

  /// Reference to `thing_principal_type` attribute.
  TfRef<String> get thingPrincipalType =>
      TfRef.attribute<String>(this, 'thing_principal_type');
}
