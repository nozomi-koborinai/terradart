// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_provisioning_template`.
const Set<String> _awsIotProvisioningTemplateSensitive = <String>{};

/// Iot Provisioning Template enum for `type`.
enum IotProvisioningTemplateType implements TerraformEnum {
  fleetProvisioning('FLEET_PROVISIONING'),
  jitp('JITP');

  const IotProvisioningTemplateType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `pre_provisioning_hook` block of
/// `aws_iot_provisioning_template` (derived from provider schema).
@immutable
final class IotProvisioningTemplatePreProvisioningHook {
  const IotProvisioningTemplatePreProvisioningHook({
    this.payloadVersion,
    required this.targetArn,
  });

  final TfArg<IotProvisioningTemplatePayloadVersion>? payloadVersion;

  final TfArg<String> targetArn;

  Map<String, Object?> encode() => {
    'payload_version': ?payloadVersion?.toTfJson(),
    'target_arn': targetArn.toTfJson(),
  };
}

/// `payload_version` — derived from the provider schema description.
enum IotProvisioningTemplatePayloadVersion implements TerraformEnum {
  v2020x04x01('2020-04-01');

  const IotProvisioningTemplatePayloadVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_iot_provisioning_template`.
final class AwsIotProvisioningTemplate extends Resource {
  static const String tfType = 'aws_iot_provisioning_template';

  AwsIotProvisioningTemplate(
    super.localName, {
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    required TfArg<String> provisioningRoleArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> templateBody,
    TfArg<IotProvisioningTemplateType>? type,
    IotProvisioningTemplatePreProvisioningHook? preProvisioningHook,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'enabled': ?enabled,
           'name': name,
           'provisioning_role_arn': provisioningRoleArn,
           'region': ?region,
           'tags': ?tags,
           'template_body': templateBody,
           'type': ?type,
           if (preProvisioningHook != null)
             'pre_provisioning_hook': TfArg.literal(
               preProvisioningHook.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotProvisioningTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotProvisioningTemplate>`.
  RefTo<AwsIotProvisioningTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_version_id` attribute.
  TfRef<num> get defaultVersionId =>
      TfRef.attribute<num>(this, 'default_version_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `provisioning_role_arn` attribute.
  TfRef<String> get provisioningRoleArn =>
      TfRef.attribute<String>(this, 'provisioning_role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `template_body` attribute.
  TfRef<String> get templateBody =>
      TfRef.attribute<String>(this, 'template_body');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
