// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_looker_instance`.
const Set<String> _googleLookerInstanceSensitive = <String>{};

/// Looker Instance Platform enum for `platform_edition`.
enum LookerInstancePlatformEdition implements TerraformEnum {
  lookerCoreTrial('LOOKER_CORE_TRIAL'),
  lookerCoreStandard('LOOKER_CORE_STANDARD'),
  lookerCoreStandardAnnual('LOOKER_CORE_STANDARD_ANNUAL'),
  lookerCoreEnterpriseAnnual('LOOKER_CORE_ENTERPRISE_ANNUAL'),
  lookerCoreEmbedAnnual('LOOKER_CORE_EMBED_ANNUAL'),
  lookerCoreNonprodStandardAnnual('LOOKER_CORE_NONPROD_STANDARD_ANNUAL'),
  lookerCoreNonprodEnterpriseAnnual('LOOKER_CORE_NONPROD_ENTERPRISE_ANNUAL'),
  lookerCoreNonprodEmbedAnnual('LOOKER_CORE_NONPROD_EMBED_ANNUAL'),
  lookerCoreTrialStandard('LOOKER_CORE_TRIAL_STANDARD'),
  lookerCoreTrialEnterprise('LOOKER_CORE_TRIAL_ENTERPRISE'),
  lookerCoreTrialEmbed('LOOKER_CORE_TRIAL_EMBED');

  const LookerInstancePlatformEdition(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `admin_settings` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceAdminSettings {
  const LookerInstanceAdminSettings({this.allowedEmailDomains});

  final TfArg<List<Object?>>? allowedEmailDomains;

  Map<String, Object?> encode() => {
    if (allowedEmailDomains != null)
      'allowed_email_domains': allowedEmailDomains!.toTfJson(),
  };
}

/// Typed helper for the `controlled_egress_config` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceControlledEgressConfig {
  const LookerInstanceControlledEgressConfig({
    this.egressFqdns,
    this.marketplaceEnabled,
  });

  final TfArg<List<Object?>>? egressFqdns;

  final TfArg<bool>? marketplaceEnabled;

  Map<String, Object?> encode() => {
    if (egressFqdns != null) 'egress_fqdns': egressFqdns!.toTfJson(),
    if (marketplaceEnabled != null)
      'marketplace_enabled': marketplaceEnabled!.toTfJson(),
  };
}

/// Typed helper for the `custom_domain` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceCustomDomain {
  const LookerInstanceCustomDomain({this.domain});

  final TfArg<String>? domain;

  Map<String, Object?> encode() => {
    if (domain != null) 'domain': domain!.toTfJson(),
  };
}

/// Typed helper for the `deny_maintenance_period` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceDenyMaintenancePeriod {
  const LookerInstanceDenyMaintenancePeriod({
    required this.endDate,
    required this.startDate,
    required this.time,
  });

  final LookerInstanceDenyMaintenancePeriodEndDate endDate;

  final LookerInstanceDenyMaintenancePeriodStartDate startDate;

  final LookerInstanceDenyMaintenancePeriodTime time;

  Map<String, Object?> encode() => {
    'end_date': endDate.encode(),
    'start_date': startDate.encode(),
    'time': time.encode(),
  };
}

/// Typed helper for the `deny_maintenance_period.end_date` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceDenyMaintenancePeriodEndDate {
  const LookerInstanceDenyMaintenancePeriodEndDate({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    if (day != null) 'day': day!.toTfJson(),
    if (month != null) 'month': month!.toTfJson(),
    if (year != null) 'year': year!.toTfJson(),
  };
}

/// Typed helper for the `deny_maintenance_period.start_date` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceDenyMaintenancePeriodStartDate {
  const LookerInstanceDenyMaintenancePeriodStartDate({
    this.day,
    this.month,
    this.year,
  });

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    if (day != null) 'day': day!.toTfJson(),
    if (month != null) 'month': month!.toTfJson(),
    if (year != null) 'year': year!.toTfJson(),
  };
}

/// Typed helper for the `deny_maintenance_period.time` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceDenyMaintenancePeriodTime {
  const LookerInstanceDenyMaintenancePeriodTime({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    if (hours != null) 'hours': hours!.toTfJson(),
    if (minutes != null) 'minutes': minutes!.toTfJson(),
    if (nanos != null) 'nanos': nanos!.toTfJson(),
    if (seconds != null) 'seconds': seconds!.toTfJson(),
  };
}

/// Typed helper for the `encryption_config` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceEncryptionConfig {
  const LookerInstanceEncryptionConfig({this.kmsKeyName});

  final TfArg<String>? kmsKeyName;

  Map<String, Object?> encode() => {
    if (kmsKeyName != null) 'kms_key_name': kmsKeyName!.toTfJson(),
  };
}

/// Typed helper for the `maintenance_window` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceMaintenanceWindow {
  const LookerInstanceMaintenanceWindow({
    required this.dayOfWeek,
    required this.startTime,
  });

  final TfArg<LookerInstanceMaintenanceWindowDayOfWeek> dayOfWeek;

  final LookerInstanceMaintenanceWindowStartTime startTime;

  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'start_time': startTime.encode(),
  };
}

/// `day_of_week` — derived from the provider schema description.
enum LookerInstanceMaintenanceWindowDayOfWeek implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const LookerInstanceMaintenanceWindowDayOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `maintenance_window.start_time` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceMaintenanceWindowStartTime {
  const LookerInstanceMaintenanceWindowStartTime({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    if (hours != null) 'hours': hours!.toTfJson(),
    if (minutes != null) 'minutes': minutes!.toTfJson(),
    if (nanos != null) 'nanos': nanos!.toTfJson(),
    if (seconds != null) 'seconds': seconds!.toTfJson(),
  };
}

/// Typed helper for the `oauth_config` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceOauthConfig {
  const LookerInstanceOauthConfig({
    required this.clientId,
    required this.clientSecret,
  });

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
  };
}

/// Typed helper for the `periodic_export_config` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstancePeriodicExportConfig {
  const LookerInstancePeriodicExportConfig({
    required this.gcsUri,
    required this.kmsKey,
    required this.startTime,
  });

  final TfArg<String> gcsUri;

  final TfArg<String> kmsKey;

  final LookerInstancePeriodicExportConfigStartTime startTime;

  Map<String, Object?> encode() => {
    'gcs_uri': gcsUri.toTfJson(),
    'kms_key': kmsKey.toTfJson(),
    'start_time': startTime.encode(),
  };
}

/// Typed helper for the `periodic_export_config.start_time` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstancePeriodicExportConfigStartTime {
  const LookerInstancePeriodicExportConfigStartTime({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  final TfArg<num>? hours;

  final TfArg<num>? minutes;

  final TfArg<num>? nanos;

  final TfArg<num>? seconds;

  Map<String, Object?> encode() => {
    if (hours != null) 'hours': hours!.toTfJson(),
    if (minutes != null) 'minutes': minutes!.toTfJson(),
    if (nanos != null) 'nanos': nanos!.toTfJson(),
    if (seconds != null) 'seconds': seconds!.toTfJson(),
  };
}

/// Typed helper for the `psc_config` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstancePscConfig {
  const LookerInstancePscConfig({this.allowedVpcs, this.serviceAttachments});

  final TfArg<List<Object?>>? allowedVpcs;

  final List<LookerInstancePscConfigServiceAttachments>? serviceAttachments;

  Map<String, Object?> encode() => {
    if (allowedVpcs != null) 'allowed_vpcs': allowedVpcs!.toTfJson(),
    if (serviceAttachments != null)
      'service_attachments': [for (final e in serviceAttachments!) e.encode()],
  };
}

/// Typed helper for the `psc_config.service_attachments` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstancePscConfigServiceAttachments {
  const LookerInstancePscConfigServiceAttachments({
    this.localFqdn,
    this.targetServiceAttachmentUri,
  });

  final TfArg<String>? localFqdn;

  final TfArg<String>? targetServiceAttachmentUri;

  Map<String, Object?> encode() => {
    if (localFqdn != null) 'local_fqdn': localFqdn!.toTfJson(),
    if (targetServiceAttachmentUri != null)
      'target_service_attachment_uri': targetServiceAttachmentUri!.toTfJson(),
  };
}

/// Typed helper for the `user_metadata` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceUserMetadata {
  const LookerInstanceUserMetadata({
    this.additionalDeveloperUserCount,
    this.additionalStandardUserCount,
    this.additionalViewerUserCount,
  });

  final TfArg<num>? additionalDeveloperUserCount;

  final TfArg<num>? additionalStandardUserCount;

  final TfArg<num>? additionalViewerUserCount;

  Map<String, Object?> encode() => {
    if (additionalDeveloperUserCount != null)
      'additional_developer_user_count': additionalDeveloperUserCount!
          .toTfJson(),
    if (additionalStandardUserCount != null)
      'additional_standard_user_count': additionalStandardUserCount!.toTfJson(),
    if (additionalViewerUserCount != null)
      'additional_viewer_user_count': additionalViewerUserCount!.toTfJson(),
  };
}

/// Factory wrapper for `google_looker_instance`.
///
/// A Google Cloud Looker instance.
///
/// Looker (Google Cloud core) **instance** — managed BI / analytics
/// platform.
///
/// **Cost:** Cloud Billing Catalog service `C71C-0952-AAC7` bills a
/// **platform fee** while the instance exists (Standard Edition SKU
/// `3F43-B8CB-2533` **$5000/count** per billing period) plus user fees
/// (Standard User `25F9-B190-39DB` **$60/count**; Developer User
/// `7CE2-9C5D-E9F4` **$125/count`). Destroy stops platform charges. Far
/// too expensive for apply-smoke — factories ship without a quickstart.
///
/// Requires [oauthConfig] (OAuth client id/secret). Enable
/// `looker.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleLookerInstance(
///   localName: 'bi',
///   name: TfArg.literal('terradart-looker'),
///   region: TfArg.literal('us-central1'),
///   platformEdition: TfArg.literal(
///     LookerInstancePlatformEdition.lookerCoreTrialStandard,
///   ),
///   oauthConfig: LookerInstanceOauthConfig(
///     clientId: TfArg.literal('…'),
///     clientSecret: TfArg.literal('…'),
///   ),
/// );
/// ```
final class GoogleLookerInstance extends Resource {
  static const String tfType = 'google_looker_instance';

  GoogleLookerInstance({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<LookerInstancePlatformEdition>? platformEdition,
    required LookerInstanceOauthConfig oauthConfig,
    TfArg<String>? consumerNetwork,
    LookerInstanceAdminSettings? adminSettings,
    LookerInstanceMaintenanceWindow? maintenanceWindow,
    LookerInstanceEncryptionConfig? encryptionConfig,
    LookerInstanceCustomDomain? customDomain,
    LookerInstanceDenyMaintenancePeriod? denyMaintenancePeriod,
    LookerInstanceControlledEgressConfig? controlledEgressConfig,
    LookerInstancePeriodicExportConfig? periodicExportConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (platformEdition != null) 'platform_edition': platformEdition,
           'oauth_config': TfArg.literal(oauthConfig.encode()),
           if (consumerNetwork != null) 'consumer_network': consumerNetwork,
           if (adminSettings != null)
             'admin_settings': TfArg.literal(adminSettings.encode()),
           if (maintenanceWindow != null)
             'maintenance_window': TfArg.literal(maintenanceWindow.encode()),
           if (encryptionConfig != null)
             'encryption_config': TfArg.literal(encryptionConfig.encode()),
           if (customDomain != null)
             'custom_domain': TfArg.literal(customDomain.encode()),
           if (denyMaintenancePeriod != null)
             'deny_maintenance_period': TfArg.literal(
               denyMaintenancePeriod.encode(),
             ),
           if (controlledEgressConfig != null)
             'controlled_egress_config': TfArg.literal(
               controlledEgressConfig.encode(),
             ),
           if (periodicExportConfig != null)
             'periodic_export_config': TfArg.literal(
               periodicExportConfig.encode(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLookerInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `egress_public_ip` attribute.
  TfRef<String> get egressPublicIp =>
      TfRef.attribute<String>(this, 'egress_public_ip');

  /// Reference to `ingress_private_ip` attribute.
  TfRef<String> get ingressPrivateIp =>
      TfRef.attribute<String>(this, 'ingress_private_ip');

  /// Reference to `ingress_public_ip` attribute.
  TfRef<String> get ingressPublicIp =>
      TfRef.attribute<String>(this, 'ingress_public_ip');

  /// Reference to `looker_uri` attribute.
  TfRef<String> get lookerUri => TfRef.attribute<String>(this, 'looker_uri');

  /// Reference to `looker_version` attribute.
  TfRef<String> get lookerVersion =>
      TfRef.attribute<String>(this, 'looker_version');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
