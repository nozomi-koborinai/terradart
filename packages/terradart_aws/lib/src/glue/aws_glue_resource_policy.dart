// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_resource_policy`.
const Set<String> _awsGlueResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_glue_resource_policy`.
final class AwsGlueResourcePolicy extends Resource {
  static const String tfType = 'aws_glue_resource_policy';

  AwsGlueResourcePolicy({
    required super.localName,
    TfArg<String>? enableHybrid,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enableHybrid != null) 'enable_hybrid': enableHybrid,
           'policy': policy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueResourcePolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
