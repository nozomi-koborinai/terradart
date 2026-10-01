// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../tags/google_tags_tag_value.dart' show GoogleTagsTagValue;

/// Sensitive field paths for `google_tags_tag_value_iam_policy`.
const Set<String> _googleTagsTagValueIamPolicySensitive = <String>{};

/// Factory wrapper for `google_tags_tag_value_iam_policy`.
///
/// Authoritative IAM policy for a Resource Manager tag value.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleTagsTagValueIamMember] for single-principal grants.
final class GoogleTagsTagValueIamPolicy extends Resource {
  static const String tfType = 'google_tags_tag_value_iam_policy';

  GoogleTagsTagValueIamPolicy(
    super.localName, {
    required RefTo<GoogleTagsTagValue> tagValue,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tag_value': tagValue.encodeAs('id'),
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagValueIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleTagsTagValueIamPolicy>`.
  RefTo<GoogleTagsTagValueIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `tag_value` attribute.
  TfRef<String> get tagValue => TfRef.attribute<String>(this, 'tag_value');
}
