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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDetectiveOrganizationConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDetectiveOrganizationConfiguration>`.
  RefTo<AwsDetectiveOrganizationConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_enable` attribute.
  TfRef<bool> get autoEnable => TfRef.attribute<bool>(this, 'auto_enable');

  /// Reference to `graph_arn` attribute.
  TfRef<String> get graphArn => TfRef.attribute<String>(this, 'graph_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
