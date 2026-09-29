// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_compute_subnetwork_iam_member`.
const Set<String> _googleComputeSubnetworkIamMemberSensitive = <String>{};

/// Factory wrapper for `google_compute_subnetwork_iam_member`.
final class GoogleComputeSubnetworkIamMember extends Resource {
  static const String tfType = 'google_compute_subnetwork_iam_member';

  GoogleComputeSubnetworkIamMember({
    required super.localName,
    required RefTo<GoogleComputeSubnetwork> subnetwork,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'subnetwork': subnetwork.encodeAs('id'),
           'role': role,
           'member': member,
           'condition': ?condition,
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSubnetworkIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeSubnetworkIamMember>`.
  RefTo<GoogleComputeSubnetworkIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
