// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_instance_metadata_defaults`.
const Set<String> _awsEc2InstanceMetadataDefaultsSensitive = <String>{};

/// Factory wrapper for `aws_ec2_instance_metadata_defaults`.
final class AwsEc2InstanceMetadataDefaults extends Resource {
  static const String tfType = 'aws_ec2_instance_metadata_defaults';

  AwsEc2InstanceMetadataDefaults(
    super.localName, {
    TfArg<String>? httpEndpoint,
    TfArg<num>? httpPutResponseHopLimit,
    TfArg<String>? httpTokens,
    TfArg<String>? instanceMetadataTags,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'http_endpoint': ?httpEndpoint,
           'http_put_response_hop_limit': ?httpPutResponseHopLimit,
           'http_tokens': ?httpTokens,
           'instance_metadata_tags': ?instanceMetadataTags,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2InstanceMetadataDefaultsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2InstanceMetadataDefaults>`.
  RefTo<AwsEc2InstanceMetadataDefaults> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `http_endpoint` attribute.
  TfRef<String> get httpEndpoint =>
      TfRef.attribute<String>(this, 'http_endpoint');

  /// Reference to `http_put_response_hop_limit` attribute.
  TfRef<num> get httpPutResponseHopLimit =>
      TfRef.attribute<num>(this, 'http_put_response_hop_limit');

  /// Reference to `http_tokens` attribute.
  TfRef<String> get httpTokens => TfRef.attribute<String>(this, 'http_tokens');

  /// Reference to `instance_metadata_tags` attribute.
  TfRef<String> get instanceMetadataTags =>
      TfRef.attribute<String>(this, 'instance_metadata_tags');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
