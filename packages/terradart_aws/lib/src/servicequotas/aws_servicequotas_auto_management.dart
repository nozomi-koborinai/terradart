// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicequotas_auto_management`.
const Set<String> _awsServicequotasAutoManagementSensitive = <String>{};

/// Factory wrapper for `aws_servicequotas_auto_management`.
final class AwsServicequotasAutoManagement extends Resource {
  static const String tfType = 'aws_servicequotas_auto_management';

  AwsServicequotasAutoManagement({
    required super.localName,
    TfArg<Map<String, List<String>>>? exclusionList,
    TfArg<String>? notificationArn,
    required TfArg<String> optInLevel,
    required TfArg<String> optInType,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (exclusionList != null) 'exclusion_list': exclusionList,
           if (notificationArn != null) 'notification_arn': notificationArn,
           'opt_in_level': optInLevel,
           'opt_in_type': optInType,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicequotasAutoManagementSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
