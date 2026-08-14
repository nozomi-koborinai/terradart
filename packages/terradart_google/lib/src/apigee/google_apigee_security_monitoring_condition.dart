// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_security_monitoring_condition`.
const Set<String> _googleApigeeSecurityMonitoringConditionSensitive =
    <String>{};

/// Factory wrapper for `google_apigee_security_monitoring_condition`.
///
/// Security monitoring condition for risk assessment version 2 in Apigee.
///
/// Apigee **security monitoring condition** — Advanced API Security
/// config metadata that names a profile and environment scope.
/// Creating the condition does **not** process API requests, create
/// an organization, or enable the add-on.
///
/// Prefer a thin smoke stack: placeholder [orgId]
/// `organizations/demo-org`, [profile] and [scope] environment IDs,
/// and [conditionId] `terradart-smc`. Set [deletionPolicy] to
/// `DELETE`. Omit `include_all_resources` (the GA sibling `include`
/// block is not shipped yet).
///
/// `apigee_quickstart` is apply-smoke skipped (needs a live Apigee
/// org), so this factory is synth + `terraform validate` only.
///
/// Example:
/// ```dart
/// GoogleApigeeSecurityMonitoringCondition(
///   localName: 'demo_smc',
///   conditionId: TfArg.literal('terradart-smc'),
///   orgId: TfArg.literal('organizations/demo-org'),
///   profile: TfArg.literal('demo-profile'),
///   scope: TfArg.literal('demo-env'),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleApigeeSecurityMonitoringCondition extends Resource {
  static const String tfType = 'google_apigee_security_monitoring_condition';

  GoogleApigeeSecurityMonitoringCondition({
    required super.localName,
    required TfArg<String> conditionId,
    required TfArg<String> orgId,
    required TfArg<String> profile,
    required TfArg<String> scope,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'condition_id': conditionId,
           'org_id': orgId,
           'profile': profile,
           'scope': scope,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleApigeeSecurityMonitoringConditionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `total_deployed_resources` attribute.
  TfRef<num> get totalDeployedResources =>
      TfRef.attribute<num>(this, 'total_deployed_resources');

  /// Reference to `total_monitored_resources` attribute.
  TfRef<num> get totalMonitoredResources =>
      TfRef.attribute<num>(this, 'total_monitored_resources');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
