// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicequotas_auto_management`.
const Set<String> _awsServicequotasAutoManagementSensitive = <String>{};

/// Servicequotas Auto Management Opt In enum for `opt_in_level`.
enum ServicequotasAutoManagementOptInLevel implements TerraformEnum {
  account('ACCOUNT');

  const ServicequotasAutoManagementOptInLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Servicequotas Auto Management Opt In enum for `opt_in_type`.
enum ServicequotasAutoManagementOptInType implements TerraformEnum {
  notifyonly('NotifyOnly'),
  notifyandadjust('NotifyAndAdjust');

  const ServicequotasAutoManagementOptInType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_servicequotas_auto_management`.
final class AwsServicequotasAutoManagement extends Resource {
  static const String tfType = 'aws_servicequotas_auto_management';

  AwsServicequotasAutoManagement({
    required super.localName,
    TfArg<Map<String, List<String>>>? exclusionList,
    TfArg<String>? notificationArn,
    required TfArg<ServicequotasAutoManagementOptInLevel> optInLevel,
    required TfArg<ServicequotasAutoManagementOptInType> optInType,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'exclusion_list': ?exclusionList,
           'notification_arn': ?notificationArn,
           'opt_in_level': optInLevel,
           'opt_in_type': optInType,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicequotasAutoManagementSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsServicequotasAutoManagement>`.
  RefTo<AwsServicequotasAutoManagement> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `exclusion_list` attribute.
  TfRef<Map<String, List<String>>> get exclusionList =>
      TfRef.attribute<Map<String, List<String>>>(this, 'exclusion_list');

  /// Reference to `notification_arn` attribute.
  TfRef<String> get notificationArn =>
      TfRef.attribute<String>(this, 'notification_arn');

  /// Reference to `opt_in_level` attribute.
  TfRef<String> get optInLevel => TfRef.attribute<String>(this, 'opt_in_level');

  /// Reference to `opt_in_type` attribute.
  TfRef<String> get optInType => TfRef.attribute<String>(this, 'opt_in_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
