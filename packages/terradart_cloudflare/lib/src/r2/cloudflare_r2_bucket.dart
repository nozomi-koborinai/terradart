// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_r2_bucket`.
const Set<String> _cloudflareR2BucketSensitive = <String>{};

/// Factory wrapper for `cloudflare_r2_bucket`.
///
/// Accepted Permissions
///
/// - `Workers R2 Storage Write`
final class CloudflareR2Bucket extends Resource {
  static const String tfType = 'cloudflare_r2_bucket';

  CloudflareR2Bucket({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? jurisdiction,
    TfArg<String>? location,
    required TfArg<String> name,
    TfArg<String>? storageClass,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (jurisdiction != null) 'jurisdiction': jurisdiction,
           if (location != null) 'location': location,
           'name': name,
           if (storageClass != null) 'storage_class': storageClass,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2BucketSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');
}
