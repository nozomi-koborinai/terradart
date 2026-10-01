// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sagemaker_algorithm`.
const Set<String> _awsSagemakerAlgorithmSensitive = <String>{};

/// Typed helper for the `inference_specification` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInferenceSpecification {
  const SagemakerAlgorithmInferenceSpecification({
    this.supportedContentTypes,
    this.supportedRealtimeInferenceInstanceTypes,
    this.supportedResponseMimeTypes,
    this.supportedTransformInstanceTypes,
    this.containers,
  });

  final TfArg<List<String>>? supportedContentTypes;

  final List<SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes>?
  supportedRealtimeInferenceInstanceTypes;

  final TfArg<List<String>>? supportedResponseMimeTypes;

  final List<SagemakerAlgorithmSupportedTransformInstanceTypes>?
  supportedTransformInstanceTypes;

  final List<SagemakerAlgorithmContainers>? containers;

  @internal
  Map<String, Object?> encode() => {
    'supported_content_types': ?supportedContentTypes?.toTfJson(),
    if (supportedRealtimeInferenceInstanceTypes != null)
      'supported_realtime_inference_instance_types': [
        for (final e in supportedRealtimeInferenceInstanceTypes!) e.toTfJson(),
      ],
    'supported_response_mime_types': ?supportedResponseMimeTypes?.toTfJson(),
    if (supportedTransformInstanceTypes != null)
      'supported_transform_instance_types': [
        for (final e in supportedTransformInstanceTypes!) e.toTfJson(),
      ],
    if (containers != null)
      'containers': [for (final e in containers!) e.encode()],
  };
}

/// `supported_realtime_inference_instance_types` — derived from the provider schema description.
extension type const SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const mlT2Medium =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.t2.medium'),
      );
  static const mlT2Large =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.t2.large'),
      );
  static const mlT2Xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.t2.xlarge'),
      );
  static const mlT2p2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.t2.2xlarge'),
      );
  static const mlM4Xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m4.xlarge'),
      );
  static const mlM4p2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m4.2xlarge'),
      );
  static const mlM4p4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m4.4xlarge'),
      );
  static const mlM4p10xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m4.10xlarge'),
      );
  static const mlM4p16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m4.16xlarge'),
      );
  static const mlM5Large =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m5.large'),
      );
  static const mlM5Xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m5.xlarge'),
      );
  static const mlM5p2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m5.2xlarge'),
      );
  static const mlM5p4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m5.4xlarge'),
      );
  static const mlM5p12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m5.12xlarge'),
      );
  static const mlM5p24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m5.24xlarge'),
      );
  static const mlM5dLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m5d.large'),
      );
  static const mlM5dXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m5d.xlarge'),
      );
  static const mlM5d2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m5d.2xlarge'),
      );
  static const mlM5d4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m5d.4xlarge'),
      );
  static const mlM5d12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m5d.12xlarge'),
      );
  static const mlM5d24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m5d.24xlarge'),
      );
  static const mlC4Large =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c4.large'),
      );
  static const mlC4Xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c4.xlarge'),
      );
  static const mlC4p2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c4.2xlarge'),
      );
  static const mlC4p4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c4.4xlarge'),
      );
  static const mlC4p8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c4.8xlarge'),
      );
  static const mlP2Xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p2.xlarge'),
      );
  static const mlP2p8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p2.8xlarge'),
      );
  static const mlP2p16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p2.16xlarge'),
      );
  static const mlP3p2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p3.2xlarge'),
      );
  static const mlP3p8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p3.8xlarge'),
      );
  static const mlP3p16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p3.16xlarge'),
      );
  static const mlC5Large =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c5.large'),
      );
  static const mlC5Xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c5.xlarge'),
      );
  static const mlC5p2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c5.2xlarge'),
      );
  static const mlC5p4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c5.4xlarge'),
      );
  static const mlC5p9xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c5.9xlarge'),
      );
  static const mlC5p18xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c5.18xlarge'),
      );
  static const mlC5dLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c5d.large'),
      );
  static const mlC5dXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c5d.xlarge'),
      );
  static const mlC5d2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c5d.2xlarge'),
      );
  static const mlC5d4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c5d.4xlarge'),
      );
  static const mlC5d9xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c5d.9xlarge'),
      );
  static const mlC5d18xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c5d.18xlarge'),
      );
  static const mlG4dnXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g4dn.xlarge'),
      );
  static const mlG4dn2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g4dn.2xlarge'),
      );
  static const mlG4dn4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g4dn.4xlarge'),
      );
  static const mlG4dn8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g4dn.8xlarge'),
      );
  static const mlG4dn12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g4dn.12xlarge'),
      );
  static const mlG4dn16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g4dn.16xlarge'),
      );
  static const mlR5Large =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r5.large'),
      );
  static const mlR5Xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r5.xlarge'),
      );
  static const mlR5p2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r5.2xlarge'),
      );
  static const mlR5p4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r5.4xlarge'),
      );
  static const mlR5p12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r5.12xlarge'),
      );
  static const mlR5p24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r5.24xlarge'),
      );
  static const mlR5dLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r5d.large'),
      );
  static const mlR5dXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r5d.xlarge'),
      );
  static const mlR5d2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r5d.2xlarge'),
      );
  static const mlR5d4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r5d.4xlarge'),
      );
  static const mlR5d12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r5d.12xlarge'),
      );
  static const mlR5d24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r5d.24xlarge'),
      );
  static const mlInf1Xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.inf1.xlarge'),
      );
  static const mlInf1p2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.inf1.2xlarge'),
      );
  static const mlInf1p6xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.inf1.6xlarge'),
      );
  static const mlInf1p24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.inf1.24xlarge'),
      );
  static const mlDl1p24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.dl1.24xlarge'),
      );
  static const mlC6iLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6i.large'),
      );
  static const mlC6iXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6i.xlarge'),
      );
  static const mlC6i2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6i.2xlarge'),
      );
  static const mlC6i4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6i.4xlarge'),
      );
  static const mlC6i8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6i.8xlarge'),
      );
  static const mlC6i12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6i.12xlarge'),
      );
  static const mlC6i16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6i.16xlarge'),
      );
  static const mlC6i24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6i.24xlarge'),
      );
  static const mlC6i32xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6i.32xlarge'),
      );
  static const mlM6iLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6i.large'),
      );
  static const mlM6iXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6i.xlarge'),
      );
  static const mlM6i2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6i.2xlarge'),
      );
  static const mlM6i4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6i.4xlarge'),
      );
  static const mlM6i8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6i.8xlarge'),
      );
  static const mlM6i12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6i.12xlarge'),
      );
  static const mlM6i16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6i.16xlarge'),
      );
  static const mlM6i24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6i.24xlarge'),
      );
  static const mlM6i32xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6i.32xlarge'),
      );
  static const mlR6iLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6i.large'),
      );
  static const mlR6iXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6i.xlarge'),
      );
  static const mlR6i2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6i.2xlarge'),
      );
  static const mlR6i4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6i.4xlarge'),
      );
  static const mlR6i8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6i.8xlarge'),
      );
  static const mlR6i12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6i.12xlarge'),
      );
  static const mlR6i16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6i.16xlarge'),
      );
  static const mlR6i24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6i.24xlarge'),
      );
  static const mlR6i32xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6i.32xlarge'),
      );
  static const mlG5Xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g5.xlarge'),
      );
  static const mlG5p2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g5.2xlarge'),
      );
  static const mlG5p4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g5.4xlarge'),
      );
  static const mlG5p8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g5.8xlarge'),
      );
  static const mlG5p12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g5.12xlarge'),
      );
  static const mlG5p16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g5.16xlarge'),
      );
  static const mlG5p24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g5.24xlarge'),
      );
  static const mlG5p48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g5.48xlarge'),
      );
  static const mlG6Xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6.xlarge'),
      );
  static const mlG6p2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6.2xlarge'),
      );
  static const mlG6p4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6.4xlarge'),
      );
  static const mlG6p8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6.8xlarge'),
      );
  static const mlG6p12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6.12xlarge'),
      );
  static const mlG6p16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6.16xlarge'),
      );
  static const mlG6p24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6.24xlarge'),
      );
  static const mlG6p48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6.48xlarge'),
      );
  static const mlR8gMedium =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r8g.medium'),
      );
  static const mlR8gLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r8g.large'),
      );
  static const mlR8gXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r8g.xlarge'),
      );
  static const mlR8g2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r8g.2xlarge'),
      );
  static const mlR8g4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r8g.4xlarge'),
      );
  static const mlR8g8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r8g.8xlarge'),
      );
  static const mlR8g12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r8g.12xlarge'),
      );
  static const mlR8g16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r8g.16xlarge'),
      );
  static const mlR8g24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r8g.24xlarge'),
      );
  static const mlR8g48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r8g.48xlarge'),
      );
  static const mlG6eXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6e.xlarge'),
      );
  static const mlG6e2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6e.2xlarge'),
      );
  static const mlG6e4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6e.4xlarge'),
      );
  static const mlG6e8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6e.8xlarge'),
      );
  static const mlG6e12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6e.12xlarge'),
      );
  static const mlG6e16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6e.16xlarge'),
      );
  static const mlG6e24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6e.24xlarge'),
      );
  static const mlG6e48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g6e.48xlarge'),
      );
  static const mlG7e2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g7e.2xlarge'),
      );
  static const mlG7e4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g7e.4xlarge'),
      );
  static const mlG7e8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g7e.8xlarge'),
      );
  static const mlG7e12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g7e.12xlarge'),
      );
  static const mlG7e24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g7e.24xlarge'),
      );
  static const mlG7e48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g7e.48xlarge'),
      );
  static const mlG7p2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g7.2xlarge'),
      );
  static const mlG7p4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g7.4xlarge'),
      );
  static const mlG7p8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g7.8xlarge'),
      );
  static const mlG7p12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g7.12xlarge'),
      );
  static const mlG7p24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g7.24xlarge'),
      );
  static const mlG7p48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.g7.48xlarge'),
      );
  static const mlP4d24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p4d.24xlarge'),
      );
  static const mlC7gLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7g.large'),
      );
  static const mlC7gXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7g.xlarge'),
      );
  static const mlC7g2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7g.2xlarge'),
      );
  static const mlC7g4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7g.4xlarge'),
      );
  static const mlC7g8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7g.8xlarge'),
      );
  static const mlC7g12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7g.12xlarge'),
      );
  static const mlC7g16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7g.16xlarge'),
      );
  static const mlM6gLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6g.large'),
      );
  static const mlM6gXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6g.xlarge'),
      );
  static const mlM6g2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6g.2xlarge'),
      );
  static const mlM6g4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6g.4xlarge'),
      );
  static const mlM6g8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6g.8xlarge'),
      );
  static const mlM6g12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6g.12xlarge'),
      );
  static const mlM6g16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6g.16xlarge'),
      );
  static const mlM6gdLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6gd.large'),
      );
  static const mlM6gdXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6gd.xlarge'),
      );
  static const mlM6gd2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6gd.2xlarge'),
      );
  static const mlM6gd4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6gd.4xlarge'),
      );
  static const mlM6gd8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6gd.8xlarge'),
      );
  static const mlM6gd12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6gd.12xlarge'),
      );
  static const mlM6gd16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m6gd.16xlarge'),
      );
  static const mlC6gLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6g.large'),
      );
  static const mlC6gXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6g.xlarge'),
      );
  static const mlC6g2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6g.2xlarge'),
      );
  static const mlC6g4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6g.4xlarge'),
      );
  static const mlC6g8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6g.8xlarge'),
      );
  static const mlC6g12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6g.12xlarge'),
      );
  static const mlC6g16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6g.16xlarge'),
      );
  static const mlC6gdLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gd.large'),
      );
  static const mlC6gdXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gd.xlarge'),
      );
  static const mlC6gd2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gd.2xlarge'),
      );
  static const mlC6gd4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gd.4xlarge'),
      );
  static const mlC6gd8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gd.8xlarge'),
      );
  static const mlC6gd12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gd.12xlarge'),
      );
  static const mlC6gd16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gd.16xlarge'),
      );
  static const mlC6gnLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gn.large'),
      );
  static const mlC6gnXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gn.xlarge'),
      );
  static const mlC6gn2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gn.2xlarge'),
      );
  static const mlC6gn4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gn.4xlarge'),
      );
  static const mlC6gn8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gn.8xlarge'),
      );
  static const mlC6gn12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gn.12xlarge'),
      );
  static const mlC6gn16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6gn.16xlarge'),
      );
  static const mlR6gLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6g.large'),
      );
  static const mlR6gXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6g.xlarge'),
      );
  static const mlR6g2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6g.2xlarge'),
      );
  static const mlR6g4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6g.4xlarge'),
      );
  static const mlR6g8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6g.8xlarge'),
      );
  static const mlR6g12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6g.12xlarge'),
      );
  static const mlR6g16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6g.16xlarge'),
      );
  static const mlR6gdLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6gd.large'),
      );
  static const mlR6gdXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6gd.xlarge'),
      );
  static const mlR6gd2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6gd.2xlarge'),
      );
  static const mlR6gd4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6gd.4xlarge'),
      );
  static const mlR6gd8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6gd.8xlarge'),
      );
  static const mlR6gd12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6gd.12xlarge'),
      );
  static const mlR6gd16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r6gd.16xlarge'),
      );
  static const mlP4de24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p4de.24xlarge'),
      );
  static const mlTrn1p2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.trn1.2xlarge'),
      );
  static const mlTrn1p32xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.trn1.32xlarge'),
      );
  static const mlTrn1n32xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.trn1n.32xlarge'),
      );
  static const mlTrn2p48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.trn2.48xlarge'),
      );
  static const mlInf2Xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.inf2.xlarge'),
      );
  static const mlInf2p8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.inf2.8xlarge'),
      );
  static const mlInf2p24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.inf2.24xlarge'),
      );
  static const mlInf2p48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.inf2.48xlarge'),
      );
  static const mlP5p48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p5.48xlarge'),
      );
  static const mlP5e48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p5e.48xlarge'),
      );
  static const mlP5en48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p5en.48xlarge'),
      );
  static const mlM7iLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m7i.large'),
      );
  static const mlM7iXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m7i.xlarge'),
      );
  static const mlM7i2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m7i.2xlarge'),
      );
  static const mlM7i4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m7i.4xlarge'),
      );
  static const mlM7i8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m7i.8xlarge'),
      );
  static const mlM7i12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m7i.12xlarge'),
      );
  static const mlM7i16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m7i.16xlarge'),
      );
  static const mlM7i24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m7i.24xlarge'),
      );
  static const mlM7i48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m7i.48xlarge'),
      );
  static const mlC7iLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7i.large'),
      );
  static const mlC7iXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7i.xlarge'),
      );
  static const mlC7i2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7i.2xlarge'),
      );
  static const mlC7i4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7i.4xlarge'),
      );
  static const mlC7i8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7i.8xlarge'),
      );
  static const mlC7i12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7i.12xlarge'),
      );
  static const mlC7i16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7i.16xlarge'),
      );
  static const mlC7i24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7i.24xlarge'),
      );
  static const mlC7i48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c7i.48xlarge'),
      );
  static const mlR7iLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7i.large'),
      );
  static const mlR7iXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7i.xlarge'),
      );
  static const mlR7i2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7i.2xlarge'),
      );
  static const mlR7i4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7i.4xlarge'),
      );
  static const mlR7i8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7i.8xlarge'),
      );
  static const mlR7i12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7i.12xlarge'),
      );
  static const mlR7i16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7i.16xlarge'),
      );
  static const mlR7i24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7i.24xlarge'),
      );
  static const mlR7i48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7i.48xlarge'),
      );
  static const mlC8gMedium =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c8g.medium'),
      );
  static const mlC8gLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c8g.large'),
      );
  static const mlC8gXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c8g.xlarge'),
      );
  static const mlC8g2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c8g.2xlarge'),
      );
  static const mlC8g4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c8g.4xlarge'),
      );
  static const mlC8g8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c8g.8xlarge'),
      );
  static const mlC8g12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c8g.12xlarge'),
      );
  static const mlC8g16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c8g.16xlarge'),
      );
  static const mlC8g24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c8g.24xlarge'),
      );
  static const mlC8g48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c8g.48xlarge'),
      );
  static const mlR7gdMedium =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7gd.medium'),
      );
  static const mlR7gdLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7gd.large'),
      );
  static const mlR7gdXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7gd.xlarge'),
      );
  static const mlR7gd2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7gd.2xlarge'),
      );
  static const mlR7gd4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7gd.4xlarge'),
      );
  static const mlR7gd8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7gd.8xlarge'),
      );
  static const mlR7gd12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7gd.12xlarge'),
      );
  static const mlR7gd16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.r7gd.16xlarge'),
      );
  static const mlM8gMedium =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m8g.medium'),
      );
  static const mlM8gLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m8g.large'),
      );
  static const mlM8gXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m8g.xlarge'),
      );
  static const mlM8g2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m8g.2xlarge'),
      );
  static const mlM8g4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m8g.4xlarge'),
      );
  static const mlM8g8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m8g.8xlarge'),
      );
  static const mlM8g12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m8g.12xlarge'),
      );
  static const mlM8g16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m8g.16xlarge'),
      );
  static const mlM8g24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m8g.24xlarge'),
      );
  static const mlM8g48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.m8g.48xlarge'),
      );
  static const mlC6inLarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6in.large'),
      );
  static const mlC6inXlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6in.xlarge'),
      );
  static const mlC6in2xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6in.2xlarge'),
      );
  static const mlC6in4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6in.4xlarge'),
      );
  static const mlC6in8xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6in.8xlarge'),
      );
  static const mlC6in12xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6in.12xlarge'),
      );
  static const mlC6in16xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6in.16xlarge'),
      );
  static const mlC6in24xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6in.24xlarge'),
      );
  static const mlC6in32xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.c6in.32xlarge'),
      );
  static const mlP6B200p48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p6-b200.48xlarge'),
      );
  static const mlP6B300p48xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p6-b300.48xlarge'),
      );
  static const mlP6eGb200p36xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p6e-gb200.36xlarge'),
      );
  static const mlP5p4xlarge =
      SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes._(
        TfArgLiteral('ml.p5.4xlarge'),
      );

  static const List<SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes>
  values = [
    mlT2Medium,
    mlT2Large,
    mlT2Xlarge,
    mlT2p2xlarge,
    mlM4Xlarge,
    mlM4p2xlarge,
    mlM4p4xlarge,
    mlM4p10xlarge,
    mlM4p16xlarge,
    mlM5Large,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p12xlarge,
    mlM5p24xlarge,
    mlM5dLarge,
    mlM5dXlarge,
    mlM5d2xlarge,
    mlM5d4xlarge,
    mlM5d12xlarge,
    mlM5d24xlarge,
    mlC4Large,
    mlC4Xlarge,
    mlC4p2xlarge,
    mlC4p4xlarge,
    mlC4p8xlarge,
    mlP2Xlarge,
    mlP2p8xlarge,
    mlP2p16xlarge,
    mlP3p2xlarge,
    mlP3p8xlarge,
    mlP3p16xlarge,
    mlC5Large,
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p18xlarge,
    mlC5dLarge,
    mlC5dXlarge,
    mlC5d2xlarge,
    mlC5d4xlarge,
    mlC5d9xlarge,
    mlC5d18xlarge,
    mlG4dnXlarge,
    mlG4dn2xlarge,
    mlG4dn4xlarge,
    mlG4dn8xlarge,
    mlG4dn12xlarge,
    mlG4dn16xlarge,
    mlR5Large,
    mlR5Xlarge,
    mlR5p2xlarge,
    mlR5p4xlarge,
    mlR5p12xlarge,
    mlR5p24xlarge,
    mlR5dLarge,
    mlR5dXlarge,
    mlR5d2xlarge,
    mlR5d4xlarge,
    mlR5d12xlarge,
    mlR5d24xlarge,
    mlInf1Xlarge,
    mlInf1p2xlarge,
    mlInf1p6xlarge,
    mlInf1p24xlarge,
    mlDl1p24xlarge,
    mlC6iLarge,
    mlC6iXlarge,
    mlC6i2xlarge,
    mlC6i4xlarge,
    mlC6i8xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
    mlM6iLarge,
    mlM6iXlarge,
    mlM6i2xlarge,
    mlM6i4xlarge,
    mlM6i8xlarge,
    mlM6i12xlarge,
    mlM6i16xlarge,
    mlM6i24xlarge,
    mlM6i32xlarge,
    mlR6iLarge,
    mlR6iXlarge,
    mlR6i2xlarge,
    mlR6i4xlarge,
    mlR6i8xlarge,
    mlR6i12xlarge,
    mlR6i16xlarge,
    mlR6i24xlarge,
    mlR6i32xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p12xlarge,
    mlG5p16xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p12xlarge,
    mlG6p16xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlR8gMedium,
    mlR8gLarge,
    mlR8gXlarge,
    mlR8g2xlarge,
    mlR8g4xlarge,
    mlR8g8xlarge,
    mlR8g12xlarge,
    mlR8g16xlarge,
    mlR8g24xlarge,
    mlR8g48xlarge,
    mlG6eXlarge,
    mlG6e2xlarge,
    mlG6e4xlarge,
    mlG6e8xlarge,
    mlG6e12xlarge,
    mlG6e16xlarge,
    mlG6e24xlarge,
    mlG6e48xlarge,
    mlG7e2xlarge,
    mlG7e4xlarge,
    mlG7e8xlarge,
    mlG7e12xlarge,
    mlG7e24xlarge,
    mlG7e48xlarge,
    mlG7p2xlarge,
    mlG7p4xlarge,
    mlG7p8xlarge,
    mlG7p12xlarge,
    mlG7p24xlarge,
    mlG7p48xlarge,
    mlP4d24xlarge,
    mlC7gLarge,
    mlC7gXlarge,
    mlC7g2xlarge,
    mlC7g4xlarge,
    mlC7g8xlarge,
    mlC7g12xlarge,
    mlC7g16xlarge,
    mlM6gLarge,
    mlM6gXlarge,
    mlM6g2xlarge,
    mlM6g4xlarge,
    mlM6g8xlarge,
    mlM6g12xlarge,
    mlM6g16xlarge,
    mlM6gdLarge,
    mlM6gdXlarge,
    mlM6gd2xlarge,
    mlM6gd4xlarge,
    mlM6gd8xlarge,
    mlM6gd12xlarge,
    mlM6gd16xlarge,
    mlC6gLarge,
    mlC6gXlarge,
    mlC6g2xlarge,
    mlC6g4xlarge,
    mlC6g8xlarge,
    mlC6g12xlarge,
    mlC6g16xlarge,
    mlC6gdLarge,
    mlC6gdXlarge,
    mlC6gd2xlarge,
    mlC6gd4xlarge,
    mlC6gd8xlarge,
    mlC6gd12xlarge,
    mlC6gd16xlarge,
    mlC6gnLarge,
    mlC6gnXlarge,
    mlC6gn2xlarge,
    mlC6gn4xlarge,
    mlC6gn8xlarge,
    mlC6gn12xlarge,
    mlC6gn16xlarge,
    mlR6gLarge,
    mlR6gXlarge,
    mlR6g2xlarge,
    mlR6g4xlarge,
    mlR6g8xlarge,
    mlR6g12xlarge,
    mlR6g16xlarge,
    mlR6gdLarge,
    mlR6gdXlarge,
    mlR6gd2xlarge,
    mlR6gd4xlarge,
    mlR6gd8xlarge,
    mlR6gd12xlarge,
    mlR6gd16xlarge,
    mlP4de24xlarge,
    mlTrn1p2xlarge,
    mlTrn1p32xlarge,
    mlTrn1n32xlarge,
    mlTrn2p48xlarge,
    mlInf2Xlarge,
    mlInf2p8xlarge,
    mlInf2p24xlarge,
    mlInf2p48xlarge,
    mlP5p48xlarge,
    mlP5e48xlarge,
    mlP5en48xlarge,
    mlM7iLarge,
    mlM7iXlarge,
    mlM7i2xlarge,
    mlM7i4xlarge,
    mlM7i8xlarge,
    mlM7i12xlarge,
    mlM7i16xlarge,
    mlM7i24xlarge,
    mlM7i48xlarge,
    mlC7iLarge,
    mlC7iXlarge,
    mlC7i2xlarge,
    mlC7i4xlarge,
    mlC7i8xlarge,
    mlC7i12xlarge,
    mlC7i16xlarge,
    mlC7i24xlarge,
    mlC7i48xlarge,
    mlR7iLarge,
    mlR7iXlarge,
    mlR7i2xlarge,
    mlR7i4xlarge,
    mlR7i8xlarge,
    mlR7i12xlarge,
    mlR7i16xlarge,
    mlR7i24xlarge,
    mlR7i48xlarge,
    mlC8gMedium,
    mlC8gLarge,
    mlC8gXlarge,
    mlC8g2xlarge,
    mlC8g4xlarge,
    mlC8g8xlarge,
    mlC8g12xlarge,
    mlC8g16xlarge,
    mlC8g24xlarge,
    mlC8g48xlarge,
    mlR7gdMedium,
    mlR7gdLarge,
    mlR7gdXlarge,
    mlR7gd2xlarge,
    mlR7gd4xlarge,
    mlR7gd8xlarge,
    mlR7gd12xlarge,
    mlR7gd16xlarge,
    mlM8gMedium,
    mlM8gLarge,
    mlM8gXlarge,
    mlM8g2xlarge,
    mlM8g4xlarge,
    mlM8g8xlarge,
    mlM8g12xlarge,
    mlM8g16xlarge,
    mlM8g24xlarge,
    mlM8g48xlarge,
    mlC6inLarge,
    mlC6inXlarge,
    mlC6in2xlarge,
    mlC6in4xlarge,
    mlC6in8xlarge,
    mlC6in12xlarge,
    mlC6in16xlarge,
    mlC6in24xlarge,
    mlC6in32xlarge,
    mlP6B200p48xlarge,
    mlP6B300p48xlarge,
    mlP6eGb200p36xlarge,
    mlP5p4xlarge,
  ];
}

/// `supported_transform_instance_types` — derived from the provider schema description.
extension type const SagemakerAlgorithmSupportedTransformInstanceTypes._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerAlgorithmSupportedTransformInstanceTypes.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmSupportedTransformInstanceTypes.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmSupportedTransformInstanceTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const mlM4Xlarge = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.m4.xlarge'),
  );
  static const mlM4p2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m4.2xlarge'),
      );
  static const mlM4p4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m4.4xlarge'),
      );
  static const mlM4p10xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m4.10xlarge'),
      );
  static const mlM4p16xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m4.16xlarge'),
      );
  static const mlC4Xlarge = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.c4.xlarge'),
  );
  static const mlC4p2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c4.2xlarge'),
      );
  static const mlC4p4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c4.4xlarge'),
      );
  static const mlC4p8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c4.8xlarge'),
      );
  static const mlP2Xlarge = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.p2.xlarge'),
  );
  static const mlP2p8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.p2.8xlarge'),
      );
  static const mlP2p16xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.p2.16xlarge'),
      );
  static const mlP3p2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.p3.2xlarge'),
      );
  static const mlP3p8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.p3.8xlarge'),
      );
  static const mlP3p16xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.p3.16xlarge'),
      );
  static const mlC5Xlarge = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c5.2xlarge'),
      );
  static const mlC5p4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c5.4xlarge'),
      );
  static const mlC5p9xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c5.9xlarge'),
      );
  static const mlC5p18xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c5.18xlarge'),
      );
  static const mlM5Large = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m5.2xlarge'),
      );
  static const mlM5p4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m5.4xlarge'),
      );
  static const mlM5p12xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m5.12xlarge'),
      );
  static const mlM5p24xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m5.24xlarge'),
      );
  static const mlM6iLarge = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m6i.xlarge'),
      );
  static const mlM6i2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m6i.2xlarge'),
      );
  static const mlM6i4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m6i.4xlarge'),
      );
  static const mlM6i8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m6i.8xlarge'),
      );
  static const mlM6i12xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m6i.12xlarge'),
      );
  static const mlM6i16xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m6i.16xlarge'),
      );
  static const mlM6i24xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m6i.24xlarge'),
      );
  static const mlM6i32xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m6i.32xlarge'),
      );
  static const mlC6iLarge = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.c6i.large'),
  );
  static const mlC6iXlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c6i.xlarge'),
      );
  static const mlC6i2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c6i.2xlarge'),
      );
  static const mlC6i4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c6i.4xlarge'),
      );
  static const mlC6i8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c6i.8xlarge'),
      );
  static const mlC6i12xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c6i.12xlarge'),
      );
  static const mlC6i16xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c6i.16xlarge'),
      );
  static const mlC6i24xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c6i.24xlarge'),
      );
  static const mlC6i32xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c6i.32xlarge'),
      );
  static const mlR6iLarge = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.r6i.large'),
  );
  static const mlR6iXlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r6i.xlarge'),
      );
  static const mlR6i2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r6i.2xlarge'),
      );
  static const mlR6i4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r6i.4xlarge'),
      );
  static const mlR6i8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r6i.8xlarge'),
      );
  static const mlR6i12xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r6i.12xlarge'),
      );
  static const mlR6i16xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r6i.16xlarge'),
      );
  static const mlR6i24xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r6i.24xlarge'),
      );
  static const mlR6i32xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r6i.32xlarge'),
      );
  static const mlM7iLarge = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m7i.xlarge'),
      );
  static const mlM7i2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m7i.2xlarge'),
      );
  static const mlM7i4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m7i.4xlarge'),
      );
  static const mlM7i8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m7i.8xlarge'),
      );
  static const mlM7i12xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m7i.12xlarge'),
      );
  static const mlM7i16xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m7i.16xlarge'),
      );
  static const mlM7i24xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m7i.24xlarge'),
      );
  static const mlM7i48xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.m7i.48xlarge'),
      );
  static const mlC7iLarge = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c7i.xlarge'),
      );
  static const mlC7i2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c7i.2xlarge'),
      );
  static const mlC7i4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c7i.4xlarge'),
      );
  static const mlC7i8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c7i.8xlarge'),
      );
  static const mlC7i12xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c7i.12xlarge'),
      );
  static const mlC7i16xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c7i.16xlarge'),
      );
  static const mlC7i24xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c7i.24xlarge'),
      );
  static const mlC7i48xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.c7i.48xlarge'),
      );
  static const mlR7iLarge = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r7i.xlarge'),
      );
  static const mlR7i2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r7i.2xlarge'),
      );
  static const mlR7i4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r7i.4xlarge'),
      );
  static const mlR7i8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r7i.8xlarge'),
      );
  static const mlR7i12xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r7i.12xlarge'),
      );
  static const mlR7i16xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r7i.16xlarge'),
      );
  static const mlR7i24xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r7i.24xlarge'),
      );
  static const mlR7i48xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.r7i.48xlarge'),
      );
  static const mlG4dnXlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g4dn.xlarge'),
      );
  static const mlG4dn2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g4dn.2xlarge'),
      );
  static const mlG4dn4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g4dn.4xlarge'),
      );
  static const mlG4dn8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g4dn.8xlarge'),
      );
  static const mlG4dn12xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g4dn.12xlarge'),
      );
  static const mlG4dn16xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g4dn.16xlarge'),
      );
  static const mlG5Xlarge = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g5.2xlarge'),
      );
  static const mlG5p4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g5.4xlarge'),
      );
  static const mlG5p8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g5.8xlarge'),
      );
  static const mlG5p12xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g5.12xlarge'),
      );
  static const mlG5p16xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g5.16xlarge'),
      );
  static const mlG5p24xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g5.24xlarge'),
      );
  static const mlG5p48xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g5.48xlarge'),
      );
  static const mlTrn1p2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.trn1.2xlarge'),
      );
  static const mlTrn1p32xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.trn1.32xlarge'),
      );
  static const mlInf2Xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.inf2.xlarge'),
      );
  static const mlInf2p8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.inf2.8xlarge'),
      );
  static const mlInf2p24xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.inf2.24xlarge'),
      );
  static const mlInf2p48xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.inf2.48xlarge'),
      );
  static const mlG6Xlarge = SagemakerAlgorithmSupportedTransformInstanceTypes._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6.2xlarge'),
      );
  static const mlG6p4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6.4xlarge'),
      );
  static const mlG6p8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6.8xlarge'),
      );
  static const mlG6p12xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6.12xlarge'),
      );
  static const mlG6p16xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6.16xlarge'),
      );
  static const mlG6p24xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6.24xlarge'),
      );
  static const mlG6p48xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6.48xlarge'),
      );
  static const mlG6eXlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6e.xlarge'),
      );
  static const mlG6e2xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6e.2xlarge'),
      );
  static const mlG6e4xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6e.4xlarge'),
      );
  static const mlG6e8xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6e.8xlarge'),
      );
  static const mlG6e12xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6e.12xlarge'),
      );
  static const mlG6e16xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6e.16xlarge'),
      );
  static const mlG6e24xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6e.24xlarge'),
      );
  static const mlG6e48xlarge =
      SagemakerAlgorithmSupportedTransformInstanceTypes._(
        TfArgLiteral('ml.g6e.48xlarge'),
      );

  static const List<SagemakerAlgorithmSupportedTransformInstanceTypes> values =
      [
        mlM4Xlarge,
        mlM4p2xlarge,
        mlM4p4xlarge,
        mlM4p10xlarge,
        mlM4p16xlarge,
        mlC4Xlarge,
        mlC4p2xlarge,
        mlC4p4xlarge,
        mlC4p8xlarge,
        mlP2Xlarge,
        mlP2p8xlarge,
        mlP2p16xlarge,
        mlP3p2xlarge,
        mlP3p8xlarge,
        mlP3p16xlarge,
        mlC5Xlarge,
        mlC5p2xlarge,
        mlC5p4xlarge,
        mlC5p9xlarge,
        mlC5p18xlarge,
        mlM5Large,
        mlM5Xlarge,
        mlM5p2xlarge,
        mlM5p4xlarge,
        mlM5p12xlarge,
        mlM5p24xlarge,
        mlM6iLarge,
        mlM6iXlarge,
        mlM6i2xlarge,
        mlM6i4xlarge,
        mlM6i8xlarge,
        mlM6i12xlarge,
        mlM6i16xlarge,
        mlM6i24xlarge,
        mlM6i32xlarge,
        mlC6iLarge,
        mlC6iXlarge,
        mlC6i2xlarge,
        mlC6i4xlarge,
        mlC6i8xlarge,
        mlC6i12xlarge,
        mlC6i16xlarge,
        mlC6i24xlarge,
        mlC6i32xlarge,
        mlR6iLarge,
        mlR6iXlarge,
        mlR6i2xlarge,
        mlR6i4xlarge,
        mlR6i8xlarge,
        mlR6i12xlarge,
        mlR6i16xlarge,
        mlR6i24xlarge,
        mlR6i32xlarge,
        mlM7iLarge,
        mlM7iXlarge,
        mlM7i2xlarge,
        mlM7i4xlarge,
        mlM7i8xlarge,
        mlM7i12xlarge,
        mlM7i16xlarge,
        mlM7i24xlarge,
        mlM7i48xlarge,
        mlC7iLarge,
        mlC7iXlarge,
        mlC7i2xlarge,
        mlC7i4xlarge,
        mlC7i8xlarge,
        mlC7i12xlarge,
        mlC7i16xlarge,
        mlC7i24xlarge,
        mlC7i48xlarge,
        mlR7iLarge,
        mlR7iXlarge,
        mlR7i2xlarge,
        mlR7i4xlarge,
        mlR7i8xlarge,
        mlR7i12xlarge,
        mlR7i16xlarge,
        mlR7i24xlarge,
        mlR7i48xlarge,
        mlG4dnXlarge,
        mlG4dn2xlarge,
        mlG4dn4xlarge,
        mlG4dn8xlarge,
        mlG4dn12xlarge,
        mlG4dn16xlarge,
        mlG5Xlarge,
        mlG5p2xlarge,
        mlG5p4xlarge,
        mlG5p8xlarge,
        mlG5p12xlarge,
        mlG5p16xlarge,
        mlG5p24xlarge,
        mlG5p48xlarge,
        mlTrn1p2xlarge,
        mlTrn1p32xlarge,
        mlInf2Xlarge,
        mlInf2p8xlarge,
        mlInf2p24xlarge,
        mlInf2p48xlarge,
        mlG6Xlarge,
        mlG6p2xlarge,
        mlG6p4xlarge,
        mlG6p8xlarge,
        mlG6p12xlarge,
        mlG6p16xlarge,
        mlG6p24xlarge,
        mlG6p48xlarge,
        mlG6eXlarge,
        mlG6e2xlarge,
        mlG6e4xlarge,
        mlG6e8xlarge,
        mlG6e12xlarge,
        mlG6e16xlarge,
        mlG6e24xlarge,
        mlG6e48xlarge,
      ];
}

/// Typed helper for the `inference_specification.containers` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmContainers {
  const SagemakerAlgorithmContainers({
    this.containerHostname,
    this.environment,
    this.framework,
    this.frameworkVersion,
    this.image,
    this.imageDigest,
    this.isCheckpoint,
    this.modelDataEtag,
    this.modelDataUrl,
    this.nearestModelName,
    this.productId,
    this.additionalS3DataSource,
    this.baseModel,
    this.modelDataSource,
    this.modelInput,
  });

  final TfArg<String>? containerHostname;

  final TfArg<Map<String, String>>? environment;

  final TfArg<String>? framework;

  final TfArg<String>? frameworkVersion;

  final TfArg<String>? image;

  final TfArg<String>? imageDigest;

  final TfArg<bool>? isCheckpoint;

  final TfArg<String>? modelDataEtag;

  final TfArg<String>? modelDataUrl;

  final TfArg<String>? nearestModelName;

  final TfArg<String>? productId;

  final List<SagemakerAlgorithmAdditionalS3DataSource>? additionalS3DataSource;

  final List<SagemakerAlgorithmBaseModel>? baseModel;

  final List<SagemakerAlgorithmModelDataSource>? modelDataSource;

  final List<SagemakerAlgorithmModelInput>? modelInput;

  @internal
  Map<String, Object?> encode() => {
    'container_hostname': ?containerHostname?.toTfJson(),
    'environment': ?environment?.toTfJson(),
    'framework': ?framework?.toTfJson(),
    'framework_version': ?frameworkVersion?.toTfJson(),
    'image': ?image?.toTfJson(),
    'image_digest': ?imageDigest?.toTfJson(),
    'is_checkpoint': ?isCheckpoint?.toTfJson(),
    'model_data_etag': ?modelDataEtag?.toTfJson(),
    'model_data_url': ?modelDataUrl?.toTfJson(),
    'nearest_model_name': ?nearestModelName?.toTfJson(),
    'product_id': ?productId?.toTfJson(),
    if (additionalS3DataSource != null)
      'additional_s3_data_source': [
        for (final e in additionalS3DataSource!) e.encode(),
      ],
    if (baseModel != null)
      'base_model': [for (final e in baseModel!) e.encode()],
    if (modelDataSource != null)
      'model_data_source': [for (final e in modelDataSource!) e.encode()],
    if (modelInput != null)
      'model_input': [for (final e in modelInput!) e.encode()],
  };
}

/// Typed helper for the `training_specification.additional_s3_data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerAlgorithmAdditionalS3DataSource {
  const SagemakerAlgorithmAdditionalS3DataSource({
    this.compressionType,
    this.etag,
    required this.s3DataType,
    required this.s3Uri,
  });

  final SagemakerAlgorithmCompressionType? compressionType;

  final TfArg<String>? etag;

  final SagemakerAlgorithmS3DataType s3DataType;

  final TfArg<String> s3Uri;

  @internal
  Map<String, Object?> encode() => {
    'compression_type': ?compressionType?.toTfJson(),
    'etag': ?etag?.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// `compression_type` — derived from the provider schema description.
extension type const SagemakerAlgorithmCompressionType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmCompressionType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmCompressionType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmCompressionType.arg(TfArg<String> arg) : this._(arg);

  static const none = SagemakerAlgorithmCompressionType._(TfArgLiteral('None'));
  static const gzip = SagemakerAlgorithmCompressionType._(TfArgLiteral('Gzip'));

  static const List<SagemakerAlgorithmCompressionType> values = [none, gzip];
}

/// `s3_data_type` — derived from the provider schema description.
extension type const SagemakerAlgorithmS3DataType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmS3DataType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmS3DataType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmS3DataType.arg(TfArg<String> arg) : this._(arg);

  static const s3object = SagemakerAlgorithmS3DataType._(
    TfArgLiteral('S3Object'),
  );
  static const s3prefix = SagemakerAlgorithmS3DataType._(
    TfArgLiteral('S3Prefix'),
  );

  static const List<SagemakerAlgorithmS3DataType> values = [s3object, s3prefix];
}

/// Typed helper for the `inference_specification.containers.base_model` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmBaseModel {
  const SagemakerAlgorithmBaseModel({
    this.hubContentName,
    this.hubContentVersion,
    this.recipeName,
  });

  final TfArg<String>? hubContentName;

  final TfArg<String>? hubContentVersion;

  final TfArg<String>? recipeName;

  @internal
  Map<String, Object?> encode() => {
    'hub_content_name': ?hubContentName?.toTfJson(),
    'hub_content_version': ?hubContentVersion?.toTfJson(),
    'recipe_name': ?recipeName?.toTfJson(),
  };
}

/// Typed helper for the `inference_specification.containers.model_data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmModelDataSource {
  const SagemakerAlgorithmModelDataSource({this.s3DataSource});

  final List<SagemakerAlgorithmS3DataSource>? s3DataSource;

  @internal
  Map<String, Object?> encode() => {
    if (s3DataSource != null)
      's3_data_source': [for (final e in s3DataSource!) e.encode()],
  };
}

/// Typed helper for the `inference_specification.containers.model_data_source.s3_data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmS3DataSource {
  const SagemakerAlgorithmS3DataSource({
    required this.compressionType,
    this.etag,
    this.manifestEtag,
    this.manifestS3Uri,
    required this.s3DataType,
    required this.s3Uri,
    this.hubAccessConfig,
    this.modelAccessConfig,
  });

  final SagemakerAlgorithmCompressionType compressionType;

  final TfArg<String>? etag;

  final TfArg<String>? manifestEtag;

  final TfArg<String>? manifestS3Uri;

  final SagemakerAlgorithmS3DataSourceS3DataType s3DataType;

  final TfArg<String> s3Uri;

  final List<SagemakerAlgorithmHubAccessConfig>? hubAccessConfig;

  final List<SagemakerAlgorithmModelAccessConfig>? modelAccessConfig;

  @internal
  Map<String, Object?> encode() => {
    'compression_type': compressionType.toTfJson(),
    'etag': ?etag?.toTfJson(),
    'manifest_etag': ?manifestEtag?.toTfJson(),
    'manifest_s3_uri': ?manifestS3Uri?.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (hubAccessConfig != null)
      'hub_access_config': [for (final e in hubAccessConfig!) e.encode()],
    if (modelAccessConfig != null)
      'model_access_config': [for (final e in modelAccessConfig!) e.encode()],
  };
}

/// `s3_data_type` — derived from the provider schema description.
extension type const SagemakerAlgorithmS3DataSourceS3DataType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmS3DataSourceS3DataType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmS3DataSourceS3DataType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmS3DataSourceS3DataType.arg(TfArg<String> arg)
    : this._(arg);

  static const s3prefix = SagemakerAlgorithmS3DataSourceS3DataType._(
    TfArgLiteral('S3Prefix'),
  );
  static const s3object = SagemakerAlgorithmS3DataSourceS3DataType._(
    TfArgLiteral('S3Object'),
  );

  static const List<SagemakerAlgorithmS3DataSourceS3DataType> values = [
    s3prefix,
    s3object,
  ];
}

/// Typed helper for the `inference_specification.containers.model_data_source.s3_data_source.hub_access_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerAlgorithmHubAccessConfig {
  const SagemakerAlgorithmHubAccessConfig({this.hubContentArn});

  final TfArg<String>? hubContentArn;

  @internal
  Map<String, Object?> encode() => {
    'hub_content_arn': ?hubContentArn?.toTfJson(),
  };
}

/// Typed helper for the `inference_specification.containers.model_data_source.s3_data_source.model_access_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerAlgorithmModelAccessConfig {
  const SagemakerAlgorithmModelAccessConfig({this.acceptEula});

  final TfArg<bool>? acceptEula;

  @internal
  Map<String, Object?> encode() => {'accept_eula': ?acceptEula?.toTfJson()};
}

/// Typed helper for the `inference_specification.containers.model_input` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmModelInput {
  const SagemakerAlgorithmModelInput({this.dataInputConfig});

  final TfArg<String>? dataInputConfig;

  @internal
  Map<String, Object?> encode() => {
    'data_input_config': ?dataInputConfig?.toTfJson(),
  };
}

/// Typed helper for the `training_specification` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTrainingSpecification {
  const SagemakerAlgorithmTrainingSpecification({
    required this.supportedTrainingInstanceTypes,
    this.supportsDistributedTraining,
    required this.trainingImage,
    this.trainingImageDigest,
    this.additionalS3DataSource,
    this.metricDefinitions,
    this.supportedHyperParameters,
    this.supportedTuningJobObjectiveMetrics,
    this.trainingChannels,
  });

  final List<SagemakerAlgorithmSupportedTrainingInstanceTypes>
  supportedTrainingInstanceTypes;

  final TfArg<bool>? supportsDistributedTraining;

  final TfArg<String> trainingImage;

  final TfArg<String>? trainingImageDigest;

  final List<SagemakerAlgorithmAdditionalS3DataSource>? additionalS3DataSource;

  final List<SagemakerAlgorithmMetricDefinitions>? metricDefinitions;

  final List<SagemakerAlgorithmSupportedHyperParameters>?
  supportedHyperParameters;

  final List<SagemakerAlgorithmSupportedTuningJobObjectiveMetrics>?
  supportedTuningJobObjectiveMetrics;

  final List<SagemakerAlgorithmTrainingChannels>? trainingChannels;

  @internal
  Map<String, Object?> encode() => {
    'supported_training_instance_types': [
      for (final e in supportedTrainingInstanceTypes) e.toTfJson(),
    ],
    'supports_distributed_training': ?supportsDistributedTraining?.toTfJson(),
    'training_image': trainingImage.toTfJson(),
    'training_image_digest': ?trainingImageDigest?.toTfJson(),
    if (additionalS3DataSource != null)
      'additional_s3_data_source': [
        for (final e in additionalS3DataSource!) e.encode(),
      ],
    if (metricDefinitions != null)
      'metric_definitions': [for (final e in metricDefinitions!) e.encode()],
    if (supportedHyperParameters != null)
      'supported_hyper_parameters': [
        for (final e in supportedHyperParameters!) e.encode(),
      ],
    if (supportedTuningJobObjectiveMetrics != null)
      'supported_tuning_job_objective_metrics': [
        for (final e in supportedTuningJobObjectiveMetrics!) e.encode(),
      ],
    if (trainingChannels != null)
      'training_channels': [for (final e in trainingChannels!) e.encode()],
  };
}

/// `supported_training_instance_types` — derived from the provider schema description.
extension type const SagemakerAlgorithmSupportedTrainingInstanceTypes._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerAlgorithmSupportedTrainingInstanceTypes.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmSupportedTrainingInstanceTypes.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmSupportedTrainingInstanceTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const mlM4Xlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.m4.xlarge'),
  );
  static const mlM4p2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m4.2xlarge'),
      );
  static const mlM4p4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m4.4xlarge'),
      );
  static const mlM4p10xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m4.10xlarge'),
      );
  static const mlM4p16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m4.16xlarge'),
      );
  static const mlG4dnXlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g4dn.xlarge'),
      );
  static const mlG4dn2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g4dn.2xlarge'),
      );
  static const mlG4dn4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g4dn.4xlarge'),
      );
  static const mlG4dn8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g4dn.8xlarge'),
      );
  static const mlG4dn12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g4dn.12xlarge'),
      );
  static const mlG4dn16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g4dn.16xlarge'),
      );
  static const mlM5Large = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m5.2xlarge'),
      );
  static const mlM5p4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m5.4xlarge'),
      );
  static const mlM5p12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m5.12xlarge'),
      );
  static const mlM5p24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m5.24xlarge'),
      );
  static const mlC4Xlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.c4.xlarge'),
  );
  static const mlC4p2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c4.2xlarge'),
      );
  static const mlC4p4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c4.4xlarge'),
      );
  static const mlC4p8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c4.8xlarge'),
      );
  static const mlP2Xlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.p2.xlarge'),
  );
  static const mlP2p8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p2.8xlarge'),
      );
  static const mlP2p16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p2.16xlarge'),
      );
  static const mlP3p2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p3.2xlarge'),
      );
  static const mlP3p8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p3.8xlarge'),
      );
  static const mlP3p16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p3.16xlarge'),
      );
  static const mlP3dn24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p3dn.24xlarge'),
      );
  static const mlP4d24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p4d.24xlarge'),
      );
  static const mlP4de24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p4de.24xlarge'),
      );
  static const mlP5p48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p5.48xlarge'),
      );
  static const mlP5e48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p5e.48xlarge'),
      );
  static const mlP5en48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p5en.48xlarge'),
      );
  static const mlC5Xlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c5.2xlarge'),
      );
  static const mlC5p4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c5.4xlarge'),
      );
  static const mlC5p9xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c5.9xlarge'),
      );
  static const mlC5p18xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c5.18xlarge'),
      );
  static const mlC5nXlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.c5n.xlarge'),
  );
  static const mlC5n2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c5n.2xlarge'),
      );
  static const mlC5n4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c5n.4xlarge'),
      );
  static const mlC5n9xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c5n.9xlarge'),
      );
  static const mlC5n18xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c5n.18xlarge'),
      );
  static const mlG5Xlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g5.2xlarge'),
      );
  static const mlG5p4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g5.4xlarge'),
      );
  static const mlG5p8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g5.8xlarge'),
      );
  static const mlG5p16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g5.16xlarge'),
      );
  static const mlG5p12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g5.12xlarge'),
      );
  static const mlG5p24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g5.24xlarge'),
      );
  static const mlG5p48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g5.48xlarge'),
      );
  static const mlG6Xlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6.2xlarge'),
      );
  static const mlG6p4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6.4xlarge'),
      );
  static const mlG6p8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6.8xlarge'),
      );
  static const mlG6p16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6.16xlarge'),
      );
  static const mlG6p12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6.12xlarge'),
      );
  static const mlG6p24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6.24xlarge'),
      );
  static const mlG6p48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6.48xlarge'),
      );
  static const mlG6eXlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6e.2xlarge'),
      );
  static const mlG6e4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6e.4xlarge'),
      );
  static const mlG6e8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6e.8xlarge'),
      );
  static const mlG6e16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6e.16xlarge'),
      );
  static const mlG6e12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6e.12xlarge'),
      );
  static const mlG6e24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6e.24xlarge'),
      );
  static const mlG6e48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g6e.48xlarge'),
      );
  static const mlTrn1p2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.trn1.2xlarge'),
      );
  static const mlTrn1p32xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.trn1.32xlarge'),
      );
  static const mlTrn1n32xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.trn1n.32xlarge'),
      );
  static const mlTrn2p48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.trn2.48xlarge'),
      );
  static const mlM6iLarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m6i.2xlarge'),
      );
  static const mlM6i4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m6i.4xlarge'),
      );
  static const mlM6i8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m6i.8xlarge'),
      );
  static const mlM6i12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m6i.12xlarge'),
      );
  static const mlM6i16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m6i.16xlarge'),
      );
  static const mlM6i24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m6i.24xlarge'),
      );
  static const mlM6i32xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m6i.32xlarge'),
      );
  static const mlC6iXlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c6i.2xlarge'),
      );
  static const mlC6i8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c6i.8xlarge'),
      );
  static const mlC6i4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c6i.4xlarge'),
      );
  static const mlC6i12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c6i.12xlarge'),
      );
  static const mlC6i16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c6i.16xlarge'),
      );
  static const mlC6i24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c6i.24xlarge'),
      );
  static const mlC6i32xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c6i.32xlarge'),
      );
  static const mlR5dLarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.r5d.large'),
  );
  static const mlR5dXlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.r5d.xlarge'),
  );
  static const mlR5d2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r5d.2xlarge'),
      );
  static const mlR5d4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r5d.4xlarge'),
      );
  static const mlR5d8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r5d.8xlarge'),
      );
  static const mlR5d12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r5d.12xlarge'),
      );
  static const mlR5d16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r5d.16xlarge'),
      );
  static const mlR5d24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r5d.24xlarge'),
      );
  static const mlT3Medium = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.t3.medium'),
  );
  static const mlT3Large = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.t3.large'),
  );
  static const mlT3Xlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.t3.xlarge'),
  );
  static const mlT3p2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.t3.2xlarge'),
      );
  static const mlR5Large = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r5.2xlarge'),
      );
  static const mlR5p4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r5.4xlarge'),
      );
  static const mlR5p8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r5.8xlarge'),
      );
  static const mlR5p12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r5.12xlarge'),
      );
  static const mlR5p16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r5.16xlarge'),
      );
  static const mlR5p24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r5.24xlarge'),
      );
  static const mlP6B200p48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p6-b200.48xlarge'),
      );
  static const mlM7iLarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m7i.2xlarge'),
      );
  static const mlM7i4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m7i.4xlarge'),
      );
  static const mlM7i8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m7i.8xlarge'),
      );
  static const mlM7i12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m7i.12xlarge'),
      );
  static const mlM7i16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m7i.16xlarge'),
      );
  static const mlM7i24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m7i.24xlarge'),
      );
  static const mlM7i48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.m7i.48xlarge'),
      );
  static const mlC7iLarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c7i.2xlarge'),
      );
  static const mlC7i4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c7i.4xlarge'),
      );
  static const mlC7i8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c7i.8xlarge'),
      );
  static const mlC7i12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c7i.12xlarge'),
      );
  static const mlC7i16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c7i.16xlarge'),
      );
  static const mlC7i24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c7i.24xlarge'),
      );
  static const mlC7i48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.c7i.48xlarge'),
      );
  static const mlR7iLarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerAlgorithmSupportedTrainingInstanceTypes._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r7i.2xlarge'),
      );
  static const mlR7i4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r7i.4xlarge'),
      );
  static const mlR7i8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r7i.8xlarge'),
      );
  static const mlR7i12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r7i.12xlarge'),
      );
  static const mlR7i16xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r7i.16xlarge'),
      );
  static const mlR7i24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r7i.24xlarge'),
      );
  static const mlR7i48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.r7i.48xlarge'),
      );
  static const mlP6eGb200p36xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p6e-gb200.36xlarge'),
      );
  static const mlP5p4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p5.4xlarge'),
      );
  static const mlP6B300p48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.p6-b300.48xlarge'),
      );
  static const mlG7e2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g7e.2xlarge'),
      );
  static const mlG7e4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g7e.4xlarge'),
      );
  static const mlG7e8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g7e.8xlarge'),
      );
  static const mlG7e12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g7e.12xlarge'),
      );
  static const mlG7e24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g7e.24xlarge'),
      );
  static const mlG7e48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g7e.48xlarge'),
      );
  static const mlG7p2xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g7.2xlarge'),
      );
  static const mlG7p4xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g7.4xlarge'),
      );
  static const mlG7p8xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g7.8xlarge'),
      );
  static const mlG7p12xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g7.12xlarge'),
      );
  static const mlG7p24xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g7.24xlarge'),
      );
  static const mlG7p48xlarge =
      SagemakerAlgorithmSupportedTrainingInstanceTypes._(
        TfArgLiteral('ml.g7.48xlarge'),
      );

  static const List<SagemakerAlgorithmSupportedTrainingInstanceTypes> values = [
    mlM4Xlarge,
    mlM4p2xlarge,
    mlM4p4xlarge,
    mlM4p10xlarge,
    mlM4p16xlarge,
    mlG4dnXlarge,
    mlG4dn2xlarge,
    mlG4dn4xlarge,
    mlG4dn8xlarge,
    mlG4dn12xlarge,
    mlG4dn16xlarge,
    mlM5Large,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p12xlarge,
    mlM5p24xlarge,
    mlC4Xlarge,
    mlC4p2xlarge,
    mlC4p4xlarge,
    mlC4p8xlarge,
    mlP2Xlarge,
    mlP2p8xlarge,
    mlP2p16xlarge,
    mlP3p2xlarge,
    mlP3p8xlarge,
    mlP3p16xlarge,
    mlP3dn24xlarge,
    mlP4d24xlarge,
    mlP4de24xlarge,
    mlP5p48xlarge,
    mlP5e48xlarge,
    mlP5en48xlarge,
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p18xlarge,
    mlC5nXlarge,
    mlC5n2xlarge,
    mlC5n4xlarge,
    mlC5n9xlarge,
    mlC5n18xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p16xlarge,
    mlG5p12xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p16xlarge,
    mlG6p12xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlG6eXlarge,
    mlG6e2xlarge,
    mlG6e4xlarge,
    mlG6e8xlarge,
    mlG6e16xlarge,
    mlG6e12xlarge,
    mlG6e24xlarge,
    mlG6e48xlarge,
    mlTrn1p2xlarge,
    mlTrn1p32xlarge,
    mlTrn1n32xlarge,
    mlTrn2p48xlarge,
    mlM6iLarge,
    mlM6iXlarge,
    mlM6i2xlarge,
    mlM6i4xlarge,
    mlM6i8xlarge,
    mlM6i12xlarge,
    mlM6i16xlarge,
    mlM6i24xlarge,
    mlM6i32xlarge,
    mlC6iXlarge,
    mlC6i2xlarge,
    mlC6i8xlarge,
    mlC6i4xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
    mlR5dLarge,
    mlR5dXlarge,
    mlR5d2xlarge,
    mlR5d4xlarge,
    mlR5d8xlarge,
    mlR5d12xlarge,
    mlR5d16xlarge,
    mlR5d24xlarge,
    mlT3Medium,
    mlT3Large,
    mlT3Xlarge,
    mlT3p2xlarge,
    mlR5Large,
    mlR5Xlarge,
    mlR5p2xlarge,
    mlR5p4xlarge,
    mlR5p8xlarge,
    mlR5p12xlarge,
    mlR5p16xlarge,
    mlR5p24xlarge,
    mlP6B200p48xlarge,
    mlM7iLarge,
    mlM7iXlarge,
    mlM7i2xlarge,
    mlM7i4xlarge,
    mlM7i8xlarge,
    mlM7i12xlarge,
    mlM7i16xlarge,
    mlM7i24xlarge,
    mlM7i48xlarge,
    mlC7iLarge,
    mlC7iXlarge,
    mlC7i2xlarge,
    mlC7i4xlarge,
    mlC7i8xlarge,
    mlC7i12xlarge,
    mlC7i16xlarge,
    mlC7i24xlarge,
    mlC7i48xlarge,
    mlR7iLarge,
    mlR7iXlarge,
    mlR7i2xlarge,
    mlR7i4xlarge,
    mlR7i8xlarge,
    mlR7i12xlarge,
    mlR7i16xlarge,
    mlR7i24xlarge,
    mlR7i48xlarge,
    mlP6eGb200p36xlarge,
    mlP5p4xlarge,
    mlP6B300p48xlarge,
    mlG7e2xlarge,
    mlG7e4xlarge,
    mlG7e8xlarge,
    mlG7e12xlarge,
    mlG7e24xlarge,
    mlG7e48xlarge,
    mlG7p2xlarge,
    mlG7p4xlarge,
    mlG7p8xlarge,
    mlG7p12xlarge,
    mlG7p24xlarge,
    mlG7p48xlarge,
  ];
}

/// Typed helper for the `training_specification.metric_definitions` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmMetricDefinitions {
  const SagemakerAlgorithmMetricDefinitions({
    required this.name,
    required this.regex,
  });

  final TfArg<String> name;

  final TfArg<String> regex;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'regex': regex.toTfJson(),
  };
}

/// Typed helper for the `training_specification.supported_hyper_parameters` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmSupportedHyperParameters {
  const SagemakerAlgorithmSupportedHyperParameters({
    this.defaultValue,
    this.description,
    this.isRequired,
    this.isTunable,
    required this.name,
    required this.type,
    this.range,
  });

  final TfArg<String>? defaultValue;

  final TfArg<String>? description;

  final TfArg<bool>? isRequired;

  final TfArg<bool>? isTunable;

  final TfArg<String> name;

  final SagemakerAlgorithmSupportedHyperParametersType type;

  final List<SagemakerAlgorithmRange>? range;

  @internal
  Map<String, Object?> encode() => {
    'default_value': ?defaultValue?.toTfJson(),
    'description': ?description?.toTfJson(),
    'is_required': ?isRequired?.toTfJson(),
    'is_tunable': ?isTunable?.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    if (range != null) 'range': [for (final e in range!) e.encode()],
  };
}

/// `type` — derived from the provider schema description.
extension type const SagemakerAlgorithmSupportedHyperParametersType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerAlgorithmSupportedHyperParametersType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmSupportedHyperParametersType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmSupportedHyperParametersType.arg(TfArg<String> arg)
    : this._(arg);

  static const integer = SagemakerAlgorithmSupportedHyperParametersType._(
    TfArgLiteral('Integer'),
  );
  static const continuous = SagemakerAlgorithmSupportedHyperParametersType._(
    TfArgLiteral('Continuous'),
  );
  static const categorical = SagemakerAlgorithmSupportedHyperParametersType._(
    TfArgLiteral('Categorical'),
  );
  static const freetext = SagemakerAlgorithmSupportedHyperParametersType._(
    TfArgLiteral('FreeText'),
  );

  static const List<SagemakerAlgorithmSupportedHyperParametersType> values = [
    integer,
    continuous,
    categorical,
    freetext,
  ];
}

/// Typed helper for the `training_specification.supported_hyper_parameters.range` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmRange {
  const SagemakerAlgorithmRange({
    this.categoricalParameterRangeSpecification,
    this.continuousParameterRangeSpecification,
    this.integerParameterRangeSpecification,
  });

  final List<SagemakerAlgorithmCategoricalParameterRangeSpecification>?
  categoricalParameterRangeSpecification;

  final List<SagemakerAlgorithmContinuousParameterRangeSpecification>?
  continuousParameterRangeSpecification;

  final List<SagemakerAlgorithmIntegerParameterRangeSpecification>?
  integerParameterRangeSpecification;

  @internal
  Map<String, Object?> encode() => {
    if (categoricalParameterRangeSpecification != null)
      'categorical_parameter_range_specification': [
        for (final e in categoricalParameterRangeSpecification!) e.encode(),
      ],
    if (continuousParameterRangeSpecification != null)
      'continuous_parameter_range_specification': [
        for (final e in continuousParameterRangeSpecification!) e.encode(),
      ],
    if (integerParameterRangeSpecification != null)
      'integer_parameter_range_specification': [
        for (final e in integerParameterRangeSpecification!) e.encode(),
      ],
  };
}

/// Typed helper for the `training_specification.supported_hyper_parameters.range.categorical_parameter_range_specification` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmCategoricalParameterRangeSpecification {
  const SagemakerAlgorithmCategoricalParameterRangeSpecification({
    required this.values,
  });

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {'values': values.toTfJson()};
}

/// Typed helper for the `training_specification.supported_hyper_parameters.range.continuous_parameter_range_specification` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmContinuousParameterRangeSpecification {
  const SagemakerAlgorithmContinuousParameterRangeSpecification({
    required this.maxValue,
    required this.minValue,
  });

  final TfArg<String> maxValue;

  final TfArg<String> minValue;

  @internal
  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
  };
}

/// Typed helper for the `training_specification.supported_hyper_parameters.range.integer_parameter_range_specification` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmIntegerParameterRangeSpecification {
  const SagemakerAlgorithmIntegerParameterRangeSpecification({
    required this.maxValue,
    required this.minValue,
  });

  final TfArg<String> maxValue;

  final TfArg<String> minValue;

  @internal
  Map<String, Object?> encode() => {
    'max_value': maxValue.toTfJson(),
    'min_value': minValue.toTfJson(),
  };
}

/// Typed helper for the `training_specification.supported_tuning_job_objective_metrics` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmSupportedTuningJobObjectiveMetrics {
  const SagemakerAlgorithmSupportedTuningJobObjectiveMetrics({
    required this.metricName,
    required this.type,
  });

  final TfArg<String> metricName;

  final SagemakerAlgorithmSupportedTuningJobObjectiveMetricsType type;

  @internal
  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const SagemakerAlgorithmSupportedTuningJobObjectiveMetricsType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerAlgorithmSupportedTuningJobObjectiveMetricsType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmSupportedTuningJobObjectiveMetricsType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerAlgorithmSupportedTuningJobObjectiveMetricsType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const maximize =
      SagemakerAlgorithmSupportedTuningJobObjectiveMetricsType._(
        TfArgLiteral('Maximize'),
      );
  static const minimize =
      SagemakerAlgorithmSupportedTuningJobObjectiveMetricsType._(
        TfArgLiteral('Minimize'),
      );

  static const List<SagemakerAlgorithmSupportedTuningJobObjectiveMetricsType>
  values = [maximize, minimize];
}

/// Typed helper for the `training_specification.training_channels` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTrainingChannels {
  const SagemakerAlgorithmTrainingChannels({
    this.description,
    this.isRequired,
    required this.name,
    this.supportedCompressionTypes,
    required this.supportedContentTypes,
    required this.supportedInputModes,
  });

  final TfArg<String>? description;

  final TfArg<bool>? isRequired;

  final TfArg<String> name;

  final List<SagemakerAlgorithmSupportedCompressionTypes>?
  supportedCompressionTypes;

  final TfArg<List<String>> supportedContentTypes;

  final List<SagemakerAlgorithmSupportedInputModes> supportedInputModes;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'is_required': ?isRequired?.toTfJson(),
    'name': name.toTfJson(),
    if (supportedCompressionTypes != null)
      'supported_compression_types': [
        for (final e in supportedCompressionTypes!) e.toTfJson(),
      ],
    'supported_content_types': supportedContentTypes.toTfJson(),
    'supported_input_modes': [
      for (final e in supportedInputModes) e.toTfJson(),
    ],
  };
}

/// `supported_compression_types` — derived from the provider schema description.
extension type const SagemakerAlgorithmSupportedCompressionTypes._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerAlgorithmSupportedCompressionTypes.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmSupportedCompressionTypes.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmSupportedCompressionTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const none = SagemakerAlgorithmSupportedCompressionTypes._(
    TfArgLiteral('None'),
  );
  static const gzip = SagemakerAlgorithmSupportedCompressionTypes._(
    TfArgLiteral('Gzip'),
  );

  static const List<SagemakerAlgorithmSupportedCompressionTypes> values = [
    none,
    gzip,
  ];
}

/// `supported_input_modes` — derived from the provider schema description.
extension type const SagemakerAlgorithmSupportedInputModes._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmSupportedInputModes.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmSupportedInputModes.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmSupportedInputModes.arg(TfArg<String> arg)
    : this._(arg);

  static const pipe = SagemakerAlgorithmSupportedInputModes._(
    TfArgLiteral('Pipe'),
  );
  static const file = SagemakerAlgorithmSupportedInputModes._(
    TfArgLiteral('File'),
  );
  static const fastfile = SagemakerAlgorithmSupportedInputModes._(
    TfArgLiteral('FastFile'),
  );

  static const List<SagemakerAlgorithmSupportedInputModes> values = [
    pipe,
    file,
    fastfile,
  ];
}

/// Typed helper for the `validation_specification` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationSpecification {
  const SagemakerAlgorithmValidationSpecification({
    required this.validationRole,
    this.validationProfiles,
  });

  final TfArg<String> validationRole;

  final List<SagemakerAlgorithmValidationProfiles>? validationProfiles;

  @internal
  Map<String, Object?> encode() => {
    'validation_role': validationRole.toTfJson(),
    if (validationProfiles != null)
      'validation_profiles': [for (final e in validationProfiles!) e.encode()],
  };
}

/// Typed helper for the `validation_specification.validation_profiles` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmValidationProfiles {
  const SagemakerAlgorithmValidationProfiles({
    required this.profileName,
    this.trainingJobDefinition,
    this.transformJobDefinition,
  });

  final TfArg<String> profileName;

  final List<SagemakerAlgorithmTrainingJobDefinition>? trainingJobDefinition;

  final List<SagemakerAlgorithmTransformJobDefinition>? transformJobDefinition;

  @internal
  Map<String, Object?> encode() => {
    'profile_name': profileName.toTfJson(),
    if (trainingJobDefinition != null)
      'training_job_definition': [
        for (final e in trainingJobDefinition!) e.encode(),
      ],
    if (transformJobDefinition != null)
      'transform_job_definition': [
        for (final e in transformJobDefinition!) e.encode(),
      ],
  };
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTrainingJobDefinition {
  const SagemakerAlgorithmTrainingJobDefinition({
    this.hyperParameters,
    required this.trainingInputMode,
    this.inputDataConfig,
    this.outputDataConfig,
    this.resourceConfig,
    this.stoppingCondition,
  });

  final TfArg<Map<String, String>>? hyperParameters;

  final SagemakerAlgorithmTrainingInputMode trainingInputMode;

  final List<SagemakerAlgorithmInputDataConfig>? inputDataConfig;

  final List<SagemakerAlgorithmOutputDataConfig>? outputDataConfig;

  final List<SagemakerAlgorithmResourceConfig>? resourceConfig;

  final List<SagemakerAlgorithmStoppingCondition>? stoppingCondition;

  @internal
  Map<String, Object?> encode() => {
    'hyper_parameters': ?hyperParameters?.toTfJson(),
    'training_input_mode': trainingInputMode.toTfJson(),
    if (inputDataConfig != null)
      'input_data_config': [for (final e in inputDataConfig!) e.encode()],
    if (outputDataConfig != null)
      'output_data_config': [for (final e in outputDataConfig!) e.encode()],
    if (resourceConfig != null)
      'resource_config': [for (final e in resourceConfig!) e.encode()],
    if (stoppingCondition != null)
      'stopping_condition': [for (final e in stoppingCondition!) e.encode()],
  };
}

/// `training_input_mode` — derived from the provider schema description.
extension type const SagemakerAlgorithmTrainingInputMode._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmTrainingInputMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmTrainingInputMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmTrainingInputMode.arg(TfArg<String> arg)
    : this._(arg);

  static const pipe = SagemakerAlgorithmTrainingInputMode._(
    TfArgLiteral('Pipe'),
  );
  static const file = SagemakerAlgorithmTrainingInputMode._(
    TfArgLiteral('File'),
  );
  static const fastfile = SagemakerAlgorithmTrainingInputMode._(
    TfArgLiteral('FastFile'),
  );

  static const List<SagemakerAlgorithmTrainingInputMode> values = [
    pipe,
    file,
    fastfile,
  ];
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.input_data_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInputDataConfig {
  const SagemakerAlgorithmInputDataConfig({
    required this.channelName,
    this.compressionType,
    this.contentType,
    this.inputMode,
    this.recordWrapperType,
    this.dataSource,
    this.shuffleConfig,
  });

  final TfArg<String> channelName;

  final SagemakerAlgorithmCompressionType? compressionType;

  final TfArg<String>? contentType;

  final SagemakerAlgorithmInputMode? inputMode;

  final SagemakerAlgorithmRecordWrapperType? recordWrapperType;

  final List<SagemakerAlgorithmInputDataConfigDataSource>? dataSource;

  final List<SagemakerAlgorithmShuffleConfig>? shuffleConfig;

  @internal
  Map<String, Object?> encode() => {
    'channel_name': channelName.toTfJson(),
    'compression_type': ?compressionType?.toTfJson(),
    'content_type': ?contentType?.toTfJson(),
    'input_mode': ?inputMode?.toTfJson(),
    'record_wrapper_type': ?recordWrapperType?.toTfJson(),
    if (dataSource != null)
      'data_source': [for (final e in dataSource!) e.encode()],
    if (shuffleConfig != null)
      'shuffle_config': [for (final e in shuffleConfig!) e.encode()],
  };
}

/// `input_mode` — derived from the provider schema description.
extension type const SagemakerAlgorithmInputMode._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmInputMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmInputMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmInputMode.arg(TfArg<String> arg) : this._(arg);

  static const pipe = SagemakerAlgorithmInputMode._(TfArgLiteral('Pipe'));
  static const file = SagemakerAlgorithmInputMode._(TfArgLiteral('File'));
  static const fastfile = SagemakerAlgorithmInputMode._(
    TfArgLiteral('FastFile'),
  );

  static const List<SagemakerAlgorithmInputMode> values = [
    pipe,
    file,
    fastfile,
  ];
}

/// `record_wrapper_type` — derived from the provider schema description.
extension type const SagemakerAlgorithmRecordWrapperType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmRecordWrapperType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmRecordWrapperType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmRecordWrapperType.arg(TfArg<String> arg)
    : this._(arg);

  static const none = SagemakerAlgorithmRecordWrapperType._(
    TfArgLiteral('None'),
  );
  static const recordio = SagemakerAlgorithmRecordWrapperType._(
    TfArgLiteral('RecordIO'),
  );

  static const List<SagemakerAlgorithmRecordWrapperType> values = [
    none,
    recordio,
  ];
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.input_data_config.data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInputDataConfigDataSource {
  const SagemakerAlgorithmInputDataConfigDataSource({
    this.fileSystemDataSource,
    this.s3DataSource,
  });

  final List<SagemakerAlgorithmFileSystemDataSource>? fileSystemDataSource;

  final List<SagemakerAlgorithmInputDataConfigS3DataSource>? s3DataSource;

  @internal
  Map<String, Object?> encode() => {
    if (fileSystemDataSource != null)
      'file_system_data_source': [
        for (final e in fileSystemDataSource!) e.encode(),
      ],
    if (s3DataSource != null)
      's3_data_source': [for (final e in s3DataSource!) e.encode()],
  };
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.input_data_config.data_source.file_system_data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmFileSystemDataSource {
  const SagemakerAlgorithmFileSystemDataSource({
    required this.directoryPath,
    required this.fileSystemAccessMode,
    required this.fileSystemId,
    required this.fileSystemType,
  });

  final TfArg<String> directoryPath;

  final SagemakerAlgorithmFileSystemAccessMode fileSystemAccessMode;

  final TfArg<String> fileSystemId;

  final SagemakerAlgorithmFileSystemType fileSystemType;

  @internal
  Map<String, Object?> encode() => {
    'directory_path': directoryPath.toTfJson(),
    'file_system_access_mode': fileSystemAccessMode.toTfJson(),
    'file_system_id': fileSystemId.toTfJson(),
    'file_system_type': fileSystemType.toTfJson(),
  };
}

/// `file_system_access_mode` — derived from the provider schema description.
extension type const SagemakerAlgorithmFileSystemAccessMode._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmFileSystemAccessMode.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmFileSystemAccessMode.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmFileSystemAccessMode.arg(TfArg<String> arg)
    : this._(arg);

  static const rw = SagemakerAlgorithmFileSystemAccessMode._(
    TfArgLiteral('rw'),
  );
  static const ro = SagemakerAlgorithmFileSystemAccessMode._(
    TfArgLiteral('ro'),
  );

  static const List<SagemakerAlgorithmFileSystemAccessMode> values = [rw, ro];
}

/// `file_system_type` — derived from the provider schema description.
extension type const SagemakerAlgorithmFileSystemType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmFileSystemType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmFileSystemType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmFileSystemType.arg(TfArg<String> arg) : this._(arg);

  static const efs = SagemakerAlgorithmFileSystemType._(TfArgLiteral('EFS'));
  static const fsxlustre = SagemakerAlgorithmFileSystemType._(
    TfArgLiteral('FSxLustre'),
  );

  static const List<SagemakerAlgorithmFileSystemType> values = [efs, fsxlustre];
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.input_data_config.data_source.s3_data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInputDataConfigS3DataSource {
  const SagemakerAlgorithmInputDataConfigS3DataSource({
    this.attributeNames,
    this.instanceGroupNames,
    this.s3DataDistributionType,
    required this.s3DataType,
    required this.s3Uri,
    this.hubAccessConfig,
    this.modelAccessConfig,
  });

  final TfArg<List<String>>? attributeNames;

  final TfArg<List<String>>? instanceGroupNames;

  final SagemakerAlgorithmS3DataDistributionType? s3DataDistributionType;

  final SagemakerAlgorithmDataSourceS3DataType s3DataType;

  final TfArg<String> s3Uri;

  final List<SagemakerAlgorithmHubAccessConfig>? hubAccessConfig;

  final List<SagemakerAlgorithmModelAccessConfig>? modelAccessConfig;

  @internal
  Map<String, Object?> encode() => {
    'attribute_names': ?attributeNames?.toTfJson(),
    'instance_group_names': ?instanceGroupNames?.toTfJson(),
    's3_data_distribution_type': ?s3DataDistributionType?.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
    if (hubAccessConfig != null)
      'hub_access_config': [for (final e in hubAccessConfig!) e.encode()],
    if (modelAccessConfig != null)
      'model_access_config': [for (final e in modelAccessConfig!) e.encode()],
  };
}

/// `s3_data_distribution_type` — derived from the provider schema description.
extension type const SagemakerAlgorithmS3DataDistributionType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmS3DataDistributionType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmS3DataDistributionType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmS3DataDistributionType.arg(TfArg<String> arg)
    : this._(arg);

  static const fullyreplicated = SagemakerAlgorithmS3DataDistributionType._(
    TfArgLiteral('FullyReplicated'),
  );
  static const shardedbys3key = SagemakerAlgorithmS3DataDistributionType._(
    TfArgLiteral('ShardedByS3Key'),
  );

  static const List<SagemakerAlgorithmS3DataDistributionType> values = [
    fullyreplicated,
    shardedbys3key,
  ];
}

/// `s3_data_type` — derived from the provider schema description.
extension type const SagemakerAlgorithmDataSourceS3DataType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmDataSourceS3DataType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmDataSourceS3DataType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmDataSourceS3DataType.arg(TfArg<String> arg)
    : this._(arg);

  static const manifestfile = SagemakerAlgorithmDataSourceS3DataType._(
    TfArgLiteral('ManifestFile'),
  );
  static const s3prefix = SagemakerAlgorithmDataSourceS3DataType._(
    TfArgLiteral('S3Prefix'),
  );
  static const augmentedmanifestfile = SagemakerAlgorithmDataSourceS3DataType._(
    TfArgLiteral('AugmentedManifestFile'),
  );
  static const converse = SagemakerAlgorithmDataSourceS3DataType._(
    TfArgLiteral('Converse'),
  );

  static const List<SagemakerAlgorithmDataSourceS3DataType> values = [
    manifestfile,
    s3prefix,
    augmentedmanifestfile,
    converse,
  ];
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.input_data_config.shuffle_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmShuffleConfig {
  const SagemakerAlgorithmShuffleConfig({required this.seed});

  final TfArg<num> seed;

  @internal
  Map<String, Object?> encode() => {'seed': seed.toTfJson()};
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.output_data_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmOutputDataConfig {
  const SagemakerAlgorithmOutputDataConfig({
    this.compressionType,
    this.kmsKeyId,
    required this.s3OutputPath,
  });

  final SagemakerAlgorithmOutputDataConfigCompressionType? compressionType;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String> s3OutputPath;

  @internal
  Map<String, Object?> encode() => {
    'compression_type': ?compressionType?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
  };
}

/// `compression_type` — derived from the provider schema description.
extension type const SagemakerAlgorithmOutputDataConfigCompressionType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerAlgorithmOutputDataConfigCompressionType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmOutputDataConfigCompressionType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmOutputDataConfigCompressionType.arg(TfArg<String> arg)
    : this._(arg);

  static const gzip = SagemakerAlgorithmOutputDataConfigCompressionType._(
    TfArgLiteral('GZIP'),
  );
  static const none = SagemakerAlgorithmOutputDataConfigCompressionType._(
    TfArgLiteral('NONE'),
  );

  static const List<SagemakerAlgorithmOutputDataConfigCompressionType> values =
      [gzip, none];
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.resource_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmResourceConfig {
  const SagemakerAlgorithmResourceConfig({
    this.instanceCount,
    this.instanceType,
    this.keepAlivePeriodInSeconds,
    this.trainingPlanArn,
    this.volumeKmsKeyId,
    this.volumeSizeInGb,
    this.instanceGroups,
    this.instancePlacementConfig,
  });

  final TfArg<num>? instanceCount;

  final SagemakerAlgorithmResourceConfigInstanceType? instanceType;

  final TfArg<num>? keepAlivePeriodInSeconds;

  final TfArg<String>? trainingPlanArn;

  final TfArg<String>? volumeKmsKeyId;

  final TfArg<num>? volumeSizeInGb;

  final List<SagemakerAlgorithmInstanceGroups>? instanceGroups;

  final List<SagemakerAlgorithmInstancePlacementConfig>?
  instancePlacementConfig;

  @internal
  Map<String, Object?> encode() => {
    'instance_count': ?instanceCount?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'keep_alive_period_in_seconds': ?keepAlivePeriodInSeconds?.toTfJson(),
    'training_plan_arn': ?trainingPlanArn?.toTfJson(),
    'volume_kms_key_id': ?volumeKmsKeyId?.toTfJson(),
    'volume_size_in_gb': ?volumeSizeInGb?.toTfJson(),
    if (instanceGroups != null)
      'instance_groups': [for (final e in instanceGroups!) e.encode()],
    if (instancePlacementConfig != null)
      'instance_placement_config': [
        for (final e in instancePlacementConfig!) e.encode(),
      ],
  };
}

/// `instance_type` — derived from the provider schema description.
extension type const SagemakerAlgorithmResourceConfigInstanceType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerAlgorithmResourceConfigInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmResourceConfigInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmResourceConfigInstanceType.arg(TfArg<String> arg)
    : this._(arg);

  static const mlM4Xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m4.xlarge'),
  );
  static const mlM4p2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m4.2xlarge'),
  );
  static const mlM4p4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m4.4xlarge'),
  );
  static const mlM4p10xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m4.10xlarge'),
  );
  static const mlM4p16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m4.16xlarge'),
  );
  static const mlG4dnXlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g4dn.xlarge'),
  );
  static const mlG4dn2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g4dn.2xlarge'),
  );
  static const mlG4dn4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g4dn.4xlarge'),
  );
  static const mlG4dn8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g4dn.8xlarge'),
  );
  static const mlG4dn12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g4dn.12xlarge'),
  );
  static const mlG4dn16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g4dn.16xlarge'),
  );
  static const mlM5Large = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m5.2xlarge'),
  );
  static const mlM5p4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m5.4xlarge'),
  );
  static const mlM5p12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m5.12xlarge'),
  );
  static const mlM5p24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m5.24xlarge'),
  );
  static const mlC4Xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c4.xlarge'),
  );
  static const mlC4p2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c4.2xlarge'),
  );
  static const mlC4p4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c4.4xlarge'),
  );
  static const mlC4p8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c4.8xlarge'),
  );
  static const mlP2Xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.p2.xlarge'),
  );
  static const mlP2p8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.p2.8xlarge'),
  );
  static const mlP2p16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.p2.16xlarge'),
  );
  static const mlP3p2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.p3.2xlarge'),
  );
  static const mlP3p8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.p3.8xlarge'),
  );
  static const mlP3p16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.p3.16xlarge'),
  );
  static const mlP3dn24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.p3dn.24xlarge'),
  );
  static const mlP4d24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.p4d.24xlarge'),
  );
  static const mlP4de24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.p4de.24xlarge'),
  );
  static const mlP5p48xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.p5.48xlarge'),
  );
  static const mlP5e48xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.p5e.48xlarge'),
  );
  static const mlP5en48xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.p5en.48xlarge'),
  );
  static const mlC5Xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c5.2xlarge'),
  );
  static const mlC5p4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c5.4xlarge'),
  );
  static const mlC5p9xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c5.9xlarge'),
  );
  static const mlC5p18xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c5.18xlarge'),
  );
  static const mlC5nXlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c5n.xlarge'),
  );
  static const mlC5n2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c5n.2xlarge'),
  );
  static const mlC5n4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c5n.4xlarge'),
  );
  static const mlC5n9xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c5n.9xlarge'),
  );
  static const mlC5n18xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c5n.18xlarge'),
  );
  static const mlG5Xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.2xlarge'),
  );
  static const mlG5p4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.4xlarge'),
  );
  static const mlG5p8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.8xlarge'),
  );
  static const mlG5p16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.16xlarge'),
  );
  static const mlG5p12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.12xlarge'),
  );
  static const mlG5p24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.24xlarge'),
  );
  static const mlG5p48xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g5.48xlarge'),
  );
  static const mlG6Xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.2xlarge'),
  );
  static const mlG6p4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.4xlarge'),
  );
  static const mlG6p8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.8xlarge'),
  );
  static const mlG6p16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.16xlarge'),
  );
  static const mlG6p12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.12xlarge'),
  );
  static const mlG6p24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.24xlarge'),
  );
  static const mlG6p48xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6.48xlarge'),
  );
  static const mlG6eXlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.2xlarge'),
  );
  static const mlG6e4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.4xlarge'),
  );
  static const mlG6e8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.8xlarge'),
  );
  static const mlG6e16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.16xlarge'),
  );
  static const mlG6e12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.12xlarge'),
  );
  static const mlG6e24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.24xlarge'),
  );
  static const mlG6e48xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g6e.48xlarge'),
  );
  static const mlTrn1p2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.trn1.2xlarge'),
  );
  static const mlTrn1p32xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.trn1.32xlarge'),
  );
  static const mlTrn1n32xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.trn1n.32xlarge'),
  );
  static const mlTrn2p48xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.trn2.48xlarge'),
  );
  static const mlM6iLarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.2xlarge'),
  );
  static const mlM6i4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.4xlarge'),
  );
  static const mlM6i8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.8xlarge'),
  );
  static const mlM6i12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.12xlarge'),
  );
  static const mlM6i16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.16xlarge'),
  );
  static const mlM6i24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.24xlarge'),
  );
  static const mlM6i32xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m6i.32xlarge'),
  );
  static const mlC6iXlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.2xlarge'),
  );
  static const mlC6i8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.8xlarge'),
  );
  static const mlC6i4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.4xlarge'),
  );
  static const mlC6i12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.12xlarge'),
  );
  static const mlC6i16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.16xlarge'),
  );
  static const mlC6i24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.24xlarge'),
  );
  static const mlC6i32xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c6i.32xlarge'),
  );
  static const mlR5dLarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.large'),
  );
  static const mlR5dXlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.xlarge'),
  );
  static const mlR5d2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.2xlarge'),
  );
  static const mlR5d4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.4xlarge'),
  );
  static const mlR5d8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.8xlarge'),
  );
  static const mlR5d12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.12xlarge'),
  );
  static const mlR5d16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.16xlarge'),
  );
  static const mlR5d24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5d.24xlarge'),
  );
  static const mlT3Medium = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.t3.medium'),
  );
  static const mlT3Large = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.t3.large'),
  );
  static const mlT3Xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.t3.xlarge'),
  );
  static const mlT3p2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.t3.2xlarge'),
  );
  static const mlR5Large = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.2xlarge'),
  );
  static const mlR5p4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.4xlarge'),
  );
  static const mlR5p8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.8xlarge'),
  );
  static const mlR5p12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.12xlarge'),
  );
  static const mlR5p16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.16xlarge'),
  );
  static const mlR5p24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r5.24xlarge'),
  );
  static const mlP6B200p48xlarge =
      SagemakerAlgorithmResourceConfigInstanceType._(
        TfArgLiteral('ml.p6-b200.48xlarge'),
      );
  static const mlM7iLarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.2xlarge'),
  );
  static const mlM7i4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.4xlarge'),
  );
  static const mlM7i8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.8xlarge'),
  );
  static const mlM7i12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.12xlarge'),
  );
  static const mlM7i16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.16xlarge'),
  );
  static const mlM7i24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.24xlarge'),
  );
  static const mlM7i48xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.m7i.48xlarge'),
  );
  static const mlC7iLarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.2xlarge'),
  );
  static const mlC7i4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.4xlarge'),
  );
  static const mlC7i8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.8xlarge'),
  );
  static const mlC7i12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.12xlarge'),
  );
  static const mlC7i16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.16xlarge'),
  );
  static const mlC7i24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.24xlarge'),
  );
  static const mlC7i48xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.c7i.48xlarge'),
  );
  static const mlR7iLarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.2xlarge'),
  );
  static const mlR7i4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.4xlarge'),
  );
  static const mlR7i8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.8xlarge'),
  );
  static const mlR7i12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.12xlarge'),
  );
  static const mlR7i16xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.16xlarge'),
  );
  static const mlR7i24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.24xlarge'),
  );
  static const mlR7i48xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.r7i.48xlarge'),
  );
  static const mlP6eGb200p36xlarge =
      SagemakerAlgorithmResourceConfigInstanceType._(
        TfArgLiteral('ml.p6e-gb200.36xlarge'),
      );
  static const mlP5p4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.p5.4xlarge'),
  );
  static const mlP6B300p48xlarge =
      SagemakerAlgorithmResourceConfigInstanceType._(
        TfArgLiteral('ml.p6-b300.48xlarge'),
      );
  static const mlG7e2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g7e.2xlarge'),
  );
  static const mlG7e4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g7e.4xlarge'),
  );
  static const mlG7e8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g7e.8xlarge'),
  );
  static const mlG7e12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g7e.12xlarge'),
  );
  static const mlG7e24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g7e.24xlarge'),
  );
  static const mlG7e48xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g7e.48xlarge'),
  );
  static const mlG7p2xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g7.2xlarge'),
  );
  static const mlG7p4xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g7.4xlarge'),
  );
  static const mlG7p8xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g7.8xlarge'),
  );
  static const mlG7p12xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g7.12xlarge'),
  );
  static const mlG7p24xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g7.24xlarge'),
  );
  static const mlG7p48xlarge = SagemakerAlgorithmResourceConfigInstanceType._(
    TfArgLiteral('ml.g7.48xlarge'),
  );

  static const List<SagemakerAlgorithmResourceConfigInstanceType> values = [
    mlM4Xlarge,
    mlM4p2xlarge,
    mlM4p4xlarge,
    mlM4p10xlarge,
    mlM4p16xlarge,
    mlG4dnXlarge,
    mlG4dn2xlarge,
    mlG4dn4xlarge,
    mlG4dn8xlarge,
    mlG4dn12xlarge,
    mlG4dn16xlarge,
    mlM5Large,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p12xlarge,
    mlM5p24xlarge,
    mlC4Xlarge,
    mlC4p2xlarge,
    mlC4p4xlarge,
    mlC4p8xlarge,
    mlP2Xlarge,
    mlP2p8xlarge,
    mlP2p16xlarge,
    mlP3p2xlarge,
    mlP3p8xlarge,
    mlP3p16xlarge,
    mlP3dn24xlarge,
    mlP4d24xlarge,
    mlP4de24xlarge,
    mlP5p48xlarge,
    mlP5e48xlarge,
    mlP5en48xlarge,
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p18xlarge,
    mlC5nXlarge,
    mlC5n2xlarge,
    mlC5n4xlarge,
    mlC5n9xlarge,
    mlC5n18xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p16xlarge,
    mlG5p12xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p16xlarge,
    mlG6p12xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlG6eXlarge,
    mlG6e2xlarge,
    mlG6e4xlarge,
    mlG6e8xlarge,
    mlG6e16xlarge,
    mlG6e12xlarge,
    mlG6e24xlarge,
    mlG6e48xlarge,
    mlTrn1p2xlarge,
    mlTrn1p32xlarge,
    mlTrn1n32xlarge,
    mlTrn2p48xlarge,
    mlM6iLarge,
    mlM6iXlarge,
    mlM6i2xlarge,
    mlM6i4xlarge,
    mlM6i8xlarge,
    mlM6i12xlarge,
    mlM6i16xlarge,
    mlM6i24xlarge,
    mlM6i32xlarge,
    mlC6iXlarge,
    mlC6i2xlarge,
    mlC6i8xlarge,
    mlC6i4xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
    mlR5dLarge,
    mlR5dXlarge,
    mlR5d2xlarge,
    mlR5d4xlarge,
    mlR5d8xlarge,
    mlR5d12xlarge,
    mlR5d16xlarge,
    mlR5d24xlarge,
    mlT3Medium,
    mlT3Large,
    mlT3Xlarge,
    mlT3p2xlarge,
    mlR5Large,
    mlR5Xlarge,
    mlR5p2xlarge,
    mlR5p4xlarge,
    mlR5p8xlarge,
    mlR5p12xlarge,
    mlR5p16xlarge,
    mlR5p24xlarge,
    mlP6B200p48xlarge,
    mlM7iLarge,
    mlM7iXlarge,
    mlM7i2xlarge,
    mlM7i4xlarge,
    mlM7i8xlarge,
    mlM7i12xlarge,
    mlM7i16xlarge,
    mlM7i24xlarge,
    mlM7i48xlarge,
    mlC7iLarge,
    mlC7iXlarge,
    mlC7i2xlarge,
    mlC7i4xlarge,
    mlC7i8xlarge,
    mlC7i12xlarge,
    mlC7i16xlarge,
    mlC7i24xlarge,
    mlC7i48xlarge,
    mlR7iLarge,
    mlR7iXlarge,
    mlR7i2xlarge,
    mlR7i4xlarge,
    mlR7i8xlarge,
    mlR7i12xlarge,
    mlR7i16xlarge,
    mlR7i24xlarge,
    mlR7i48xlarge,
    mlP6eGb200p36xlarge,
    mlP5p4xlarge,
    mlP6B300p48xlarge,
    mlG7e2xlarge,
    mlG7e4xlarge,
    mlG7e8xlarge,
    mlG7e12xlarge,
    mlG7e24xlarge,
    mlG7e48xlarge,
    mlG7p2xlarge,
    mlG7p4xlarge,
    mlG7p8xlarge,
    mlG7p12xlarge,
    mlG7p24xlarge,
    mlG7p48xlarge,
  ];
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.resource_config.instance_groups` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInstanceGroups {
  const SagemakerAlgorithmInstanceGroups({
    required this.instanceCount,
    required this.instanceGroupName,
    required this.instanceType,
  });

  final TfArg<num> instanceCount;

  final TfArg<String> instanceGroupName;

  final SagemakerAlgorithmResourceConfigInstanceType instanceType;

  @internal
  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'instance_group_name': instanceGroupName.toTfJson(),
    'instance_type': instanceType.toTfJson(),
  };
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.resource_config.instance_placement_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmInstancePlacementConfig {
  const SagemakerAlgorithmInstancePlacementConfig({
    this.enableMultipleJobs,
    this.placementSpecifications,
  });

  final TfArg<bool>? enableMultipleJobs;

  final List<SagemakerAlgorithmPlacementSpecifications>?
  placementSpecifications;

  @internal
  Map<String, Object?> encode() => {
    'enable_multiple_jobs': ?enableMultipleJobs?.toTfJson(),
    if (placementSpecifications != null)
      'placement_specifications': [
        for (final e in placementSpecifications!) e.encode(),
      ],
  };
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.resource_config.instance_placement_config.placement_specifications` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmPlacementSpecifications {
  const SagemakerAlgorithmPlacementSpecifications({
    required this.instanceCount,
    this.ultraServerId,
  });

  final TfArg<num> instanceCount;

  final TfArg<String>? ultraServerId;

  @internal
  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'ultra_server_id': ?ultraServerId?.toTfJson(),
  };
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.stopping_condition` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmStoppingCondition {
  const SagemakerAlgorithmStoppingCondition({
    this.maxPendingTimeInSeconds,
    this.maxRuntimeInSeconds,
    this.maxWaitTimeInSeconds,
  });

  final TfArg<num>? maxPendingTimeInSeconds;

  final TfArg<num>? maxRuntimeInSeconds;

  final TfArg<num>? maxWaitTimeInSeconds;

  @internal
  Map<String, Object?> encode() => {
    'max_pending_time_in_seconds': ?maxPendingTimeInSeconds?.toTfJson(),
    'max_runtime_in_seconds': ?maxRuntimeInSeconds?.toTfJson(),
    'max_wait_time_in_seconds': ?maxWaitTimeInSeconds?.toTfJson(),
  };
}

/// Typed helper for the `validation_specification.validation_profiles.transform_job_definition` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTransformJobDefinition {
  const SagemakerAlgorithmTransformJobDefinition({
    this.batchStrategy,
    this.environment,
    this.maxConcurrentTransforms,
    this.maxPayloadInMb,
    this.transformInput,
    this.transformOutput,
    this.transformResources,
  });

  final SagemakerAlgorithmBatchStrategy? batchStrategy;

  final TfArg<Map<String, String>>? environment;

  final TfArg<num>? maxConcurrentTransforms;

  final TfArg<num>? maxPayloadInMb;

  final List<SagemakerAlgorithmTransformInput>? transformInput;

  final List<SagemakerAlgorithmTransformOutput>? transformOutput;

  final List<SagemakerAlgorithmTransformResources>? transformResources;

  @internal
  Map<String, Object?> encode() => {
    'batch_strategy': ?batchStrategy?.toTfJson(),
    'environment': ?environment?.toTfJson(),
    'max_concurrent_transforms': ?maxConcurrentTransforms?.toTfJson(),
    'max_payload_in_mb': ?maxPayloadInMb?.toTfJson(),
    if (transformInput != null)
      'transform_input': [for (final e in transformInput!) e.encode()],
    if (transformOutput != null)
      'transform_output': [for (final e in transformOutput!) e.encode()],
    if (transformResources != null)
      'transform_resources': [for (final e in transformResources!) e.encode()],
  };
}

/// `batch_strategy` — derived from the provider schema description.
extension type const SagemakerAlgorithmBatchStrategy._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmBatchStrategy.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmBatchStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmBatchStrategy.arg(TfArg<String> arg) : this._(arg);

  static const multirecord = SagemakerAlgorithmBatchStrategy._(
    TfArgLiteral('MultiRecord'),
  );
  static const singlerecord = SagemakerAlgorithmBatchStrategy._(
    TfArgLiteral('SingleRecord'),
  );

  static const List<SagemakerAlgorithmBatchStrategy> values = [
    multirecord,
    singlerecord,
  ];
}

/// Typed helper for the `validation_specification.validation_profiles.transform_job_definition.transform_input` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTransformInput {
  const SagemakerAlgorithmTransformInput({
    this.compressionType,
    this.contentType,
    this.splitType,
    this.dataSource,
  });

  final SagemakerAlgorithmCompressionType? compressionType;

  final TfArg<String>? contentType;

  final SagemakerAlgorithmSplitType? splitType;

  final List<SagemakerAlgorithmTransformInputDataSource>? dataSource;

  @internal
  Map<String, Object?> encode() => {
    'compression_type': ?compressionType?.toTfJson(),
    'content_type': ?contentType?.toTfJson(),
    'split_type': ?splitType?.toTfJson(),
    if (dataSource != null)
      'data_source': [for (final e in dataSource!) e.encode()],
  };
}

/// `split_type` — derived from the provider schema description.
extension type const SagemakerAlgorithmSplitType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmSplitType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmSplitType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmSplitType.arg(TfArg<String> arg) : this._(arg);

  static const none = SagemakerAlgorithmSplitType._(TfArgLiteral('None'));
  static const line = SagemakerAlgorithmSplitType._(TfArgLiteral('Line'));
  static const recordio = SagemakerAlgorithmSplitType._(
    TfArgLiteral('RecordIO'),
  );
  static const tfrecord = SagemakerAlgorithmSplitType._(
    TfArgLiteral('TFRecord'),
  );

  static const List<SagemakerAlgorithmSplitType> values = [
    none,
    line,
    recordio,
    tfrecord,
  ];
}

/// Typed helper for the `validation_specification.validation_profiles.transform_job_definition.transform_input.data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTransformInputDataSource {
  const SagemakerAlgorithmTransformInputDataSource({this.s3DataSource});

  final List<SagemakerAlgorithmTransformInputS3DataSource>? s3DataSource;

  @internal
  Map<String, Object?> encode() => {
    if (s3DataSource != null)
      's3_data_source': [for (final e in s3DataSource!) e.encode()],
  };
}

/// Typed helper for the `validation_specification.validation_profiles.transform_job_definition.transform_input.data_source.s3_data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTransformInputS3DataSource {
  const SagemakerAlgorithmTransformInputS3DataSource({
    required this.s3DataType,
    required this.s3Uri,
  });

  final SagemakerAlgorithmDataSourceS3DataType s3DataType;

  final TfArg<String> s3Uri;

  @internal
  Map<String, Object?> encode() => {
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// Typed helper for the `validation_specification.validation_profiles.transform_job_definition.transform_output` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTransformOutput {
  const SagemakerAlgorithmTransformOutput({
    this.accept,
    this.assembleWith,
    this.kmsKeyId,
    required this.s3OutputPath,
  });

  final TfArg<String>? accept;

  final SagemakerAlgorithmAssembleWith? assembleWith;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String> s3OutputPath;

  @internal
  Map<String, Object?> encode() => {
    'accept': ?accept?.toTfJson(),
    'assemble_with': ?assembleWith?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
  };
}

/// `assemble_with` — derived from the provider schema description.
extension type const SagemakerAlgorithmAssembleWith._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerAlgorithmAssembleWith.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmAssembleWith.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmAssembleWith.arg(TfArg<String> arg) : this._(arg);

  static const none = SagemakerAlgorithmAssembleWith._(TfArgLiteral('None'));
  static const line = SagemakerAlgorithmAssembleWith._(TfArgLiteral('Line'));

  static const List<SagemakerAlgorithmAssembleWith> values = [none, line];
}

/// Typed helper for the `validation_specification.validation_profiles.transform_job_definition.transform_resources` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTransformResources {
  const SagemakerAlgorithmTransformResources({
    required this.instanceCount,
    required this.instanceType,
    this.transformAmiVersion,
    this.volumeKmsKeyId,
  });

  final TfArg<num> instanceCount;

  final SagemakerAlgorithmTransformResourcesInstanceType instanceType;

  final TfArg<String>? transformAmiVersion;

  final TfArg<String>? volumeKmsKeyId;

  @internal
  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    'transform_ami_version': ?transformAmiVersion?.toTfJson(),
    'volume_kms_key_id': ?volumeKmsKeyId?.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
extension type const SagemakerAlgorithmTransformResourcesInstanceType._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerAlgorithmTransformResourcesInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerAlgorithmTransformResourcesInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerAlgorithmTransformResourcesInstanceType.arg(TfArg<String> arg)
    : this._(arg);

  static const mlM4Xlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.m4.xlarge'),
  );
  static const mlM4p2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m4.2xlarge'),
      );
  static const mlM4p4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m4.4xlarge'),
      );
  static const mlM4p10xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m4.10xlarge'),
      );
  static const mlM4p16xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m4.16xlarge'),
      );
  static const mlC4Xlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.c4.xlarge'),
  );
  static const mlC4p2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c4.2xlarge'),
      );
  static const mlC4p4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c4.4xlarge'),
      );
  static const mlC4p8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c4.8xlarge'),
      );
  static const mlP2Xlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.p2.xlarge'),
  );
  static const mlP2p8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.p2.8xlarge'),
      );
  static const mlP2p16xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.p2.16xlarge'),
      );
  static const mlP3p2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.p3.2xlarge'),
      );
  static const mlP3p8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.p3.8xlarge'),
      );
  static const mlP3p16xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.p3.16xlarge'),
      );
  static const mlC5Xlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c5.2xlarge'),
      );
  static const mlC5p4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c5.4xlarge'),
      );
  static const mlC5p9xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c5.9xlarge'),
      );
  static const mlC5p18xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c5.18xlarge'),
      );
  static const mlM5Large = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.m5.large'),
  );
  static const mlM5Xlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m5.2xlarge'),
      );
  static const mlM5p4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m5.4xlarge'),
      );
  static const mlM5p12xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m5.12xlarge'),
      );
  static const mlM5p24xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m5.24xlarge'),
      );
  static const mlM6iLarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m6i.2xlarge'),
      );
  static const mlM6i4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m6i.4xlarge'),
      );
  static const mlM6i8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m6i.8xlarge'),
      );
  static const mlM6i12xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m6i.12xlarge'),
      );
  static const mlM6i16xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m6i.16xlarge'),
      );
  static const mlM6i24xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m6i.24xlarge'),
      );
  static const mlM6i32xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m6i.32xlarge'),
      );
  static const mlC6iLarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.c6i.large'),
  );
  static const mlC6iXlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c6i.2xlarge'),
      );
  static const mlC6i4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c6i.4xlarge'),
      );
  static const mlC6i8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c6i.8xlarge'),
      );
  static const mlC6i12xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c6i.12xlarge'),
      );
  static const mlC6i16xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c6i.16xlarge'),
      );
  static const mlC6i24xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c6i.24xlarge'),
      );
  static const mlC6i32xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c6i.32xlarge'),
      );
  static const mlR6iLarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.r6i.large'),
  );
  static const mlR6iXlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.r6i.xlarge'),
  );
  static const mlR6i2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r6i.2xlarge'),
      );
  static const mlR6i4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r6i.4xlarge'),
      );
  static const mlR6i8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r6i.8xlarge'),
      );
  static const mlR6i12xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r6i.12xlarge'),
      );
  static const mlR6i16xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r6i.16xlarge'),
      );
  static const mlR6i24xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r6i.24xlarge'),
      );
  static const mlR6i32xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r6i.32xlarge'),
      );
  static const mlM7iLarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m7i.2xlarge'),
      );
  static const mlM7i4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m7i.4xlarge'),
      );
  static const mlM7i8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m7i.8xlarge'),
      );
  static const mlM7i12xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m7i.12xlarge'),
      );
  static const mlM7i16xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m7i.16xlarge'),
      );
  static const mlM7i24xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m7i.24xlarge'),
      );
  static const mlM7i48xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.m7i.48xlarge'),
      );
  static const mlC7iLarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c7i.2xlarge'),
      );
  static const mlC7i4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c7i.4xlarge'),
      );
  static const mlC7i8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c7i.8xlarge'),
      );
  static const mlC7i12xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c7i.12xlarge'),
      );
  static const mlC7i16xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c7i.16xlarge'),
      );
  static const mlC7i24xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c7i.24xlarge'),
      );
  static const mlC7i48xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.c7i.48xlarge'),
      );
  static const mlR7iLarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r7i.2xlarge'),
      );
  static const mlR7i4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r7i.4xlarge'),
      );
  static const mlR7i8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r7i.8xlarge'),
      );
  static const mlR7i12xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r7i.12xlarge'),
      );
  static const mlR7i16xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r7i.16xlarge'),
      );
  static const mlR7i24xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r7i.24xlarge'),
      );
  static const mlR7i48xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.r7i.48xlarge'),
      );
  static const mlG4dnXlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g4dn.xlarge'),
      );
  static const mlG4dn2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g4dn.2xlarge'),
      );
  static const mlG4dn4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g4dn.4xlarge'),
      );
  static const mlG4dn8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g4dn.8xlarge'),
      );
  static const mlG4dn12xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g4dn.12xlarge'),
      );
  static const mlG4dn16xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g4dn.16xlarge'),
      );
  static const mlG5Xlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g5.2xlarge'),
      );
  static const mlG5p4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g5.4xlarge'),
      );
  static const mlG5p8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g5.8xlarge'),
      );
  static const mlG5p12xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g5.12xlarge'),
      );
  static const mlG5p16xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g5.16xlarge'),
      );
  static const mlG5p24xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g5.24xlarge'),
      );
  static const mlG5p48xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g5.48xlarge'),
      );
  static const mlTrn1p2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.trn1.2xlarge'),
      );
  static const mlTrn1p32xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.trn1.32xlarge'),
      );
  static const mlInf2Xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.inf2.xlarge'),
      );
  static const mlInf2p8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.inf2.8xlarge'),
      );
  static const mlInf2p24xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.inf2.24xlarge'),
      );
  static const mlInf2p48xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.inf2.48xlarge'),
      );
  static const mlG6Xlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6.2xlarge'),
      );
  static const mlG6p4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6.4xlarge'),
      );
  static const mlG6p8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6.8xlarge'),
      );
  static const mlG6p12xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6.12xlarge'),
      );
  static const mlG6p16xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6.16xlarge'),
      );
  static const mlG6p24xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6.24xlarge'),
      );
  static const mlG6p48xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6.48xlarge'),
      );
  static const mlG6eXlarge = SagemakerAlgorithmTransformResourcesInstanceType._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6e.2xlarge'),
      );
  static const mlG6e4xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6e.4xlarge'),
      );
  static const mlG6e8xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6e.8xlarge'),
      );
  static const mlG6e12xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6e.12xlarge'),
      );
  static const mlG6e16xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6e.16xlarge'),
      );
  static const mlG6e24xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6e.24xlarge'),
      );
  static const mlG6e48xlarge =
      SagemakerAlgorithmTransformResourcesInstanceType._(
        TfArgLiteral('ml.g6e.48xlarge'),
      );

  static const List<SagemakerAlgorithmTransformResourcesInstanceType> values = [
    mlM4Xlarge,
    mlM4p2xlarge,
    mlM4p4xlarge,
    mlM4p10xlarge,
    mlM4p16xlarge,
    mlC4Xlarge,
    mlC4p2xlarge,
    mlC4p4xlarge,
    mlC4p8xlarge,
    mlP2Xlarge,
    mlP2p8xlarge,
    mlP2p16xlarge,
    mlP3p2xlarge,
    mlP3p8xlarge,
    mlP3p16xlarge,
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p18xlarge,
    mlM5Large,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p12xlarge,
    mlM5p24xlarge,
    mlM6iLarge,
    mlM6iXlarge,
    mlM6i2xlarge,
    mlM6i4xlarge,
    mlM6i8xlarge,
    mlM6i12xlarge,
    mlM6i16xlarge,
    mlM6i24xlarge,
    mlM6i32xlarge,
    mlC6iLarge,
    mlC6iXlarge,
    mlC6i2xlarge,
    mlC6i4xlarge,
    mlC6i8xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
    mlR6iLarge,
    mlR6iXlarge,
    mlR6i2xlarge,
    mlR6i4xlarge,
    mlR6i8xlarge,
    mlR6i12xlarge,
    mlR6i16xlarge,
    mlR6i24xlarge,
    mlR6i32xlarge,
    mlM7iLarge,
    mlM7iXlarge,
    mlM7i2xlarge,
    mlM7i4xlarge,
    mlM7i8xlarge,
    mlM7i12xlarge,
    mlM7i16xlarge,
    mlM7i24xlarge,
    mlM7i48xlarge,
    mlC7iLarge,
    mlC7iXlarge,
    mlC7i2xlarge,
    mlC7i4xlarge,
    mlC7i8xlarge,
    mlC7i12xlarge,
    mlC7i16xlarge,
    mlC7i24xlarge,
    mlC7i48xlarge,
    mlR7iLarge,
    mlR7iXlarge,
    mlR7i2xlarge,
    mlR7i4xlarge,
    mlR7i8xlarge,
    mlR7i12xlarge,
    mlR7i16xlarge,
    mlR7i24xlarge,
    mlR7i48xlarge,
    mlG4dnXlarge,
    mlG4dn2xlarge,
    mlG4dn4xlarge,
    mlG4dn8xlarge,
    mlG4dn12xlarge,
    mlG4dn16xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p12xlarge,
    mlG5p16xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlTrn1p2xlarge,
    mlTrn1p32xlarge,
    mlInf2Xlarge,
    mlInf2p8xlarge,
    mlInf2p24xlarge,
    mlInf2p48xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p12xlarge,
    mlG6p16xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlG6eXlarge,
    mlG6e2xlarge,
    mlG6e4xlarge,
    mlG6e8xlarge,
    mlG6e12xlarge,
    mlG6e16xlarge,
    mlG6e24xlarge,
    mlG6e48xlarge,
  ];
}

/// Factory wrapper for `aws_sagemaker_algorithm`.
final class AwsSagemakerAlgorithm extends Resource {
  static const String tfType = 'aws_sagemaker_algorithm';

  AwsSagemakerAlgorithm(
    super.localName, {
    TfArg<String>? algorithmDescription,
    required TfArg<String> algorithmName,
    TfArg<bool>? certifyForMarketplace,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<SagemakerAlgorithmInferenceSpecification>? inferenceSpecification,
    List<SagemakerAlgorithmTrainingSpecification>? trainingSpecification,
    List<SagemakerAlgorithmValidationSpecification>? validationSpecification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'algorithm_description': ?algorithmDescription,
           'algorithm_name': algorithmName,
           'certify_for_marketplace': ?certifyForMarketplace,
           'region': ?region,
           'tags': ?tags,
           if (inferenceSpecification != null)
             'inference_specification': TfArg.literal([
               for (final e in inferenceSpecification) e.encode(),
             ]),
           if (trainingSpecification != null)
             'training_specification': TfArg.literal([
               for (final e in trainingSpecification) e.encode(),
             ]),
           if (validationSpecification != null)
             'validation_specification': TfArg.literal([
               for (final e in validationSpecification) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerAlgorithmSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerAlgorithm>`.
  RefTo<AwsSagemakerAlgorithm> get ref => RefTo.of(this);

  /// Reference to `algorithm_status` attribute.
  TfRef<String> get algorithmStatus =>
      TfRef.attribute<String>(this, 'algorithm_status');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `product_id` attribute.
  TfRef<String> get productId => TfRef.attribute<String>(this, 'product_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `algorithm_description` attribute.
  TfRef<String> get algorithmDescription =>
      TfRef.attribute<String>(this, 'algorithm_description');

  /// Reference to `algorithm_name` attribute.
  TfRef<String> get algorithmName =>
      TfRef.attribute<String>(this, 'algorithm_name');

  /// Reference to `certify_for_marketplace` attribute.
  TfRef<bool> get certifyForMarketplace =>
      TfRef.attribute<bool>(this, 'certify_for_marketplace');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
