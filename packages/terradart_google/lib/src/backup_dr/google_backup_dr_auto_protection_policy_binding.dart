// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_auto_protection_policy_binding`.
const Set<String> _googleBackupDrAutoProtectionPolicyBindingSensitive =
    <String>{};

/// Factory wrapper for `google_backup_dr_auto_protection_policy_binding`.
///
/// An AutoProtectionPolicyBinding applies an AutoProtectionPolicy to a scope,
/// such as a project. Once bound, the policy automatically protects the
/// eligible resources in that scope that match its criteria.
final class GoogleBackupDrAutoProtectionPolicyBinding extends Resource {
  static const String tfType =
      'google_backup_dr_auto_protection_policy_binding';

  GoogleBackupDrAutoProtectionPolicyBinding(
    super.localName, {
    required TfArg<String> autoProtectionPolicyBindingId,
    required TfArg<String> autoProtectionPolicyId,
    TfArg<String>? deletionPolicy,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> scope,
    TfArg<bool>? waitForDelete,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_protection_policy_binding_id': autoProtectionPolicyBindingId,
           'auto_protection_policy_id': autoProtectionPolicyId,
           'deletion_policy': ?deletionPolicy,
           'location': location,
           'project': ?project,
           'scope': scope,
           'wait_for_delete': ?waitForDelete,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBackupDrAutoProtectionPolicyBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBackupDrAutoProtectionPolicyBinding>`.
  RefTo<GoogleBackupDrAutoProtectionPolicyBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `binding_evaluation_summary` attribute.
  TfRef<List<Map<String, Object?>>> get bindingEvaluationSummary =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'binding_evaluation_summary',
      );

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `auto_protection_policy_binding_id` attribute.
  TfRef<String> get autoProtectionPolicyBindingId =>
      TfRef.attribute<String>(this, 'auto_protection_policy_binding_id');

  /// Reference to `auto_protection_policy_id` attribute.
  TfRef<String> get autoProtectionPolicyId =>
      TfRef.attribute<String>(this, 'auto_protection_policy_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `wait_for_delete` attribute.
  TfRef<bool> get waitForDelete =>
      TfRef.attribute<bool>(this, 'wait_for_delete');
}
