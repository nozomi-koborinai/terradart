// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_policy_attachment`.
const Set<String> _awsIotPolicyAttachmentSensitive = <String>{};

/// Factory wrapper for `aws_iot_policy_attachment`.
final class AwsIotPolicyAttachment extends Resource {
  static const String tfType = 'aws_iot_policy_attachment';

  AwsIotPolicyAttachment(
    super.localName, {
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<String> target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'policy': policy, 'region': ?region, 'target': target},
       );

  @override
  Set<String> get sensitiveFields => _awsIotPolicyAttachmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotPolicyAttachment>`.
  RefTo<AwsIotPolicyAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `target` attribute.
  TfRef<String> get target => TfRef.attribute<String>(this, 'target');
}
