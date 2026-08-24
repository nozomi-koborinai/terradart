// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_managed_transforms`.
const Set<String> _cloudflareManagedTransformsSensitive = <String>{};

/// Typed helper for the `managed_request_headers` block of
/// `cloudflare_managed_transforms` (derived from provider schema).
@immutable
final class ManagedTransformsManagedRequestHeaders {
  const ManagedTransformsManagedRequestHeaders({
    required this.enabled,
    required this.id,
  });

  final TfArg<bool> enabled;

  final TfArg<String> id;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Typed helper for the `managed_response_headers` block of
/// `cloudflare_managed_transforms` (derived from provider schema).
@immutable
final class ManagedTransformsManagedResponseHeaders {
  const ManagedTransformsManagedResponseHeaders({
    required this.enabled,
    required this.id,
  });

  final TfArg<bool> enabled;

  final TfArg<String> id;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_managed_transforms`.
///
/// Accepted Permissions
///
/// - `Account Rulesets Read` - `Account Rulesets Write` - `Account WAF Read` -
/// `Account WAF Write` - `Bot Management Read` - `Bot Management Write` -
/// `Cache Settings Read` - `Cache Settings Write` - `Config Settings Read` -
/// `Config Settings Write` - `Custom Errors Read` - `Custom Errors Write` -
/// `Dynamic URL Redirects Read` - `Dynamic URL Redirects Write` - `HTTP DDoS
/// Managed Ruleset Read` - `HTTP DDoS Managed Ruleset Write` - `L4 DDoS Managed
/// Ruleset Read` - `L4 DDoS Managed Ruleset Write` - `Logs Read` - `Logs Write`
/// - `Magic Firewall Read` - `Magic Firewall Write` - `Managed headers Read` -
/// `Managed headers Write` - `Mass URL Redirects Read` - `Mass URL Redirects
/// Write` - `Origin Read` - `Origin Write` - `Response Compression Read` -
/// `Response Compression Write` - `Sanitize Read` - `Sanitize Write` - `Select
/// Configuration Read` - `Select Configuration Write` - `Transform Rules Read`
/// - `Transform Rules Write` - `Zone Transform Rules Read` - `Zone Transform
/// Rules Write` - `Zone WAF Read` - `Zone WAF Write`
final class CloudflareManagedTransforms extends Resource {
  static const String tfType = 'cloudflare_managed_transforms';

  CloudflareManagedTransforms({
    required super.localName,
    required TfArg<String> zoneId,
    List<ManagedTransformsManagedRequestHeaders>? managedRequestHeaders,
    List<ManagedTransformsManagedResponseHeaders>? managedResponseHeaders,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId,
           if (managedRequestHeaders != null)
             'managed_request_headers': TfArg.literal([
               for (final e in managedRequestHeaders) e.encode(),
             ]),
           if (managedResponseHeaders != null)
             'managed_response_headers': TfArg.literal([
               for (final e in managedResponseHeaders) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareManagedTransformsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
