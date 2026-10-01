// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/google_compute_instance_group.dart';

/// Sensitive field paths for `google_compute_instance_group`.
const Set<String> _googleComputeInstanceGroupSensitive = <String>{};

/// Factory wrapper for `google_compute_instance_group`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeInstanceGroup extends Data {
  static const String tfType = 'google_compute_instance_group';

  DataGoogleComputeInstanceGroup(
    super.localName, {
    TfArg<String>? name,
    TfArg<String>? project,
    TfArg<String>? selfLink,
    TfArg<String>? zone,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'project': ?project,
           'self_link': ?selfLink,
           'zone': ?zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceGroupSensitive;

  /// A reference to the `google_compute_instance_group` this data source reads, for
  /// arguments typed `RefTo<GoogleComputeInstanceGroup>`.
  RefTo<GoogleComputeInstanceGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
