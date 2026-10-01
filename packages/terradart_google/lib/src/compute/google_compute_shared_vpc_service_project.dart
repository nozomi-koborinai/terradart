// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_shared_vpc_service_project`.
const Set<String> _googleComputeSharedVpcServiceProjectSensitive = <String>{};

/// Factory wrapper for `google_compute_shared_vpc_service_project`.
final class GoogleComputeSharedVpcServiceProject extends Resource {
  static const String tfType = 'google_compute_shared_vpc_service_project';

  GoogleComputeSharedVpcServiceProject(
    super.localName, {
    required TfArg<String> hostProject,
    required TfArg<String> serviceProject,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'host_project': hostProject,
           'service_project': serviceProject,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeSharedVpcServiceProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeSharedVpcServiceProject>`.
  RefTo<GoogleComputeSharedVpcServiceProject> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `host_project` attribute.
  TfRef<String> get hostProject =>
      TfRef.attribute<String>(this, 'host_project');

  /// Reference to `service_project` attribute.
  TfRef<String> get serviceProject =>
      TfRef.attribute<String>(this, 'service_project');
}
