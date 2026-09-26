// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_connect_routing_profile`.
const Set<String> _awsConnectRoutingProfileSensitive = <String>{};

/// Factory wrapper for `aws_connect_routing_profile`.
final class DataAwsConnectRoutingProfile extends Data {
  static const String tfType = 'aws_connect_routing_profile';

  DataAwsConnectRoutingProfile({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<String>? routingProfileId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (routingProfileId != null) 'routing_profile_id': routingProfileId,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectRoutingProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_outbound_queue_id` attribute.
  TfRef<String> get defaultOutboundQueueId =>
      TfRef.attribute<String>(this, 'default_outbound_queue_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `media_concurrencies` attribute.
  TfRef<List<Map<String, Object?>>> get mediaConcurrencies =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'media_concurrencies');

  /// Reference to `queue_configs` attribute.
  TfRef<List<Map<String, Object?>>> get queueConfigs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'queue_configs');
}
