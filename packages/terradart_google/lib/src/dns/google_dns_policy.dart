// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_policy`.
const Set<String> _googleDnsPolicySensitive = <String>{};

/// Factory wrapper for `google_dns_policy`.
final class GoogleDnsPolicy extends Resource {
  static const String tfType = 'google_dns_policy';

  GoogleDnsPolicy({
    required super.localName,
    TfArg<String>? description,
    TfArg<bool>? enableInboundForwarding,
    TfArg<bool>? enableLogging,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? alternativeNameServerConfig,
    TfArg<Map<String, dynamic>>? dns64Config,
    TfArg<List<Map<String, dynamic>>>? networks,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (enableInboundForwarding != null)
             'enable_inbound_forwarding': enableInboundForwarding,
           if (enableLogging != null) 'enable_logging': enableLogging,
           'name': name,
           if (project != null) 'project': project,
           if (alternativeNameServerConfig != null)
             'alternative_name_server_config': alternativeNameServerConfig,
           if (dns64Config != null) 'dns64_config': dns64Config,
           if (networks != null) 'networks': networks,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
