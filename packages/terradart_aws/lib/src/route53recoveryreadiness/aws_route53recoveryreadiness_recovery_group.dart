// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53recoveryreadiness_recovery_group`.
const Set<String> _awsRoute53recoveryreadinessRecoveryGroupSensitive =
    <String>{};

/// Factory wrapper for `aws_route53recoveryreadiness_recovery_group`.
final class AwsRoute53recoveryreadinessRecoveryGroup extends Resource {
  static const String tfType = 'aws_route53recoveryreadiness_recovery_group';

  AwsRoute53recoveryreadinessRecoveryGroup({
    required super.localName,
    TfArg<List<String>>? cells,
    required TfArg<String> recoveryGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cells': ?cells,
           'recovery_group_name': recoveryGroupName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53recoveryreadinessRecoveryGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53recoveryreadinessRecoveryGroup>`.
  RefTo<AwsRoute53recoveryreadinessRecoveryGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cells` attribute.
  TfRef<List<String>> get cellsRef =>
      TfRef.attribute<List<String>>(this, 'cells');

  /// Reference to `recovery_group_name` attribute.
  TfRef<String> get recoveryGroupNameRef =>
      TfRef.attribute<String>(this, 'recovery_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
