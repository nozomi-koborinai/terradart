// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_instance_group`.
const Set<String> _googleComputeRegionInstanceGroupSensitive = <String>{};

/// Factory wrapper for `google_compute_region_instance_group`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeRegionInstanceGroup extends Data {
  static const String tfType = 'google_compute_region_instance_group';

  DataGoogleComputeRegionInstanceGroup({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? selfLink,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (selfLink != null) 'self_link': selfLink,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionInstanceGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instances` attribute.
  TfRef<List<Map<String, Object?>>> get instances =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'instances');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');
}
