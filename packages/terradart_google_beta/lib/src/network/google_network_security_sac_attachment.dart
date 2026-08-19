// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_sac_attachment`.
const Set<String> _googleNetworkSecuritySacAttachmentSensitive = <String>{};

/// Factory wrapper for `google_network_security_sac_attachment`.
final class GoogleNetworkSecuritySacAttachment extends Resource {
  static const String tfType = 'google_network_security_sac_attachment';

  GoogleNetworkSecuritySacAttachment({
    required super.localName,
    TfArg<String>? country,
    TfArg<String>? deletionPolicy,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> nccGateway,
    TfArg<String>? project,
    required TfArg<String> sacRealm,
    TfArg<String>? timeZone,
    TfArg<Map<String, dynamic>>? symantecOptions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (country != null) 'country': country,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (labels != null) 'labels': labels,
           'location': location,
           'name': name,
           'ncc_gateway': nccGateway,
           if (project != null) 'project': project,
           'sac_realm': sacRealm,
           if (timeZone != null) 'time_zone': timeZone,
           if (symantecOptions != null) 'symantec_options': symantecOptions,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecuritySacAttachmentSensitive;
}
