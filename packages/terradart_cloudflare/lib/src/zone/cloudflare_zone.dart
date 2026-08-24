// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone`.
const Set<String> _cloudflareZoneSensitive = <String>{};

/// Typed helper for the `account` block of
/// `cloudflare_zone` (derived from provider schema).
@immutable
final class ZoneAccount {
  const ZoneAccount({this.id});

  final TfArg<String>? id;

  Map<String, Object?> encode() => {if (id != null) 'id': id!.toTfJson()};
}

/// Factory wrapper for `cloudflare_zone`.
///
/// Accepted Permissions
///
/// - `Access: Apps and Policies Read` - `Access: Apps and Policies Revoke` -
/// `Access: Apps and Policies Write` - `Access: Mutual TLS Certificates Write`
/// - `Access: Organizations, Identity Providers, and Groups Write` - `Analytics
/// Read` - `Apps Write` - `Cache Purge` - `DNS Read` - `DNS Write` - `Firewall
/// Services Read` - `Firewall Services Write` - `Load Balancers Read` - `Load
/// Balancers Write` - `Logs Read` - `Logs Write` - `Page Rules Read` - `Page
/// Rules Write` - `SSL and Certificates Read` - `SSL and Certificates Write` -
/// `Stream Read` - `Stream Write` - `Trust and Safety Read` - `Trust and Safety
/// Write` - `Workers Routes Read` - `Workers Routes Write` - `Workers Scripts
/// Read` - `Workers Scripts Write` - `Zaraz Admin` - `Zaraz Edit` - `Zaraz
/// Read` - `Zero Trust: PII Read` - `Zone DNS Edit` - `Zone Read` - `Zone
/// Settings Read` - `Zone Settings Write` - `Zone Write` - `Zone Zone Edit`
///
/// Cloudflare **zone** — a domain under Cloudflare management, the
/// starting point for pointing a custom domain at a Dart backend
/// (Cloud Run, Firebase Hosting, ...).
///
/// `account` is a typed [ZoneAccount] helper (`id` is the Cloudflare
/// account identifier). Apply authenticates via `CLOUDFLARE_*`
/// environment variables — see [CloudflareProvider]; synth output
/// never contains credentials.
final class CloudflareZone extends Resource {
  static const String tfType = 'cloudflare_zone';

  CloudflareZone({
    required super.localName,
    required TfArg<String> name,
    required ZoneAccount account,
    TfArg<String>? type,
    TfArg<bool>? paused,
    TfArg<List<String>>? vanityNameServers,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'account': TfArg.literal(account.encode()),
           if (type != null) 'type': type,
           if (paused != null) 'paused': paused,
           if (vanityNameServers != null)
             'vanity_name_servers': vanityNameServers,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activated_on` attribute.
  TfRef<String> get activatedOn =>
      TfRef.attribute<String>(this, 'activated_on');

  /// Reference to `cname_suffix` attribute.
  TfRef<String> get cnameSuffix =>
      TfRef.attribute<String>(this, 'cname_suffix');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `development_mode` attribute.
  TfRef<num> get developmentMode =>
      TfRef.attribute<num>(this, 'development_mode');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `name_servers` attribute.
  TfRef<List<String>> get nameServers =>
      TfRef.attribute<List<String>>(this, 'name_servers');

  /// Reference to `original_dnshost` attribute.
  TfRef<String> get originalDnshost =>
      TfRef.attribute<String>(this, 'original_dnshost');

  /// Reference to `original_name_servers` attribute.
  TfRef<List<String>> get originalNameServers =>
      TfRef.attribute<List<String>>(this, 'original_name_servers');

  /// Reference to `original_registrar` attribute.
  TfRef<String> get originalRegistrar =>
      TfRef.attribute<String>(this, 'original_registrar');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `verification_key` attribute.
  TfRef<String> get verificationKey =>
      TfRef.attribute<String>(this, 'verification_key');
}
