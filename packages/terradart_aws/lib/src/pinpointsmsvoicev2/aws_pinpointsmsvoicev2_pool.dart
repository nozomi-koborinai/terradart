// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpointsmsvoicev2_pool`.
const Set<String> _awsPinpointsmsvoicev2PoolSensitive = <String>{};

/// Pinpointsmsvoicev2 Pool Message enum for `message_type`.
enum Pinpointsmsvoicev2PoolMessageType implements TerraformEnum {
  transactional('TRANSACTIONAL'),
  promotional('PROMOTIONAL');

  const Pinpointsmsvoicev2PoolMessageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_pinpointsmsvoicev2_pool`.
final class AwsPinpointsmsvoicev2Pool extends Resource {
  static const String tfType = 'aws_pinpointsmsvoicev2_pool';

  AwsPinpointsmsvoicev2Pool({
    required super.localName,
    TfArg<bool>? deletionProtectionEnabled,
    TfArg<String>? isoCountryCode,
    required TfArg<Pinpointsmsvoicev2PoolMessageType> messageType,
    TfArg<String>? optOutListName,
    required TfArg<List<String>> originationIdentities,
    TfArg<String>? region,
    TfArg<bool>? selfManagedOptOutsEnabled,
    TfArg<bool>? sharedRoutesEnabled,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? twoWayChannelArn,
    TfArg<String>? twoWayChannelRole,
    TfArg<bool>? twoWayEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_protection_enabled': ?deletionProtectionEnabled,
           'iso_country_code': ?isoCountryCode,
           'message_type': messageType,
           'opt_out_list_name': ?optOutListName,
           'origination_identities': originationIdentities,
           'region': ?region,
           'self_managed_opt_outs_enabled': ?selfManagedOptOutsEnabled,
           'shared_routes_enabled': ?sharedRoutesEnabled,
           'tags': ?tags,
           'two_way_channel_arn': ?twoWayChannelArn,
           'two_way_channel_role': ?twoWayChannelRole,
           'two_way_enabled': ?twoWayEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointsmsvoicev2PoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointsmsvoicev2Pool>`.
  RefTo<AwsPinpointsmsvoicev2Pool> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
