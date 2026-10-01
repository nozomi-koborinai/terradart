// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../beyondcorp/google_beyondcorp_security_gateway.dart'
    show GoogleBeyondcorpSecurityGateway;

/// Sensitive field paths for `google_beyondcorp_security_gateway_iam_policy`.
const Set<String> _googleBeyondcorpSecurityGatewayIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_beyondcorp_security_gateway_iam_policy`.
///
/// Authoritative IAM policy for a BeyondCorp Security Gateway.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleBeyondcorpSecurityGatewayIamMember] for single-principal grants.
final class GoogleBeyondcorpSecurityGatewayIamPolicy extends Resource {
  static const String tfType = 'google_beyondcorp_security_gateway_iam_policy';

  GoogleBeyondcorpSecurityGatewayIamPolicy({
    required super.localName,
    required RefTo<GoogleBeyondcorpSecurityGateway> securityGateway,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'security_gateway_id': securityGateway.encodeAs(
             'security_gateway_id',
           ),
           'policy_data': policyData,
           'location': ?(location ?? securityGateway.alsoAs('location')),
           'project': ?(project ?? securityGateway.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBeyondcorpSecurityGatewayIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBeyondcorpSecurityGatewayIamPolicy>`.
  RefTo<GoogleBeyondcorpSecurityGatewayIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `security_gateway_id` attribute.
  TfRef<String> get securityGatewayIdRef =>
      TfRef.attribute<String>(this, 'security_gateway_id');
}
