// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_auditmanager_framework`.
const Set<String> _awsAuditmanagerFrameworkSensitive = <String>{};

/// Factory wrapper for `aws_auditmanager_framework`.
final class DataAwsAuditmanagerFramework extends Data {
  static const String tfType = 'aws_auditmanager_framework';

  DataAwsAuditmanagerFramework({
    required super.localName,
    required TfArg<String> frameworkType,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'framework_type': frameworkType,
           'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAuditmanagerFrameworkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `compliance_type` attribute.
  TfRef<String> get complianceType =>
      TfRef.attribute<String>(this, 'compliance_type');

  /// Reference to `control_sets` attribute.
  TfRef<List<Map<String, Object?>>> get controlSets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'control_sets');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
