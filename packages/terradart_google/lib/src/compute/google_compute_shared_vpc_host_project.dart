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
  }) : super(terraformType: tfType, argMap: {'project': project});

  @override
  Set<String> get sensitiveFields =>
      _googleComputeSharedVpcHostProjectSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
