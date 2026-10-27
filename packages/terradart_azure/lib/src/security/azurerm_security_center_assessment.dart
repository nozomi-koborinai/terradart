// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_security_center_assessment`.
const Set<String> _azurermSecurityCenterAssessmentSensitive = <String>{};

/// Typed helper for the `status` block of
/// `azurerm_security_center_assessment` (derived from provider schema).
@immutable
final class SecurityCenterAssessmentStatus {
  const SecurityCenterAssessmentStatus({
    this.cause,
    required this.code,
    this.description,
  });

  final TfArg<String>? cause;

  final TfArg<String> code;

  final TfArg<String>? description;

  @internal
  Map<String, Object?> encode() => {
    'cause': ?cause?.toTfJson(),
    'code': code.toTfJson(),
    'description': ?description?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_security_center_assessment`.
final class AzurermSecurityCenterAssessment extends Resource {
  static const String tfType = 'azurerm_security_center_assessment';

  AzurermSecurityCenterAssessment(
    super.localName, {
    TfArg<Map<String, String>>? additionalData,
    required TfArg<String> assessmentPolicyId,
    required TfArg<String> targetResourceId,
    required SecurityCenterAssessmentStatus status,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_data': ?additionalData,
           'assessment_policy_id': assessmentPolicyId,
           'target_resource_id': targetResourceId,
           'status': TfArg.literal(status.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSecurityCenterAssessmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSecurityCenterAssessment>`.
  RefTo<AzurermSecurityCenterAssessment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_data` attribute.
  TfRef<Map<String, String>> get additionalData =>
      TfRef.attribute<Map<String, String>>(this, 'additional_data');

  /// Reference to `assessment_policy_id` attribute.
  TfRef<String> get assessmentPolicyId =>
      TfRef.attribute<String>(this, 'assessment_policy_id');

  /// Reference to `target_resource_id` attribute.
  TfRef<String> get targetResourceId =>
      TfRef.attribute<String>(this, 'target_resource_id');
}
