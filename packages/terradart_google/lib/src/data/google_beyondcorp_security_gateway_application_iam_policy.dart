// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../beyondcorp/google_beyondcorp_security_gateway_application_iam_policy.dart';

/// Sensitive field paths for `google_beyondcorp_security_gateway_application_iam_policy`.
const Set<String>
_googleBeyondcorpSecurityGatewayApplicationIamPolicySensitive = <String>{};

/// Factory wrapper for `google_beyondcorp_security_gateway_application_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBeyondcorpSecurityGatewayApplicationIamPolicy
    extends Data {
  static const String tfType =
      'google_beyondcorp_security_gateway_application_iam_policy';

  DataGoogleBeyondcorpSecurityGatewayApplicationIamPolicy({
    required super.localName,
    required TfArg<String> applicationId,
    TfArg<String>? project,
    required TfArg<String> securityGatewayId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'project': ?project,
           'security_gateway_id': securityGatewayId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBeyondcorpSecurityGatewayApplicationIamPolicySensitive;

  /// A reference to the `google_beyondcorp_security_gateway_application_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleBeyondcorpSecurityGatewayApplicationIamPolicy>`.
  RefTo<GoogleBeyondcorpSecurityGatewayApplicationIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `security_gateway_id` attribute.
  TfRef<String> get securityGatewayId =>
      TfRef.attribute<String>(this, 'security_gateway_id');
}
