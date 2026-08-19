// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_api_gateway_api_iam_member`.
const Set<String> _googleApiGatewayApiIamMemberSensitive = <String>{};

/// Factory wrapper for `google_api_gateway_api_iam_member`.
final class GoogleApiGatewayApiIamMember extends Resource {
  static const String tfType = 'google_api_gateway_api_iam_member';

  GoogleApiGatewayApiIamMember({
    required super.localName,
    required TfArg<String> api,
    required TfArg<String> member,
    TfArg<String>? project,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'api': api,
           'member': member,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayApiIamMemberSensitive;
}
