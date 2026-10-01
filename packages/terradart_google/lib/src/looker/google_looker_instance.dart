// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

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

  final TfArg<List<String>>? allowedEmailDomains;

  Map<String, Object?> encode() => {
    'allowed_email_domains': ?allowedEmailDomains?.toTfJson(),
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

  final TfArg<List<String>>? egressFqdns;

  final TfArg<bool>? marketplaceEnabled;

  Map<String, Object?> encode() => {
    'egress_fqdns': ?egressFqdns?.toTfJson(),
    'marketplace_enabled': ?marketplaceEnabled?.toTfJson(),
  };
}

/// Typed helper for the `custom_domain` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceCustomDomain {
  const LookerInstanceCustomDomain({this.domain});

  final TfArg<String>? domain;

  Map<String, Object?> encode() => {'domain': ?domain?.toTfJson()};
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

  final LookerInstanceEndDate endDate;

  final LookerInstanceStartDate startDate;

  final LookerInstanceTime time;

  Map<String, Object?> encode() => {
    'end_date': endDate.encode(),
    'start_date': startDate.encode(),
    'time': time.encode(),
  };
}

/// Typed helper for the `deny_maintenance_period.end_date` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceEndDate {
  const LookerInstanceEndDate({this.day, this.month, this.year});

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deny_maintenance_period.start_date` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceStartDate {
  const LookerInstanceStartDate({this.day, this.month, this.year});

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    'day': ?day?.toTfJson(),
    'month': ?month?.toTfJson(),
    'year': ?year?.toTfJson(),
  };
}

/// Typed helper for the `deny_maintenance_period.time` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceTime {
  const LookerInstanceTime({
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
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
  };
}

/// Typed helper for the `encryption_config` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceEncryptionConfig {
  const LookerInstanceEncryptionConfig({this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
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

  final TfArg<LookerInstanceDayOfWeek> dayOfWeek;

  final LookerInstanceStartTime startTime;

  Map<String, Object?> encode() => {
    'day_of_week': dayOfWeek.toTfJson(),
    'start_time': startTime.encode(),
  };
}

/// `day_of_week` — derived from the provider schema description.
enum LookerInstanceDayOfWeek implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const LookerInstanceDayOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `maintenance_window.start_time` block of
/// `google_looker_instance` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class LookerInstanceStartTime {
  const LookerInstanceStartTime({
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
    'hours': ?hours?.toTfJson(),
    'minutes': ?minutes?.toTfJson(),
    'nanos': ?nanos?.toTfJson(),
    'seconds': ?seconds?.toTfJson(),
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

  final RefTo<GoogleKmsCryptoKey> kmsKey;

  final LookerInstanceStartTime startTime;

  Map<String, Object?> encode() => {
    'gcs_uri': gcsUri.toTfJson(),
    'kms_key': kmsKey.encodeAs('id').toTfJson(),
    'start_time': startTime.encode(),
  };
}

/// Typed helper for the `psc_config` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstancePscConfig {
  const LookerInstancePscConfig({this.allowedVpcs, this.serviceAttachments});

  final TfArg<List<String>>? allowedVpcs;

  final List<LookerInstanceServiceAttachments>? serviceAttachments;

  Map<String, Object?> encode() => {
    'allowed_vpcs': ?allowedVpcs?.toTfJson(),
    if (serviceAttachments != null)
      'service_attachments': [for (final e in serviceAttachments!) e.encode()],
  };
}

/// Typed helper for the `psc_config.service_attachments` block of
/// `google_looker_instance` (derived from provider schema).
@immutable
final class LookerInstanceServiceAttachments {
  const LookerInstanceServiceAttachments({
    this.localFqdn,
    this.targetServiceAttachmentUri,
  });

  final TfArg<String>? localFqdn;

  final TfArg<String>? targetServiceAttachmentUri;

  Map<String, Object?> encode() => {
    'local_fqdn': ?localFqdn?.toTfJson(),
    'target_service_attachment_uri': ?targetServiceAttachmentUri?.toTfJson(),
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
    'additional_developer_user_count': ?additionalDeveloperUserCount
        ?.toTfJson(),
    'additional_standard_user_count': ?additionalStandardUserCount?.toTfJson(),
    'additional_viewer_user_count': ?additionalViewerUserCount?.toTfJson(),
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
///   'bi',
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

  GoogleLookerInstance(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<LookerInstancePlatformEdition>? platformEdition,
    required LookerInstanceOauthConfig oauthConfig,
    RefTo<GoogleComputeNetwork>? consumerNetwork,
    LookerInstanceAdminSettings? adminSettings,
    LookerInstanceMaintenanceWindow? maintenanceWindow,
    LookerInstanceEncryptionConfig? encryptionConfig,
    LookerInstanceCustomDomain? customDomain,
    LookerInstanceDenyMaintenancePeriod? denyMaintenancePeriod,
    LookerInstanceControlledEgressConfig? controlledEgressConfig,
    LookerInstancePeriodicExportConfig? periodicExportConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<bool>? controlledEgressEnabled,
    TfArg<bool>? fipsEnabled,
    TfArg<bool>? geminiEnabled,
    TfArg<bool>? privateIpEnabled,
    TfArg<bool>? pscEnabled,
    TfArg<bool>? publicIpEnabled,
    TfArg<String>? reservedRange,
    LookerInstancePscConfig? pscConfig,
    LookerInstanceUserMetadata? userMetadata,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'platform_edition': ?platformEdition,
           'oauth_config': TfArg.literal(oauthConfig.encode()),
           'consumer_network': ?consumerNetwork?.encodeAs('id'),
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
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'controlled_egress_enabled': ?controlledEgressEnabled,
           'fips_enabled': ?fipsEnabled,
           'gemini_enabled': ?geminiEnabled,
           'private_ip_enabled': ?privateIpEnabled,
           'psc_enabled': ?pscEnabled,
           'public_ip_enabled': ?publicIpEnabled,
           'reserved_range': ?reservedRange,
           if (pscConfig != null)
             'psc_config': TfArg.literal(pscConfig.encode()),
           if (userMetadata != null)
             'user_metadata': TfArg.literal(userMetadata.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLookerInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleLookerInstance>`.
  RefTo<GoogleLookerInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `consumer_network` attribute.
  TfRef<String> get consumerNetwork =>
      TfRef.attribute<String>(this, 'consumer_network');

  /// Reference to `controlled_egress_enabled` attribute.
  TfRef<bool> get controlledEgressEnabled =>
      TfRef.attribute<bool>(this, 'controlled_egress_enabled');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `fips_enabled` attribute.
  TfRef<bool> get fipsEnabled => TfRef.attribute<bool>(this, 'fips_enabled');

  /// Reference to `gemini_enabled` attribute.
  TfRef<bool> get geminiEnabled =>
      TfRef.attribute<bool>(this, 'gemini_enabled');

  /// Reference to `platform_edition` attribute.
  TfRef<String> get platformEdition =>
      TfRef.attribute<String>(this, 'platform_edition');

  /// Reference to `private_ip_enabled` attribute.
  TfRef<bool> get privateIpEnabled =>
      TfRef.attribute<bool>(this, 'private_ip_enabled');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `psc_enabled` attribute.
  TfRef<bool> get pscEnabled => TfRef.attribute<bool>(this, 'psc_enabled');

  /// Reference to `public_ip_enabled` attribute.
  TfRef<bool> get publicIpEnabled =>
      TfRef.attribute<bool>(this, 'public_ip_enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `reserved_range` attribute.
  TfRef<String> get reservedRange =>
      TfRef.attribute<String>(this, 'reserved_range');
}
