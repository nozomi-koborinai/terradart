// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_feature_online_store_iam_member`.
const Set<String> _googleVertexAiFeatureOnlineStoreIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_vertex_ai_feature_online_store_iam_member`.
final class GoogleVertexAiFeatureOnlineStoreIamMember extends Resource {
  static const String tfType =
      'google_vertex_ai_feature_online_store_iam_member';

  GoogleVertexAiFeatureOnlineStoreIamMember({
    required super.localName,
    required TfArg<String> featureOnlineStore,
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
           'feature_online_store': featureOnlineStore,
           'member': member,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiFeatureOnlineStoreIamMemberSensitive;
}
