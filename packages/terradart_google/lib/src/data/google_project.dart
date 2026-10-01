// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project`.
const Set<String> _googleProjectSensitive = <String>{};

/// Factory wrapper for `google_project`.
///
/// Use to look up the active project's `number`, `name`, etc., for
/// downstream references (e.g. CMEK service-account email composition).
///
/// Example:
/// ```dart
/// final current = stack.add(DataGoogleProject('current'));
/// final cmekBinding = GooglePubsubTopicIamMember(
///   'pubsub_cmek',
///   topic: topic.ref,
///   role: TfArg.literal('roles/cloudkms.cryptoKeyEncrypterDecrypter'),
///   member: .serviceAccount(
///     'service-${current.number.interpolation}@gcp-sa-pubsub.iam.gserviceaccount.com',
///   ),
/// );
/// ```
final class DataGoogleProject extends Data {
  static const String tfType = 'google_project';

  DataGoogleProject(
    super.localName, {
    TfArg<String>? projectId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'project_id': ?projectId});

  @override
  Set<String> get sensitiveFields => _googleProjectSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_create_network` attribute.
  TfRef<bool> get autoCreateNetwork =>
      TfRef.attribute<bool>(this, 'auto_create_network');

  /// Reference to `billing_account` attribute.
  TfRef<String> get billingAccount =>
      TfRef.attribute<String>(this, 'billing_account');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `folder_id` attribute.
  TfRef<String> get folderId => TfRef.attribute<String>(this, 'folder_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `number` attribute.
  TfRef<String> get number => TfRef.attribute<String>(this, 'number');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  TfRef<String> get name => TfRef.attribute<String>(this, 'name');
}
