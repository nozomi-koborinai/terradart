// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../registrar/cloudflare_registrar_domain.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_registrar_domain`.
const Set<String> _cloudflareRegistrarDomainSensitive = <String>{};

/// Factory wrapper for `cloudflare_registrar_domain`.
final class DataCloudflareRegistrarDomain extends Data {
  static const String tfType = 'cloudflare_registrar_domain';

  DataCloudflareRegistrarDomain(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> domainName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'domain_name': domainName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareRegistrarDomainSensitive;

  /// A reference to the `cloudflare_registrar_domain` this data source reads, for
  /// arguments typed `RefTo<CloudflareRegistrarDomain>`.
  RefTo<CloudflareRegistrarDomain> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');
}
