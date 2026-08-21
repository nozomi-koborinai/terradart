// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
import 'catalog_entry.dart';

const List<CatalogEntry> terradartCatalog = <CatalogEntry>[
  CatalogEntry(
    tfType: 'cloudflare_dns_record',
    className: 'CloudflareDnsRecord',
    barrel: 'dns',
    kind: CatalogKind.resource,
    summary: 'Factory wrapper for `cloudflare_dns_record`.',
    constructorParams: <String>[
      'localName',
      'zoneId',
      'name',
      'type',
      'ttl',
      'content',
      'proxied',
      'comment',
      'priority',
      'tags',
    ],
    nestedTypes: <String>[],
    sensitiveFields: <String>[],
    docComment:
        'Factory wrapper for `cloudflare_dns_record`.\n\nAccepted Permissions\n\n- `DNS Read` - `DNS Write`\n\nCloudflare **DNS record** — points a name inside a zone at your\nbackend (e.g. a `CNAME` for `api.example.com` toward Cloud Run\'s\n`ghs.googlehosted.com`).\n\nReference the parent zone with `zoneId: TfArg.ref(zone.id)`.\n`ttl: 1` means\n"automatic" in Cloudflare\'s API; proxied records always use it.\nThe optional `data` / `settings` object attributes are not curated\nslots yet — ask via a feature request if you need them.',
  ),
  CatalogEntry(
    tfType: 'cloudflare_zone',
    className: 'CloudflareZone',
    barrel: 'zone',
    kind: CatalogKind.resource,
    summary: 'Factory wrapper for `cloudflare_zone`.',
    constructorParams: <String>[
      'localName',
      'name',
      'account',
      'type',
      'paused',
      'vanityNameServers',
    ],
    nestedTypes: <String>[],
    sensitiveFields: <String>[],
    docComment:
        'Factory wrapper for `cloudflare_zone`.\n\nAccepted Permissions\n\n- `Access: Apps and Policies Read` - `Access: Apps and Policies Revoke` -\n`Access: Apps and Policies Write` - `Access: Mutual TLS Certificates Write`\n- `Access: Organizations, Identity Providers, and Groups Write` - `Analytics\nRead` - `Apps Write` - `Cache Purge` - `DNS Read` - `DNS Write` - `Firewall\nServices Read` - `Firewall Services Write` - `Load Balancers Read` - `Load\nBalancers Write` - `Logs Read` - `Logs Write` - `Page Rules Read` - `Page\nRules Write` - `SSL and Certificates Read` - `SSL and Certificates Write` -\n`Stream Read` - `Stream Write` - `Trust and Safety Read` - `Trust and Safety\nWrite` - `Workers Routes Read` - `Workers Routes Write` - `Workers Scripts\nRead` - `Workers Scripts Write` - `Zaraz Admin` - `Zaraz Edit` - `Zaraz\nRead` - `Zero Trust: PII Read` - `Zone DNS Edit` - `Zone Read` - `Zone\nSettings Read` - `Zone Settings Write` - `Zone Write` - `Zone Zone Edit`\n\nCloudflare **zone** — a domain under Cloudflare management, the\nstarting point for pointing a custom domain at a Dart backend\n(Cloud Run, Firebase Hosting, ...).\n\n`account` is the plugin-framework object attribute — pass\n`TfArg.literal({\'id\': \'<account id>\'})`. Apply authenticates via\n`CLOUDFLARE_*` environment variables — see [CloudflareProvider];\nsynth output never contains credentials.',
  ),
];
