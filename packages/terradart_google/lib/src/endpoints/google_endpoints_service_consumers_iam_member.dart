// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_endpoints_service_consumers_iam_member`.
const Set<String> _googleEndpointsServiceConsumersIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_endpoints_service_consumers_iam_member`.
final class GoogleEndpointsServiceConsumersIamMember extends Resource {
  static const String tfType = 'google_endpoints_service_consumers_iam_member';

  GoogleEndpointsServiceConsumersIamMember({
    required super.localName,
    required TfArg<String> serviceName,
    required TfArg<String> consumerProject,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_name': serviceName,
           'consumer_project': consumerProject,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleEndpointsServiceConsumersIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
