// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_beyondcorp_security_gateway_application_iam_member`.
const Set<String>
_googleBeyondcorpSecurityGatewayApplicationIamMemberSensitive = <String>{};

/// Factory wrapper for `google_beyondcorp_security_gateway_application_iam_member`.
final class GoogleBeyondcorpSecurityGatewayApplicationIamMember
    extends Resource {
  static const String tfType =
      'google_beyondcorp_security_gateway_application_iam_member';

  GoogleBeyondcorpSecurityGatewayApplicationIamMember({
    required super.localName,
    required TfArg<String> securityGatewayId,
    required TfArg<String> applicationId,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'security_gateway_id': securityGatewayId,
           'application_id': applicationId,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBeyondcorpSecurityGatewayApplicationIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
