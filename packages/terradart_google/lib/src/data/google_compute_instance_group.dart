// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_group`.
const Set<String> _googleComputeInstanceGroupSensitive = <String>{};

/// Factory wrapper for `google_compute_instance_group`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeInstanceGroup extends Data {
  static const String tfType = 'google_compute_instance_group';

  DataGoogleComputeInstanceGroup({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? project,
    TfArg<String>? selfLink,
    TfArg<String>? zone,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (project != null) 'project': project,
           if (selfLink != null) 'self_link': selfLink,
           if (zone != null) 'zone': zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `instances` attribute.
  TfRef<List<String>> get instances =>
      TfRef.attribute<List<String>>(this, 'instances');

  /// Reference to `named_port` attribute.
  TfRef<List<Map<String, Object?>>> get namedPort =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'named_port');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `size` attribute.
  TfRef<num> get size => TfRef.attribute<num>(this, 'size');
}
