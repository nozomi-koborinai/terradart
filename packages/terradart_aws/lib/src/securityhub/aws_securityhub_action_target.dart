// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_action_target`.
const Set<String> _awsSecurityhubActionTargetSensitive = <String>{};

/// Factory wrapper for `aws_securityhub_action_target`.
final class AwsSecurityhubActionTarget extends Resource {
  static const String tfType = 'aws_securityhub_action_target';

  AwsSecurityhubActionTarget(
    super.localName, {
    required TfArg<String> description,
    required TfArg<String> identifier,
    required TfArg<String> name,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': description,
           'identifier': identifier,
           'name': name,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubActionTargetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityhubActionTarget>`.
  RefTo<AwsSecurityhubActionTarget> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `identifier` attribute.
  TfRef<String> get identifier => TfRef.attribute<String>(this, 'identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
