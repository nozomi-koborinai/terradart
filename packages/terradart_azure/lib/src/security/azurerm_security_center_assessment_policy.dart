// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_security_center_assessment_policy`.
const Set<String> _azurermSecurityCenterAssessmentPolicySensitive = <String>{};

/// Security Center Assessment Policy enum for `threats`.
extension type const SecurityCenterAssessmentPolicyThreats._(TfArg<String> _)
    implements TfArg<String> {
  SecurityCenterAssessmentPolicyThreats.variable(String name)
    : this._(TfArg.variable(name));
  SecurityCenterAssessmentPolicyThreats.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityCenterAssessmentPolicyThreats.arg(TfArg<String> arg)
    : this._(arg);

  static const accountbreach = SecurityCenterAssessmentPolicyThreats._(
    TfArgLiteral('AccountBreach'),
  );
  static const dataexfiltration = SecurityCenterAssessmentPolicyThreats._(
    TfArgLiteral('DataExfiltration'),
  );
  static const dataspillage = SecurityCenterAssessmentPolicyThreats._(
    TfArgLiteral('DataSpillage'),
  );
  static const maliciousinsider = SecurityCenterAssessmentPolicyThreats._(
    TfArgLiteral('MaliciousInsider'),
  );
  static const elevationofprivilege = SecurityCenterAssessmentPolicyThreats._(
    TfArgLiteral('ElevationOfPrivilege'),
  );
  static const threatresistance = SecurityCenterAssessmentPolicyThreats._(
    TfArgLiteral('ThreatResistance'),
  );
  static const missingcoverage = SecurityCenterAssessmentPolicyThreats._(
    TfArgLiteral('MissingCoverage'),
  );
  static const denialofservice = SecurityCenterAssessmentPolicyThreats._(
    TfArgLiteral('DenialOfService'),
  );

  static const List<SecurityCenterAssessmentPolicyThreats> values = [
    accountbreach,
    dataexfiltration,
    dataspillage,
    maliciousinsider,
    elevationofprivilege,
    threatresistance,
    missingcoverage,
    denialofservice,
  ];
}

/// Factory wrapper for `azurerm_security_center_assessment_policy`.
final class AzurermSecurityCenterAssessmentPolicy extends Resource {
  static const String tfType = 'azurerm_security_center_assessment_policy';

  AzurermSecurityCenterAssessmentPolicy(
    super.localName, {
    TfArg<List<String>>? categories,
    required TfArg<String> description,
    required TfArg<String> displayName,
    TfArg<String>? implementationEffort,
    TfArg<String>? remediationDescription,
    TfArg<String>? severity,
    List<SecurityCenterAssessmentPolicyThreats>? threats,
    TfArg<String>? userImpact,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'categories': ?categories,
           'description': description,
           'display_name': displayName,
           'implementation_effort': ?implementationEffort,
           'remediation_description': ?remediationDescription,
           'severity': ?severity,
           if (threats != null)
             'threats': TfArg.literal([for (final e in threats) e.toTfJson()]),
           'user_impact': ?userImpact,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSecurityCenterAssessmentPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSecurityCenterAssessmentPolicy>`.
  RefTo<AzurermSecurityCenterAssessmentPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `categories` attribute.
  TfRef<List<String>> get categories =>
      TfRef.attribute<List<String>>(this, 'categories');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `implementation_effort` attribute.
  TfRef<String> get implementationEffort =>
      TfRef.attribute<String>(this, 'implementation_effort');

  /// Reference to `remediation_description` attribute.
  TfRef<String> get remediationDescription =>
      TfRef.attribute<String>(this, 'remediation_description');

  /// Reference to `severity` attribute.
  TfRef<String> get severity => TfRef.attribute<String>(this, 'severity');

  /// Reference to `threats` attribute.
  TfRef<List<String>> get threats =>
      TfRef.attribute<List<String>>(this, 'threats');

  /// Reference to `user_impact` attribute.
  TfRef<String> get userImpact => TfRef.attribute<String>(this, 'user_impact');
}
