// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netapp_volume_quota_rule`.
const Set<String> _googleNetappVolumeQuotaRuleSensitive = <String>{};

/// Netapp Volume Quota Rule enum for `type`.
enum NetappVolumeQuotaRuleType implements TerraformEnum {
  individualUserQuota('INDIVIDUAL_USER_QUOTA'),
  individualGroupQuota('INDIVIDUAL_GROUP_QUOTA'),
  defaultUserQuota('DEFAULT_USER_QUOTA'),
  defaultGroupQuota('DEFAULT_GROUP_QUOTA');

  const NetappVolumeQuotaRuleType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_netapp_volume_quota_rule`.
///
/// QuotaRule specifies the maximum capacity a user or group can use within a
/// volume. They can be used for creating default and individual quota rules.
///
/// NetApp Volumes **quota rule** on a [GoogleNetappVolume].
///
/// **Cost:** gcp-cost: no Cloud Billing Catalog SKU under `FC86-5113-7C81`
/// (list_skus keyword quota → 0). billing-behavior: quota metadata only —
/// volume capacity is carved from a never_apply pool. Deferred with the
/// pool Wave (no apply-smoke quickstart).
final class GoogleNetappVolumeQuotaRule extends Resource {
  static const String tfType = 'google_netapp_volume_quota_rule';

  GoogleNetappVolumeQuotaRule({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> volumeName,
    required TfArg<String> type,
    required TfArg<num> diskLimitMib,
    TfArg<String>? target,
    TfArg<String>? location,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'volume_name': volumeName,
           'type': type,
           'disk_limit_mib': diskLimitMib,
           if (target != null) 'target': target,
           if (location != null) 'location': location,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappVolumeQuotaRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_details` attribute.
  TfRef<String> get stateDetails =>
      TfRef.attribute<String>(this, 'state_details');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
