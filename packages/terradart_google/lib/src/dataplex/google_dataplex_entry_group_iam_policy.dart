// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_entry_group.dart'
    show GoogleDataplexEntryGroup;

/// Sensitive field paths for `google_dataplex_entry_group_iam_policy`.
const Set<String> _googleDataplexEntryGroupIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataplex_entry_group_iam_policy`.
///
/// Authoritative IAM policy for a Dataplex entry group.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleDataplexEntryGroupIamMember] for single-principal grants.
final class GoogleDataplexEntryGroupIamPolicy extends Resource {
  static const String tfType = 'google_dataplex_entry_group_iam_policy';

  GoogleDataplexEntryGroupIamPolicy({
    required super.localName,
    required RefTo<GoogleDataplexEntryGroup> entryGroup,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_group_id': entryGroup.encodeAs('entry_group_id'),
           'policy_data': policyData,
           'location': ?(location ?? entryGroup.alsoAs('location')),
           'project': ?(project ?? entryGroup.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexEntryGroupIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexEntryGroupIamPolicy>`.
  RefTo<GoogleDataplexEntryGroupIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `entry_group_id` attribute.
  TfRef<String> get entryGroupId =>
      TfRef.attribute<String>(this, 'entry_group_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
