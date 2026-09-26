// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_provisioning_template`.
const Set<String> _awsIotProvisioningTemplateSensitive = <String>{};

/// Typed helper for the `pre_provisioning_hook` block of
/// `aws_iot_provisioning_template` (derived from provider schema).
@immutable
final class IotProvisioningTemplatePreProvisioningHook {
  const IotProvisioningTemplatePreProvisioningHook({
    this.payloadVersion,
    required this.targetArn,
  });

  final TfArg<String>? payloadVersion;

  final TfArg<String> targetArn;

  Map<String, Object?> encode() => {
    if (payloadVersion != null) 'payload_version': payloadVersion!.toTfJson(),
    'target_arn': targetArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_iot_provisioning_template`.
final class AwsIotProvisioningTemplate extends Resource {
  static const String tfType = 'aws_iot_provisioning_template';

  AwsIotProvisioningTemplate({
    required super.localName,
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    required TfArg<String> provisioningRoleArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> templateBody,
    TfArg<String>? type,
    IotProvisioningTemplatePreProvisioningHook? preProvisioningHook,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (enabled != null) 'enabled': enabled,
           'name': name,
           'provisioning_role_arn': provisioningRoleArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'template_body': templateBody,
           if (type != null) 'type': type,
           if (preProvisioningHook != null)
             'pre_provisioning_hook': TfArg.literal(
               preProvisioningHook.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotProvisioningTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_version_id` attribute.
  TfRef<num> get defaultVersionId =>
      TfRef.attribute<num>(this, 'default_version_id');
}
