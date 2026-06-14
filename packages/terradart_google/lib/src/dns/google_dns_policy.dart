// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_google/src/dns/google_dns_managed_zone.dart'
    show ForwardingPath;
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_policy`.
const Set<String> _googleDnsPolicySensitive = <String>{};

@immutable
class DnsPolicyAlternativeNameServerTargetNameServer {
  const DnsPolicyAlternativeNameServerTargetNameServer({
    required this.ipv4Address,
    this.forwardingPath,
  });

  final TfArg<String> ipv4Address;
  final ForwardingPath? forwardingPath;

  Map<String, Object?> toArgMap() => {
    'ipv4_address': ipv4Address.toTfJson(),
    if (forwardingPath != null)
      'forwarding_path': forwardingPath!.terraformValue,
  };
}

@immutable
class DnsPolicyAlternativeNameServerConfig {
  const DnsPolicyAlternativeNameServerConfig({required this.targetNameServers});

  final List<DnsPolicyAlternativeNameServerTargetNameServer> targetNameServers;

  Map<String, Object?> encode() => {
    'target_name_servers': targetNameServers.map((s) => s.toArgMap()).toList(),
  };
}

/// Factory wrapper for `google_dns_policy`.
///
/// A policy is a collection of DNS rules applied to one or more Virtual Private
/// Cloud resources.
final class GoogleDnsPolicy extends Resource {
  static const String tfType = 'google_dns_policy';

  GoogleDnsPolicy({
    required super.localName,
    TfArg<String>? description,
    TfArg<bool>? enableInboundForwarding,
    TfArg<bool>? enableLogging,
    required TfArg<String> name,
    TfArg<String>? project,
    DnsPolicyAlternativeNameServerConfig? alternativeNameServerConfig,
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
             'alternative_name_server_config': TfArg.literal([
               alternativeNameServerConfig.encode(),
             ]),
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
