// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_core_network`.
const Set<String> _awsNetworkmanagerCoreNetworkSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_core_network`.
final class AwsNetworkmanagerCoreNetwork extends Resource {
  static const String tfType = 'aws_networkmanager_core_network';

  AwsNetworkmanagerCoreNetwork({
    required super.localName,
    TfArg<String>? basePolicyDocument,
    TfArg<List<String>>? basePolicyRegions,
    TfArg<bool>? createBasePolicy,
    TfArg<String>? description,
    required TfArg<String> globalNetworkId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (basePolicyDocument != null)
             'base_policy_document': basePolicyDocument,
           if (basePolicyRegions != null)
             'base_policy_regions': basePolicyRegions,
           if (createBasePolicy != null) 'create_base_policy': createBasePolicy,
           if (description != null) 'description': description,
           'global_network_id': globalNetworkId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerCoreNetworkSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `edges` attribute.
  TfRef<List<Map<String, Object?>>> get edges =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'edges');

  /// Reference to `segments` attribute.
  TfRef<List<Map<String, Object?>>> get segments =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'segments');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
