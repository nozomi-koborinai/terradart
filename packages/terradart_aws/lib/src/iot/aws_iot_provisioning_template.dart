// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_provisioning_template`.
const Set<String> _awsIotProvisioningTemplateSensitive = <String>{};

/// Iot Provisioning Template enum for `type`.
extension type const IotProvisioningTemplateType._(TfArg<String> _)
    implements TfArg<String> {
  IotProvisioningTemplateType.variable(String name)
    : this._(TfArg.variable(name));
  IotProvisioningTemplateType.expression(String template)
    : this._(TfArg.expression(template));
  const IotProvisioningTemplateType.arg(TfArg<String> arg) : this._(arg);

  static const fleetProvisioning = IotProvisioningTemplateType._(
    TfArgLiteral('FLEET_PROVISIONING'),
  );
  static const jitp = IotProvisioningTemplateType._(TfArgLiteral('JITP'));

  static const List<IotProvisioningTemplateType> values = [
    fleetProvisioning,
    jitp,
  ];
}

/// Typed helper for the `pre_provisioning_hook` block of
/// `aws_iot_provisioning_template` (derived from provider schema).
@immutable
final class IotProvisioningTemplatePreProvisioningHook {
  const IotProvisioningTemplatePreProvisioningHook({
    this.payloadVersion,
    required this.targetArn,
  });

  final IotProvisioningTemplatePayloadVersion? payloadVersion;

  final TfArg<String> targetArn;

  @internal
  Map<String, Object?> encode() => {
    'payload_version': ?payloadVersion?.toTfJson(),
    'target_arn': targetArn.toTfJson(),
  };
}

/// `payload_version` — derived from the provider schema description.
extension type const IotProvisioningTemplatePayloadVersion._(TfArg<String> _)
    implements TfArg<String> {
  IotProvisioningTemplatePayloadVersion.variable(String name)
    : this._(TfArg.variable(name));
  IotProvisioningTemplatePayloadVersion.expression(String template)
    : this._(TfArg.expression(template));
  const IotProvisioningTemplatePayloadVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const v2020x04x01 = IotProvisioningTemplatePayloadVersion._(
    TfArgLiteral('2020-04-01'),
  );

  static const List<IotProvisioningTemplatePayloadVersion> values = [
    v2020x04x01,
  ];
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
    IotProvisioningTemplateType? type,
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
