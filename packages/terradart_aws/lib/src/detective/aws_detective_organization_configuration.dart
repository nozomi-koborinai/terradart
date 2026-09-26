// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_detective_organization_configuration`.
const Set<String> _awsDetectiveOrganizationConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_detective_organization_configuration`.
final class AwsDetectiveOrganizationConfiguration extends Resource {
  static const String tfType = 'aws_detective_organization_configuration';

  AwsDetectiveOrganizationConfiguration({
    required super.localName,
    required TfArg<bool> autoEnable,
    required TfArg<String> graphArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_enable': autoEnable,
           'graph_arn': graphArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDetectiveOrganizationConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
