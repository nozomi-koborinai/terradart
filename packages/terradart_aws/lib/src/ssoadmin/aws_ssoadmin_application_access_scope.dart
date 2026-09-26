// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_application_access_scope`.
const Set<String> _awsSsoadminApplicationAccessScopeSensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_application_access_scope`.
final class AwsSsoadminApplicationAccessScope extends Resource {
  static const String tfType = 'aws_ssoadmin_application_access_scope';

  AwsSsoadminApplicationAccessScope({
    required super.localName,
    required TfArg<String> applicationArn,
    TfArg<List<String>>? authorizedTargets,
    TfArg<String>? region,
    required TfArg<String> scope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_arn': applicationArn,
           if (authorizedTargets != null)
             'authorized_targets': authorizedTargets,
           if (region != null) 'region': region,
           'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsoadminApplicationAccessScopeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
