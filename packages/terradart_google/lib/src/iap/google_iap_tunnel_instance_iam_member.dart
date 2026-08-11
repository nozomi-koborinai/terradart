// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_tunnel_instance_iam_member`.
const Set<String> _googleIapTunnelInstanceIamMemberSensitive = <String>{};

/// Factory wrapper for `google_iap_tunnel_instance_iam_member`.
final class GoogleIapTunnelInstanceIamMember extends Resource {
  static const String tfType = 'google_iap_tunnel_instance_iam_member';

  GoogleIapTunnelInstanceIamMember({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (zone != null) 'zone': zone,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapTunnelInstanceIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
