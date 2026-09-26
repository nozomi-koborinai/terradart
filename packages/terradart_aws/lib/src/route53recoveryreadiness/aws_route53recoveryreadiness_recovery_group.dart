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
           if (cells != null) 'cells': cells,
           'recovery_group_name': recoveryGroupName,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53recoveryreadinessRecoveryGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
