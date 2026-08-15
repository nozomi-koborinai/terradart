// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_identity_groups`.
const Set<String> _googleCloudIdentityGroupsSensitive = <String>{};

/// Factory wrapper for `google_cloud_identity_groups`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudIdentityGroups extends Data {
  static const String tfType = 'google_cloud_identity_groups';

  DataGoogleCloudIdentityGroups({
    required super.localName,
    required TfArg<String> parent,
  }) : super(terraformType: tfType, argMap: {'parent': parent});

  @override
  Set<String> get sensitiveFields => _googleCloudIdentityGroupsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `groups` attribute.
  TfRef<List<Map<String, Object?>>> get groups =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'groups');
}
