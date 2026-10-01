// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../connect/aws_connect_routing_profile.dart';

/// Sensitive field paths for `aws_connect_routing_profile`.
const Set<String> _awsConnectRoutingProfileSensitive = <String>{};

/// Factory wrapper for `aws_connect_routing_profile`.
final class DataAwsConnectRoutingProfile extends Data {
  static const String tfType = 'aws_connect_routing_profile';

  DataAwsConnectRoutingProfile(
    super.localName, {
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
           'name': ?name,
           'region': ?region,
           'routing_profile_id': ?routingProfileId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConnectRoutingProfileSensitive;

  /// A reference to the `aws_connect_routing_profile` this data source reads, for
  /// arguments typed `RefTo<AwsConnectRoutingProfile>`.
  RefTo<AwsConnectRoutingProfile> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `routing_profile_id` attribute.
  TfRef<String> get routingProfileId =>
      TfRef.attribute<String>(this, 'routing_profile_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
