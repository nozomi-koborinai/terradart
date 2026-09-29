// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dls/cloudflare_dls_prefix_binding.dart';

/// Sensitive field paths for `cloudflare_dls_prefix_binding`.
const Set<String> _cloudflareDlsPrefixBindingSensitive = <String>{};

/// Factory wrapper for `cloudflare_dls_prefix_binding`.
final class DataCloudflareDlsPrefixBinding extends Data {
  static const String tfType = 'cloudflare_dls_prefix_binding';

  DataCloudflareDlsPrefixBinding({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> bindingId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'binding_id': bindingId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDlsPrefixBindingSensitive;

  /// A reference to the `cloudflare_dls_prefix_binding` this data source reads, for
  /// arguments typed `RefTo<CloudflareDlsPrefixBinding>`.
  RefTo<CloudflareDlsPrefixBinding> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidr => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `prefix_id` attribute.
  TfRef<String> get prefixId => TfRef.attribute<String>(this, 'prefix_id');

  /// Reference to `region_key` attribute.
  TfRef<String> get regionKey => TfRef.attribute<String>(this, 'region_key');
}
