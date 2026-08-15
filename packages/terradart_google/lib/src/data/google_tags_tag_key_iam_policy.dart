// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tags_tag_key_iam_policy`.
const Set<String> _googleTagsTagKeyIamPolicySensitive = <String>{};

/// Factory wrapper for `google_tags_tag_key_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleTagsTagKeyIamPolicy extends Data {
  static const String tfType = 'google_tags_tag_key_iam_policy';

  DataGoogleTagsTagKeyIamPolicy({
    required super.localName,
    required TfArg<String> tagKey,
  }) : super(terraformType: tfType, argMap: {'tag_key': tagKey});

  @override
  Set<String> get sensitiveFields => _googleTagsTagKeyIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
