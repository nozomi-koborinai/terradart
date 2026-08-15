// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_global_address`.
const Set<String> _googleComputeGlobalAddressSensitive = <String>{};

/// Factory wrapper for `google_compute_global_address`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeGlobalAddress extends Data {
  static const String tfType = 'google_compute_global_address';

  DataGoogleComputeGlobalAddress({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googleComputeGlobalAddressSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `address_type` attribute.
  TfRef<String> get addressType =>
      TfRef.attribute<String>(this, 'address_type');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `network_tier` attribute.
  TfRef<String> get networkTier =>
      TfRef.attribute<String>(this, 'network_tier');

  /// Reference to `prefix_length` attribute.
  TfRef<num> get prefixLength => TfRef.attribute<num>(this, 'prefix_length');

  /// Reference to `purpose` attribute.
  TfRef<String> get purpose => TfRef.attribute<String>(this, 'purpose');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');

  /// Reference to `users` attribute.
  TfRef<String> get users => TfRef.attribute<String>(this, 'users');
}
