// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_shared_vpc_host_project`.
const Set<String> _googleComputeSharedVpcHostProjectSensitive = <String>{};

/// Factory wrapper for `google_compute_shared_vpc_host_project`.
final class GoogleComputeSharedVpcHostProject extends Resource {
  static const String tfType = 'google_compute_shared_vpc_host_project';

  GoogleComputeSharedVpcHostProject({
    required super.localName,
    required TfArg<String> project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'project': project});

  @override
  Set<String> get sensitiveFields =>
      _googleComputeSharedVpcHostProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeSharedVpcHostProject>`.
  RefTo<GoogleComputeSharedVpcHostProject> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
