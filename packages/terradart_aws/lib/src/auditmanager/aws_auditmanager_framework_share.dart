// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_auditmanager_framework_share`.
const Set<String> _awsAuditmanagerFrameworkShareSensitive = <String>{};

/// Factory wrapper for `aws_auditmanager_framework_share`.
final class AwsAuditmanagerFrameworkShare extends Resource {
  static const String tfType = 'aws_auditmanager_framework_share';

  AwsAuditmanagerFrameworkShare({
    required super.localName,
    TfArg<String>? comment,
    required TfArg<String> destinationAccount,
    required TfArg<String> destinationRegion,
    required TfArg<String> frameworkId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (comment != null) 'comment': comment,
           'destination_account': destinationAccount,
           'destination_region': destinationRegion,
           'framework_id': frameworkId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAuditmanagerFrameworkShareSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
