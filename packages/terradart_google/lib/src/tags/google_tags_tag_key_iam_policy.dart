// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tags_tag_key_iam_policy`.
const Set<String> _googleTagsTagKeyIamPolicySensitive = <String>{};

/// Factory wrapper for `google_tags_tag_key_iam_policy`.
///
/// Authoritative IAM policy for a Resource Manager tag key.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleTagsTagKeyIamMember] for single-principal grants.
final class GoogleTagsTagKeyIamPolicy extends Resource {
  static const String tfType = 'google_tags_tag_key_iam_policy';

  GoogleTagsTagKeyIamPolicy({
    required super.localName,
    required TfArg<String> tagKey,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'tag_key': tagKey, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagKeyIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
