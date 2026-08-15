// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_identity_group_lookup`.
const Set<String> _googleCloudIdentityGroupLookupSensitive = <String>{};

/// Factory wrapper for `google_cloud_identity_group_lookup`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudIdentityGroupLookup extends Data {
  static const String tfType = 'google_cloud_identity_group_lookup';

  DataGoogleCloudIdentityGroupLookup({
    required super.localName,
    required TfArg<Map<String, dynamic>> groupKey,
  }) : super(terraformType: tfType, argMap: {'group_key': groupKey});

  @override
  Set<String> get sensitiveFields => _googleCloudIdentityGroupLookupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
