// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_folder_iam_policy`.
const Set<String> _googleFolderIamPolicySensitive = <String>{};

/// Factory wrapper for `google_folder_iam_policy`.
///
/// Authoritative IAM policy for a GCP folder.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleFolderIamMember] for single-principal grants.
final class GoogleFolderIamPolicy extends Resource {
  static const String tfType = 'google_folder_iam_policy';

  GoogleFolderIamPolicy({
    required super.localName,
    required TfArg<String> folder,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'folder': folder, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googleFolderIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
