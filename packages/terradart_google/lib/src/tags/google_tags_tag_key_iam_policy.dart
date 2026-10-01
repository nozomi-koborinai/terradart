// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../tags/google_tags_tag_key.dart' show GoogleTagsTagKey;

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
    required RefTo<GoogleTagsTagKey> tagKey,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'tag_key': tagKey.encodeAs('id'), 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagKeyIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleTagsTagKeyIamPolicy>`.
  RefTo<GoogleTagsTagKeyIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `tag_key` attribute.
  TfRef<String> get tagKeyRef => TfRef.attribute<String>(this, 'tag_key');
}
