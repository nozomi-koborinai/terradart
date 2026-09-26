// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudtrail_event_data_store`.
const Set<String> _awsCloudtrailEventDataStoreSensitive = <String>{};

/// Typed helper for the `advanced_event_selector` block of
/// `aws_cloudtrail_event_data_store` (derived from provider schema).
@immutable
final class CloudtrailEventDataStoreAdvancedEventSelector {
  const CloudtrailEventDataStoreAdvancedEventSelector({
    this.name,
    this.fieldSelector,
  });

  final TfArg<String>? name;

  final List<CloudtrailEventDataStoreAdvancedEventSelectorFieldSelector>?
  fieldSelector;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (fieldSelector != null)
      'field_selector': [for (final e in fieldSelector!) e.encode()],
  };
}

/// Typed helper for the `advanced_event_selector.field_selector` block of
/// `aws_cloudtrail_event_data_store` (derived from provider schema).
@immutable
final class CloudtrailEventDataStoreAdvancedEventSelectorFieldSelector {
  const CloudtrailEventDataStoreAdvancedEventSelectorFieldSelector({
    this.endsWith,
    this.equals,
    this.field,
    this.notEndsWith,
    this.notEquals,
    this.notStartsWith,
    this.startsWith,
  });

  final TfArg<List<Object?>>? endsWith;

  final TfArg<List<Object?>>? equals;

  final TfArg<String>? field;

  final TfArg<List<Object?>>? notEndsWith;

  final TfArg<List<Object?>>? notEquals;

  final TfArg<List<Object?>>? notStartsWith;

  final TfArg<List<Object?>>? startsWith;

  Map<String, Object?> encode() => {
    if (endsWith != null) 'ends_with': endsWith!.toTfJson(),
    if (equals != null) 'equals': equals!.toTfJson(),
    if (field != null) 'field': field!.toTfJson(),
    if (notEndsWith != null) 'not_ends_with': notEndsWith!.toTfJson(),
    if (notEquals != null) 'not_equals': notEquals!.toTfJson(),
    if (notStartsWith != null) 'not_starts_with': notStartsWith!.toTfJson(),
    if (startsWith != null) 'starts_with': startsWith!.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudtrail_event_data_store`.
final class AwsCloudtrailEventDataStore extends Resource {
  static const String tfType = 'aws_cloudtrail_event_data_store';

  AwsCloudtrailEventDataStore({
    required super.localName,
    TfArg<String>? billingMode,
    TfArg<String>? kmsKeyId,
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
           if (billingMode != null) 'billing_mode': billingMode,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (multiRegionEnabled != null)
             'multi_region_enabled': multiRegionEnabled,
           'name': name,
           if (organizationEnabled != null)
             'organization_enabled': organizationEnabled,
           if (region != null) 'region': region,
           if (retentionPeriod != null) 'retention_period': retentionPeriod,
           if (suspend != null) 'suspend': suspend,
           if (tags != null) 'tags': tags,
           if (terminationProtectionEnabled != null)
             'termination_protection_enabled': terminationProtectionEnabled,
           if (advancedEventSelector != null)
             'advanced_event_selector': TfArg.literal([
               for (final e in advancedEventSelector) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudtrailEventDataStoreSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
