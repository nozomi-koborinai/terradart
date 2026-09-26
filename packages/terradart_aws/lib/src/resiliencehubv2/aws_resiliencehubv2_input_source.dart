// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resiliencehubv2_input_source`.
const Set<String> _awsResiliencehubv2InputSourceSensitive = <String>{};

/// Typed helper for the `resource_configuration` block of
/// `aws_resiliencehubv2_input_source` (derived from provider schema).
@immutable
final class Resiliencehubv2InputSourceResourceConfiguration {
  const Resiliencehubv2InputSourceResourceConfiguration({
    this.cfnStackArn,
    this.designFileS3Url,
    this.tfStateFileUrl,
    this.eks,
    this.resourceTag,
  });

  final TfArg<String>? cfnStackArn;

  final TfArg<String>? designFileS3Url;

  final TfArg<String>? tfStateFileUrl;

  final List<Resiliencehubv2InputSourceResourceConfigurationEks>? eks;

  final List<Resiliencehubv2InputSourceResourceConfigurationResourceTag>?
  resourceTag;

  Map<String, Object?> encode() => {
    if (cfnStackArn != null) 'cfn_stack_arn': cfnStackArn!.toTfJson(),
    if (designFileS3Url != null)
      'design_file_s3_url': designFileS3Url!.toTfJson(),
    if (tfStateFileUrl != null) 'tf_state_file_url': tfStateFileUrl!.toTfJson(),
    if (eks != null) 'eks': [for (final e in eks!) e.encode()],
    if (resourceTag != null)
      'resource_tag': [for (final e in resourceTag!) e.encode()],
  };
}

/// Typed helper for the `resource_configuration.eks` block of
/// `aws_resiliencehubv2_input_source` (derived from provider schema).
@immutable
final class Resiliencehubv2InputSourceResourceConfigurationEks {
  const Resiliencehubv2InputSourceResourceConfigurationEks({
    required this.clusterArn,
    required this.namespaces,
  });

  final TfArg<String> clusterArn;

  final TfArg<List<Object?>> namespaces;

  Map<String, Object?> encode() => {
    'cluster_arn': clusterArn.toTfJson(),
    'namespaces': namespaces.toTfJson(),
  };
}

/// Typed helper for the `resource_configuration.resource_tag` block of
/// `aws_resiliencehubv2_input_source` (derived from provider schema).
@immutable
final class Resiliencehubv2InputSourceResourceConfigurationResourceTag {
  const Resiliencehubv2InputSourceResourceConfigurationResourceTag({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_resiliencehubv2_input_source`.
final class AwsResiliencehubv2InputSource extends Resource {
  static const String tfType = 'aws_resiliencehubv2_input_source';

  AwsResiliencehubv2InputSource({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> serviceArn,
    List<Resiliencehubv2InputSourceResourceConfiguration>?
    resourceConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'service_arn': serviceArn,
           if (resourceConfiguration != null)
             'resource_configuration': TfArg.literal([
               for (final e in resourceConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResiliencehubv2InputSourceSensitive;

  /// Reference to `input_source_id` attribute.
  TfRef<String> get inputSourceId =>
      TfRef.attribute<String>(this, 'input_source_id');
}
