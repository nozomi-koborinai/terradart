// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_groups`.
const Set<String> _googleComputeInstanceGroupsSensitive = <String>{};

/// Factory wrapper for `google_compute_instance_groups`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeInstanceGroups extends Data {
  static const String tfType = 'google_compute_instance_groups';

  DataGoogleComputeInstanceGroups({
    required super.localName,
    TfArg<String>? filter,
    TfArg<String>? project,
    TfArg<String>? zone,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           if (project != null) 'project': project,
           if (zone != null) 'zone': zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceGroupsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instance_groups` attribute.
  TfRef<List<Map<String, Object?>>> get instanceGroups =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'instance_groups');
}
