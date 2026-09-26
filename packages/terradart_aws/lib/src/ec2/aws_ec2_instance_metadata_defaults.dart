// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_instance_metadata_defaults`.
const Set<String> _awsEc2InstanceMetadataDefaultsSensitive = <String>{};

/// Factory wrapper for `aws_ec2_instance_metadata_defaults`.
final class AwsEc2InstanceMetadataDefaults extends Resource {
  static const String tfType = 'aws_ec2_instance_metadata_defaults';

  AwsEc2InstanceMetadataDefaults({
    required super.localName,
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
           if (httpEndpoint != null) 'http_endpoint': httpEndpoint,
           if (httpPutResponseHopLimit != null)
             'http_put_response_hop_limit': httpPutResponseHopLimit,
           if (httpTokens != null) 'http_tokens': httpTokens,
           if (instanceMetadataTags != null)
             'instance_metadata_tags': instanceMetadataTags,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2InstanceMetadataDefaultsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
