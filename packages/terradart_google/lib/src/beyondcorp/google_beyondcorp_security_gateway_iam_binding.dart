// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_beyondcorp_security_gateway_iam_binding`.
const Set<String> _googleBeyondcorpSecurityGatewayIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_beyondcorp_security_gateway_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BeyondCorp Security Gateway.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleBeyondcorpSecurityGatewayIamMember] for additive grants.
final class GoogleBeyondcorpSecurityGatewayIamBinding extends Resource {
  static const String tfType = 'google_beyondcorp_security_gateway_iam_binding';

  GoogleBeyondcorpSecurityGatewayIamBinding({
    required super.localName,
    required TfArg<String> securityGatewayId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'security_gateway_id': securityGatewayId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBeyondcorpSecurityGatewayIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
