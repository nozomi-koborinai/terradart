import '../../ir/resource_def.dart';
import 'provider_rules.dart';

/// wrap-init rules for `cloudflare/cloudflare`.
///
/// No Magic Modules. Barrel folders are the terraform-type segment after
/// `cloudflare_`, with multi-segment families folded via [outputDirAliases]
/// so `cloudflare_zero_trust_*` shares one barrel instead of exploding
/// into `zero` / `trust` / …
final class CloudflareProviderRules extends ProviderRules {
  const CloudflareProviderRules();

  @override
  String get providerId => 'cloudflare/cloudflare';

  @override
  String get terraformTypePrefix => 'cloudflare_';

  @override
  bool get typedNestedDefaults => true;

  @override
  Map<String, String> get outputDirAliases => _aliases;

  @override
  List<String> universalGetters(ResourceDef def) {
    final attrs = def.root.attributes.map((a) => a.name).toSet();
    if (attrs.contains('id')) {
      return [
        "TfRef<String> get id => TfRef.attribute<String>(this, 'id');",
      ];
    }
    return const [];
  }

  /// Longest-prefix folds. Two-segment identities keep families such as
  /// `zero_trust_*` from collapsing to the first segment (`zero`).
  ///
  /// Do **not** map `access` → `zero_trust`: `cloudflare_access_rule` is a
  /// zone IP access rule, not Zero Trust Access.
  static const Map<String, String> _aliases = {
    'zero_trust': 'zero_trust',
    'load_balancer': 'load_balancer',
    'workers_for_platforms': 'workers',
    'workers': 'workers',
    'worker': 'workers',
    'pages': 'pages',
    'r2': 'r2',
    'd1': 'd1',
    'dns': 'dns',
    'zone': 'zone',
    'account': 'account',
    'api_token': 'account',
    'oauth_client': 'account',
    'sso_connector': 'account',
    'api_shield': 'api_shield',
    'schema_validation': 'api_shield',
    'token_validation': 'api_shield',
    'authenticated_origin_pulls': 'ssl',
    'certificate_pack': 'ssl',
    'certificate_authorities': 'ssl',
    'custom_ssl': 'ssl',
    'custom_csr': 'ssl',
    'custom_origin_trust_store': 'ssl',
    'origin_ca_certificate': 'ssl',
    'origin_tls_compliance': 'ssl',
    'keyless_certificate': 'ssl',
    'mtls_certificate': 'ssl',
    'hostname_tls_setting': 'ssl',
    'total_tls': 'ssl',
    'universal_ssl': 'ssl',
    'client_certificate': 'ssl',
    'waiting_room': 'waiting_room',
    'turnstile': 'turnstile',
    'stream': 'stream',
    'logpush': 'logs',
    'logpull': 'logs',
    'notification': 'notifications',
    'queue': 'queues',
    'hyperdrive': 'hyperdrive',
    'vectorize': 'vectorize',
    'magic_wan': 'magic',
    'magic_transit': 'magic',
    'magic_network': 'magic',
    'email_routing': 'email',
    'email_security': 'email',
    'bot_management': 'security',
    'waf': 'security',
    'firewall': 'security',
    'leaked_credential_check': 'security',
    'content_scanning': 'security',
    'page_shield': 'security',
    'rate_limit': 'security',
    'user_agent_blocking': 'security',
    'vulnerability_scanner': 'security',
    'ruleset': 'rules',
    'page_rule': 'rules',
    'list': 'rules',
    'filter': 'rules',
    'url_normalization': 'rules',
    'cloud_connector': 'cloud_connector',
    'cloudforce_one': 'cloudforce_one',
    'custom_hostname': 'custom_hostname',
    'custom_pages': 'pages',
    'custom_page': 'pages',
    'byo_ip': 'byo_ip',
    'web_analytics': 'web_analytics',
    'google_tag': 'google_tag',
    'managed_transforms': 'transforms',
    'tiered_cache': 'cache',
    'regional_tiered': 'cache',
    'regional_hostname': 'regional',
    'ai_gateway': 'ai',
    'ai_search': 'ai',
    'snippets': 'snippet',
    'address_map': 'address_map',
    'organization': 'account',
    'tunnel': 'zero_trust',
    'device_posture': 'zero_trust',
    'dlp': 'zero_trust',
    'gateway': 'zero_trust',
    'teams': 'zero_trust',
  };
}
