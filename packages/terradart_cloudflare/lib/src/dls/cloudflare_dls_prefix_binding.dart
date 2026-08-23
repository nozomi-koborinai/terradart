// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_dls_prefix_binding`.
const Set<String> _cloudflareDlsPrefixBindingSensitive = <String>{};

/// Factory wrapper for `cloudflare_dls_prefix_binding`.
///
/// Accepted Permissions
///
/// - `DLS: Read` - `DLS: Write` - `IP Prefixes: Write`
final class CloudflareDlsPrefixBinding extends Resource {
  static const String tfType = 'cloudflare_dls_prefix_binding';

  CloudflareDlsPrefixBinding({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> cidr,
    required TfArg<String> prefixId,
    required TfArg<String> regionKey,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'cidr': cidr,
           'prefix_id': prefixId,
           'region_key': regionKey,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDlsPrefixBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
