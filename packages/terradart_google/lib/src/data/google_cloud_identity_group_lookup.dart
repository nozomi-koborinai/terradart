// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_identity_group_lookup`.
const Set<String> _googleCloudIdentityGroupLookupSensitive = <String>{};

/// Typed helper for the `group_key` block of
/// `google_cloud_identity_group_lookup` (derived from provider schema).
@immutable
final class DataCloudIdentityGroupLookupGroupKey {
  const DataCloudIdentityGroupLookupGroupKey({
    required this.id,
    this.namespace,
  });

  final TfArg<String> id;

  final TfArg<String>? namespace;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
  };
}

/// Factory wrapper for `google_cloud_identity_group_lookup`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudIdentityGroupLookup extends Data {
  static const String tfType = 'google_cloud_identity_group_lookup';

  DataGoogleCloudIdentityGroupLookup({
    required super.localName,
    required DataCloudIdentityGroupLookupGroupKey groupKey,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'group_key': TfArg.literal(groupKey.encode())},
       );

  @override
  Set<String> get sensitiveFields => _googleCloudIdentityGroupLookupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
