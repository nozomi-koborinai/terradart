// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_resize_request`.
const Set<String> _googleComputeRegionResizeRequestSensitive = <String>{};

/// Factory wrapper for `google_compute_region_resize_request`.
final class GoogleComputeRegionResizeRequest extends Resource {
  static const String tfType = 'google_compute_region_resize_request';

  GoogleComputeRegionResizeRequest({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> instanceGroupManager,
    required TfArg<num> resizeBy,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'instance_group_manager': instanceGroupManager,
           'resize_by': resizeBy,
           if (region != null) 'region': region,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRegionResizeRequestSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');
}
