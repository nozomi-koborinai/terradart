// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_core_network`.
const Set<String> _awsNetworkmanagerCoreNetworkSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_core_network`.
final class DataAwsNetworkmanagerCoreNetwork extends Data {
  static const String tfType = 'aws_networkmanager_core_network';

  DataAwsNetworkmanagerCoreNetwork({
    required super.localName,
    required TfArg<String> coreNetworkId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'core_network_id': coreNetworkId});

  @override
  Set<String> get sensitiveFields => _awsNetworkmanagerCoreNetworkSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `edges` attribute.
  TfRef<List<Map<String, Object?>>> get edges =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'edges');

  /// Reference to `global_network_id` attribute.
  TfRef<String> get globalNetworkId =>
      TfRef.attribute<String>(this, 'global_network_id');

  /// Reference to `network_function_groups` attribute.
  TfRef<List<Map<String, Object?>>> get networkFunctionGroups =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'network_function_groups',
      );

  /// Reference to `segments` attribute.
  TfRef<List<Map<String, Object?>>> get segments =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'segments');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
