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

/// Typed helper for the `dns64_config` block of
/// `google_dns_policy` (derived from provider schema).
@immutable
final class DnsPolicyDns64Config {
  const DnsPolicyDns64Config({required this.scope});

  final DnsPolicyScope scope;

  Map<String, Object?> encode() => {'scope': scope.encode()};
}

/// Typed helper for the `dns64_config.scope` block of
/// `google_dns_policy` (derived from provider schema).
@immutable
final class DnsPolicyScope {
  const DnsPolicyScope({this.allQueries});

  final TfArg<bool>? allQueries;

  Map<String, Object?> encode() => {'all_queries': ?allQueries?.toTfJson()};
}

/// Typed helper for the `networks` block of
/// `google_dns_policy` (derived from provider schema).
@immutable
final class DnsPolicyNetworks {
  const DnsPolicyNetworks({required this.networkUrl});

  final TfArg<String> networkUrl;

  Map<String, Object?> encode() => {'network_url': networkUrl.toTfJson()};
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
    DnsPolicyDns64Config? dns64Config,
    List<DnsPolicyNetworks>? networks,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'enable_inbound_forwarding': ?enableInboundForwarding,
           'enable_logging': ?enableLogging,
           'name': name,
           'project': ?project,
           if (alternativeNameServerConfig != null)
             'alternative_name_server_config': TfArg.literal([
               alternativeNameServerConfig.encode(),
             ]),
           if (dns64Config != null)
             'dns64_config': TfArg.literal(dns64Config.encode()),
           if (networks != null)
             'networks': TfArg.literal([for (final e in networks) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDnsPolicy>`.
  RefTo<GoogleDnsPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `enable_inbound_forwarding` attribute.
  TfRef<bool> get enableInboundForwardingRef =>
      TfRef.attribute<bool>(this, 'enable_inbound_forwarding');

  /// Reference to `enable_logging` attribute.
  TfRef<bool> get enableLoggingRef =>
      TfRef.attribute<bool>(this, 'enable_logging');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
