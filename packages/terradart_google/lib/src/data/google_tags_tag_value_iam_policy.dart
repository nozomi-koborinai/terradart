// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tags_tag_value_iam_policy`.
const Set<String> _googleTagsTagValueIamPolicySensitive = <String>{};

/// Factory wrapper for `google_tags_tag_value_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleTagsTagValueIamPolicy extends Data {
  static const String tfType = 'google_tags_tag_value_iam_policy';

  DataGoogleTagsTagValueIamPolicy({
    required super.localName,
    required TfArg<String> tagValue,
  }) : super(terraformType: tfType, argMap: {'tag_value': tagValue});

  @override
  Set<String> get sensitiveFields => _googleTagsTagValueIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
