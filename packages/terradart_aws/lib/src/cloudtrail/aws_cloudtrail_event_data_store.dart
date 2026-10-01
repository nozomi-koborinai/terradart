// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_cloudtrail_event_data_store`.
const Set<String> _awsCloudtrailEventDataStoreSensitive = <String>{};

/// Cloudtrail Event Data Store Billing enum for `billing_mode`.
enum CloudtrailEventDataStoreBillingMode implements TerraformEnum {
  extendableRetentionPricing('EXTENDABLE_RETENTION_PRICING'),
  fixedRetentionPricing('FIXED_RETENTION_PRICING');

  const CloudtrailEventDataStoreBillingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `advanced_event_selector` block of
/// `aws_cloudtrail_event_data_store` (derived from provider schema).
@immutable
final class CloudtrailEventDataStoreAdvancedEventSelector {
  const CloudtrailEventDataStoreAdvancedEventSelector({
    this.name,
    this.fieldSelector,
  });

  final TfArg<String>? name;

  final List<CloudtrailEventDataStoreFieldSelector>? fieldSelector;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    if (fieldSelector != null)
      'field_selector': [for (final e in fieldSelector!) e.encode()],
  };
}

/// Typed helper for the `advanced_event_selector.field_selector` block of
/// `aws_cloudtrail_event_data_store` (derived from provider schema).
@immutable
final class CloudtrailEventDataStoreFieldSelector {
  const CloudtrailEventDataStoreFieldSelector({
    this.endsWith,
    this.equals,
    this.field,
    this.notEndsWith,
    this.notEquals,
    this.notStartsWith,
    this.startsWith,
  });

  final TfArg<List<String>>? endsWith;

  final TfArg<List<String>>? equals;

  final TfArg<CloudtrailEventDataStoreField>? field;

  final TfArg<List<String>>? notEndsWith;

  final TfArg<List<String>>? notEquals;

  final TfArg<List<String>>? notStartsWith;

  final TfArg<List<String>>? startsWith;

  Map<String, Object?> encode() => {
    'ends_with': ?endsWith?.toTfJson(),
    'equals': ?equals?.toTfJson(),
    'field': ?field?.toTfJson(),
    'not_ends_with': ?notEndsWith?.toTfJson(),
    'not_equals': ?notEquals?.toTfJson(),
    'not_starts_with': ?notStartsWith?.toTfJson(),
    'starts_with': ?startsWith?.toTfJson(),
  };
}

/// `field` — derived from the provider schema description.
enum CloudtrailEventDataStoreField implements TerraformEnum {
  errorcode('errorCode'),
  eventcategory('eventCategory'),
  eventname('eventName'),
  eventsource('eventSource'),
  eventtype('eventType'),
  readonly('readOnly'),
  resourcesArn('resources.ARN'),
  resourcesType('resources.type'),
  sessioncredentialfromconsole('sessionCredentialFromConsole'),
  useridentityArn('userIdentity.arn'),
  vpcendpointid('vpcEndpointId');

  const CloudtrailEventDataStoreField(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudtrail_event_data_store`.
final class AwsCloudtrailEventDataStore extends Resource {
  static const String tfType = 'aws_cloudtrail_event_data_store';

  AwsCloudtrailEventDataStore({
    required super.localName,
    TfArg<CloudtrailEventDataStoreBillingMode>? billingMode,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<bool>? multiRegionEnabled,
    required TfArg<String> name,
    TfArg<bool>? organizationEnabled,
    TfArg<String>? region,
    TfArg<num>? retentionPeriod,
    TfArg<String>? suspend,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? terminationProtectionEnabled,
    List<CloudtrailEventDataStoreAdvancedEventSelector>? advancedEventSelector,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'billing_mode': ?billingMode,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'multi_region_enabled': ?multiRegionEnabled,
           'name': name,
           'organization_enabled': ?organizationEnabled,
           'region': ?region,
           'retention_period': ?retentionPeriod,
           'suspend': ?suspend,
           'tags': ?tags,
           'termination_protection_enabled': ?terminationProtectionEnabled,
           if (advancedEventSelector != null)
             'advanced_event_selector': TfArg.literal([
               for (final e in advancedEventSelector) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudtrailEventDataStoreSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudtrailEventDataStore>`.
  RefTo<AwsCloudtrailEventDataStore> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `billing_mode` attribute.
  TfRef<String> get billingMode =>
      TfRef.attribute<String>(this, 'billing_mode');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `multi_region_enabled` attribute.
  TfRef<bool> get multiRegionEnabled =>
      TfRef.attribute<bool>(this, 'multi_region_enabled');

  /// Reference to `organization_enabled` attribute.
  TfRef<bool> get organizationEnabled =>
      TfRef.attribute<bool>(this, 'organization_enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `retention_period` attribute.
  TfRef<num> get retentionPeriod =>
      TfRef.attribute<num>(this, 'retention_period');

  /// Reference to `suspend` attribute.
  TfRef<String> get suspend => TfRef.attribute<String>(this, 'suspend');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `termination_protection_enabled` attribute.
  TfRef<bool> get terminationProtectionEnabled =>
      TfRef.attribute<bool>(this, 'termination_protection_enabled');
}
