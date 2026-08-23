// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_pages_domain`.
const Set<String> _cloudflarePagesDomainSensitive = <String>{};

/// Factory wrapper for `cloudflare_pages_domain`.
///
/// Accepted Permissions
///
/// - `Pages Read` - `Pages Write`
final class CloudflarePagesDomain extends Resource {
  static const String tfType = 'cloudflare_pages_domain';

  CloudflarePagesDomain({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> name,
    required TfArg<String> projectName,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'name': name,
           'project_name': projectName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePagesDomainSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_authority` attribute.
  TfRef<String> get certificateAuthority =>
      TfRef.attribute<String>(this, 'certificate_authority');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `zone_tag` attribute.
  TfRef<String> get zoneTag => TfRef.attribute<String>(this, 'zone_tag');
}
