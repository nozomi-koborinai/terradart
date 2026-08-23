// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_r2_managed_domain`.
const Set<String> _cloudflareR2ManagedDomainSensitive = <String>{};

/// Factory wrapper for `cloudflare_r2_managed_domain`.
final class CloudflareR2ManagedDomain extends Resource {
  static const String tfType = 'cloudflare_r2_managed_domain';

  CloudflareR2ManagedDomain({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> bucketName,
    required TfArg<bool> enabled,
    TfArg<String>? jurisdiction,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'bucket_name': bucketName,
           'enabled': enabled,
           if (jurisdiction != null) 'jurisdiction': jurisdiction,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2ManagedDomainSensitive;

  /// Reference to `bucket_id` attribute.
  TfRef<String> get bucketId => TfRef.attribute<String>(this, 'bucket_id');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');
}
