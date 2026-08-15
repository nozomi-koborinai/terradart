// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privileged_access_manager_entitlement`.
const Set<String> _googlePrivilegedAccessManagerEntitlementSensitive =
    <String>{};

/// Factory wrapper for `google_privileged_access_manager_entitlement`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGooglePrivilegedAccessManagerEntitlement extends Data {
  static const String tfType = 'google_privileged_access_manager_entitlement';

  DataGooglePrivilegedAccessManagerEntitlement({
    required super.localName,
    TfArg<String>? entitlementId,
    TfArg<String>? location,
    TfArg<String>? parent,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (entitlementId != null) 'entitlement_id': entitlementId,
           if (location != null) 'location': location,
           if (parent != null) 'parent': parent,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivilegedAccessManagerEntitlementSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_notification_targets` attribute.
  TfRef<List<Map<String, Object?>>> get additionalNotificationTargets =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'additional_notification_targets',
      );

  /// Reference to `approval_workflow` attribute.
  TfRef<List<Map<String, Object?>>> get approvalWorkflow =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'approval_workflow');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `eligible_users` attribute.
  TfRef<List<Map<String, Object?>>> get eligibleUsers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'eligible_users');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `max_request_duration` attribute.
  TfRef<String> get maxRequestDuration =>
      TfRef.attribute<String>(this, 'max_request_duration');

  /// Reference to `privileged_access` attribute.
  TfRef<List<Map<String, Object?>>> get privilegedAccess =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'privileged_access');

  /// Reference to `requester_justification_config` attribute.
  TfRef<List<Map<String, Object?>>> get requesterJustificationConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'requester_justification_config',
      );

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
