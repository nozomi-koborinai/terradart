// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../design/google_design_center_space.dart' show GoogleDesignCenterSpace;

/// Sensitive field paths for `google_design_center_space_iam_policy`.
const Set<String> _googleDesignCenterSpaceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_design_center_space_iam_policy`.
///
/// Authoritative IAM policy.
///
/// Replaces the entire IAM policy, overwriting grants
/// made outside this stack. Prefer the additive
/// `google_design_center_space_iam_member` for single grants.
final class GoogleDesignCenterSpaceIamPolicy extends Resource {
  static const String tfType = 'google_design_center_space_iam_policy';

  GoogleDesignCenterSpaceIamPolicy(
    super.localName, {
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    required RefTo<GoogleDesignCenterSpace> space,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?(location ?? space.alsoAs('location')),
           'policy_data': policyData,
           'project': ?(project ?? space.alsoAs('project')),
           'space_id': space.encodeAs('space_id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDesignCenterSpaceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDesignCenterSpaceIamPolicy>`.
  RefTo<GoogleDesignCenterSpaceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `space_id` attribute.
  TfRef<String> get spaceId => TfRef.attribute<String>(this, 'space_id');
}
