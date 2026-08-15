// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_identity_policies`.
const Set<String> _googleCloudIdentityPoliciesSensitive = <String>{};

/// Factory wrapper for `google_cloud_identity_policies`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudIdentityPolicies extends Data {
  static const String tfType = 'google_cloud_identity_policies';

  DataGoogleCloudIdentityPolicies({
    required super.localName,
    TfArg<String>? filter,
  }) : super(
         terraformType: tfType,
         argMap: {if (filter != null) 'filter': filter},
       );

  @override
  Set<String> get sensitiveFields => _googleCloudIdentityPoliciesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policies` attribute.
  TfRef<List<Map<String, Object?>>> get policies =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'policies');
}
