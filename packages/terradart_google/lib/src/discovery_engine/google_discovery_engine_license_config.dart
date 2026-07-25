// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_discovery_engine_license_config`.
const Set<String> _googleDiscoveryEngineLicenseConfigSensitive = <String>{};

/// Discovery Engine License Config Subscription enum for `subscription_term`.
enum DiscoveryEngineLicenseConfigSubscriptionTerm implements TerraformEnum {
  subscriptionTermUnspecified('SUBSCRIPTION_TERM_UNSPECIFIED'),
  subscriptionTermOneMonth('SUBSCRIPTION_TERM_ONE_MONTH'),
  subscriptionTermOneYear('SUBSCRIPTION_TERM_ONE_YEAR'),
  subscriptionTermThreeYears('SUBSCRIPTION_TERM_THREE_YEARS'),
  subscriptionTermThreeMonths('SUBSCRIPTION_TERM_THREE_MONTHS'),
  subscriptionTermFourteenDays('SUBSCRIPTION_TERM_FOURTEEN_DAYS'),
  subscriptionTermCustom('SUBSCRIPTION_TERM_CUSTOM');

  const DiscoveryEngineLicenseConfigSubscriptionTerm(this.terraformValue);
  @override
  final String terraformValue;
}

/// Discovery Engine License Config Subscription enum for `subscription_tier`.
enum DiscoveryEngineLicenseConfigSubscriptionTier implements TerraformEnum {
  subscriptionTierUnspecified('SUBSCRIPTION_TIER_UNSPECIFIED'),
  subscriptionTierSearch('SUBSCRIPTION_TIER_SEARCH'),
  subscriptionTierSearchAndAssistant('SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT'),
  subscriptionTierNotebookLm('SUBSCRIPTION_TIER_NOTEBOOK_LM'),
  subscriptionTierFrontlineWorker('SUBSCRIPTION_TIER_FRONTLINE_WORKER'),
  subscriptionTierAgentspaceStarter('SUBSCRIPTION_TIER_AGENTSPACE_STARTER'),
  subscriptionTierAgentspaceBusiness('SUBSCRIPTION_TIER_AGENTSPACE_BUSINESS'),
  subscriptionTierEnterprise('SUBSCRIPTION_TIER_ENTERPRISE'),
  subscriptionTierEdu('SUBSCRIPTION_TIER_EDU'),
  subscriptionTierEduPro('SUBSCRIPTION_TIER_EDU_PRO');

  const DiscoveryEngineLicenseConfigSubscriptionTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `end_date` block of
/// `google_discovery_engine_license_config` (derived from provider schema).
@immutable
final class DiscoveryEngineLicenseConfigEndDate {
  const DiscoveryEngineLicenseConfigEndDate({this.day, this.month, this.year});

  final TfArg<num>? day;

  final TfArg<num>? month;

  final TfArg<num>? year;

  Map<String, Object?> encode() => {
    if (day != null) 'day': day!.toTfJson(),
    if (month != null) 'month': month!.toTfJson(),
    if (year != null) 'year': year!.toTfJson(),
  };
}

/// Typed helper for the `start_date` block of
/// `google_discovery_engine_license_config` (derived from provider schema).
@immutable
final class DiscoveryEngineLicenseConfigStartDate {
  const DiscoveryEngineLicenseConfigStartDate({
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

/// Factory wrapper for `google_discovery_engine_license_config`.
///
/// License Configuration.
///
/// Vertex AI Search / Gemini Enterprise **license config** — purchased
/// seat subscriptions (`license_count` × tier × term).
///
/// **Cost / apply:** gcp-cost: Vertex AI Search `74B1-77CF-C302` Gemini
/// Enterprise Standard monthly SKU `0532-C2F0-1DF0` **$35/seat·mo** (Plus
/// `4EDF-A125-F89E` **$60/mo**; Business `D03F-9D37-4753` **$25/mo**;
/// Frontline `C3B7-10E2-45EE` **$15/mo**; NotebookLM Enterprise
/// `BF82-0F2F-7FA3` **$9/mo**). billing-behavior: **existence / seat
/// subscription** — bills per [licenseCount] for the subscription term
/// while the config exists (same class of risk as License Manager /
/// Office SPLA). Magic Modules marks the resource `exclude_delete:
/// true` (Terraform cannot destroy it). Debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// Project-level license-config creation is deprecated for Gemini
/// Enterprise upstream (MM sample `exclude_test: true`).
final class GoogleDiscoveryEngineLicenseConfig extends Resource {
  static const String tfType = 'google_discovery_engine_license_config';

  GoogleDiscoveryEngineLicenseConfig({
    required super.localName,
    required TfArg<String> licenseConfigId,
    required TfArg<String> location,
    required TfArg<num> licenseCount,
    required TfArg<DiscoveryEngineLicenseConfigSubscriptionTier>
    subscriptionTier,
    required TfArg<DiscoveryEngineLicenseConfigSubscriptionTerm>
    subscriptionTerm,
    required DiscoveryEngineLicenseConfigStartDate startDate,
    DiscoveryEngineLicenseConfigEndDate? endDate,
    TfArg<bool>? autoRenew,
    TfArg<bool>? freeTrial,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'license_config_id': licenseConfigId,
           'location': location,
           'license_count': licenseCount,
           'subscription_tier': subscriptionTier,
           'subscription_term': subscriptionTerm,
           'start_date': TfArg.literal(startDate.encode()),
           if (endDate != null) 'end_date': TfArg.literal(endDate.encode()),
           if (autoRenew != null) 'auto_renew': autoRenew,
           if (freeTrial != null) 'free_trial': freeTrial,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDiscoveryEngineLicenseConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `license_config_id` attribute.
  TfRef<String> get licenseConfigIdRef =>
      TfRef.attribute<String>(this, 'license_config_id');
}
