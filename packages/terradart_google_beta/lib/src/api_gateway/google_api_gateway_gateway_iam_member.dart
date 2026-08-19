// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_api_gateway_gateway_iam_member`.
const Set<String> _googleApiGatewayGatewayIamMemberSensitive = <String>{};

/// Factory wrapper for `google_api_gateway_gateway_iam_member`.
final class GoogleApiGatewayGatewayIamMember extends Resource {
  static const String tfType = 'google_api_gateway_gateway_iam_member';

  GoogleApiGatewayGatewayIamMember({
    required super.localName,
    required TfArg<String> gateway,
    required TfArg<String> member,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'gateway': gateway,
           'member': member,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApiGatewayGatewayIamMemberSensitive;
}
