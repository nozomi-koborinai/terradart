// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_core_network`.
const Set<String> _awsNetworkmanagerCoreNetworkSensitive = <String>{};

/// At most one of `base_policy_document`, `base_policy_regions` on `aws_networkmanager_core_network`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.basePolicyDocument(...)`.
sealed class NetworkmanagerCoreNetworkBasePolicy {
  const NetworkmanagerCoreNetworkBasePolicy();

  /// Sets `base_policy_document`.
  const factory NetworkmanagerCoreNetworkBasePolicy.basePolicyDocument(
    TfArg<String> basePolicyDocument,
  ) = NetworkmanagerCoreNetworkBasePolicyDocument;

  /// Sets `base_policy_regions`.
  const factory NetworkmanagerCoreNetworkBasePolicy.basePolicyRegions(
    TfArg<List<String>> basePolicyRegions,
  ) = NetworkmanagerCoreNetworkBasePolicyRegions;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkmanagerCoreNetworkBasePolicy.basePolicyDocument] choice: sets `base_policy_document`.
final class NetworkmanagerCoreNetworkBasePolicyDocument
    extends NetworkmanagerCoreNetworkBasePolicy {
  const NetworkmanagerCoreNetworkBasePolicyDocument(this.basePolicyDocument);

  final TfArg<String> basePolicyDocument;

  @override
  String get blockKey => 'base_policy_document';

  @override
  Map<String, Object?> encode() => {
    'base_policy_document': basePolicyDocument.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'base_policy_document': basePolicyDocument,
  };
}

/// The [NetworkmanagerCoreNetworkBasePolicy.basePolicyRegions] choice: sets `base_policy_regions`.
final class NetworkmanagerCoreNetworkBasePolicyRegions
    extends NetworkmanagerCoreNetworkBasePolicy {
  const NetworkmanagerCoreNetworkBasePolicyRegions(this.basePolicyRegions);

  final TfArg<List<String>> basePolicyRegions;

  @override
  String get blockKey => 'base_policy_regions';

  @override
  Map<String, Object?> encode() => {
    'base_policy_regions': basePolicyRegions.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'base_policy_regions': basePolicyRegions,
  };
}

/// Factory wrapper for `aws_networkmanager_core_network`.
final class AwsNetworkmanagerCoreNetwork extends Resource {
  static const String tfType = 'aws_networkmanager_core_network';

  AwsNetworkmanagerCoreNetwork({
    required super.localName,
    NetworkmanagerCoreNetworkBasePolicy? basePolicy,
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
           ...?basePolicy?.argMap,
           'create_base_policy': ?createBasePolicy,
           'description': ?description,
           'global_network_id': globalNetworkId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerCoreNetworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNetworkmanagerCoreNetwork>`.
  RefTo<AwsNetworkmanagerCoreNetwork> get ref => RefTo.of(this);

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

  /// Reference to `base_policy_document` attribute.
  TfRef<String> get basePolicyDocument =>
      TfRef.attribute<String>(this, 'base_policy_document');

  /// Reference to `base_policy_regions` attribute.
  TfRef<List<String>> get basePolicyRegions =>
      TfRef.attribute<List<String>>(this, 'base_policy_regions');

  /// Reference to `create_base_policy` attribute.
  TfRef<bool> get createBasePolicy =>
      TfRef.attribute<bool>(this, 'create_base_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `global_network_id` attribute.
  TfRef<String> get globalNetworkId =>
      TfRef.attribute<String>(this, 'global_network_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
