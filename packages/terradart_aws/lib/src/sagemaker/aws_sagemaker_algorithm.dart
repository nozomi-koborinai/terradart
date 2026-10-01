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

  final List<TfArg<SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes>>?
  supportedRealtimeInferenceInstanceTypes;

  final TfArg<List<String>>? supportedResponseMimeTypes;

  final List<TfArg<SagemakerAlgorithmSupportedTransformInstanceTypes>>?
  supportedTransformInstanceTypes;

  final List<SagemakerAlgorithmContainers>? containers;

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
enum SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes
    implements TerraformEnum {
  mlT2Medium('ml.t2.medium'),
  mlT2Large('ml.t2.large'),
  mlT2Xlarge('ml.t2.xlarge'),
  mlT2p2xlarge('ml.t2.2xlarge'),
  mlM4Xlarge('ml.m4.xlarge'),
  mlM4p2xlarge('ml.m4.2xlarge'),
  mlM4p4xlarge('ml.m4.4xlarge'),
  mlM4p10xlarge('ml.m4.10xlarge'),
  mlM4p16xlarge('ml.m4.16xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC4Large('ml.c4.large'),
  mlC4Xlarge('ml.c4.xlarge'),
  mlC4p2xlarge('ml.c4.2xlarge'),
  mlC4p4xlarge('ml.c4.4xlarge'),
  mlC4p8xlarge('ml.c4.8xlarge'),
  mlP2Xlarge('ml.p2.xlarge'),
  mlP2p8xlarge('ml.p2.8xlarge'),
  mlP2p16xlarge('ml.p2.16xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlC5Large('ml.c5.large'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5dLarge('ml.c5d.large'),
  mlC5dXlarge('ml.c5d.xlarge'),
  mlC5d2xlarge('ml.c5d.2xlarge'),
  mlC5d4xlarge('ml.c5d.4xlarge'),
  mlC5d9xlarge('ml.c5d.9xlarge'),
  mlC5d18xlarge('ml.c5d.18xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlR5dLarge('ml.r5d.large'),
  mlR5dXlarge('ml.r5d.xlarge'),
  mlR5d2xlarge('ml.r5d.2xlarge'),
  mlR5d4xlarge('ml.r5d.4xlarge'),
  mlR5d12xlarge('ml.r5d.12xlarge'),
  mlR5d24xlarge('ml.r5d.24xlarge'),
  mlInf1Xlarge('ml.inf1.xlarge'),
  mlInf1p2xlarge('ml.inf1.2xlarge'),
  mlInf1p6xlarge('ml.inf1.6xlarge'),
  mlInf1p24xlarge('ml.inf1.24xlarge'),
  mlDl1p24xlarge('ml.dl1.24xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlR8gMedium('ml.r8g.medium'),
  mlR8gLarge('ml.r8g.large'),
  mlR8gXlarge('ml.r8g.xlarge'),
  mlR8g2xlarge('ml.r8g.2xlarge'),
  mlR8g4xlarge('ml.r8g.4xlarge'),
  mlR8g8xlarge('ml.r8g.8xlarge'),
  mlR8g12xlarge('ml.r8g.12xlarge'),
  mlR8g16xlarge('ml.r8g.16xlarge'),
  mlR8g24xlarge('ml.r8g.24xlarge'),
  mlR8g48xlarge('ml.r8g.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlC7gLarge('ml.c7g.large'),
  mlC7gXlarge('ml.c7g.xlarge'),
  mlC7g2xlarge('ml.c7g.2xlarge'),
  mlC7g4xlarge('ml.c7g.4xlarge'),
  mlC7g8xlarge('ml.c7g.8xlarge'),
  mlC7g12xlarge('ml.c7g.12xlarge'),
  mlC7g16xlarge('ml.c7g.16xlarge'),
  mlM6gLarge('ml.m6g.large'),
  mlM6gXlarge('ml.m6g.xlarge'),
  mlM6g2xlarge('ml.m6g.2xlarge'),
  mlM6g4xlarge('ml.m6g.4xlarge'),
  mlM6g8xlarge('ml.m6g.8xlarge'),
  mlM6g12xlarge('ml.m6g.12xlarge'),
  mlM6g16xlarge('ml.m6g.16xlarge'),
  mlM6gdLarge('ml.m6gd.large'),
  mlM6gdXlarge('ml.m6gd.xlarge'),
  mlM6gd2xlarge('ml.m6gd.2xlarge'),
  mlM6gd4xlarge('ml.m6gd.4xlarge'),
  mlM6gd8xlarge('ml.m6gd.8xlarge'),
  mlM6gd12xlarge('ml.m6gd.12xlarge'),
  mlM6gd16xlarge('ml.m6gd.16xlarge'),
  mlC6gLarge('ml.c6g.large'),
  mlC6gXlarge('ml.c6g.xlarge'),
  mlC6g2xlarge('ml.c6g.2xlarge'),
  mlC6g4xlarge('ml.c6g.4xlarge'),
  mlC6g8xlarge('ml.c6g.8xlarge'),
  mlC6g12xlarge('ml.c6g.12xlarge'),
  mlC6g16xlarge('ml.c6g.16xlarge'),
  mlC6gdLarge('ml.c6gd.large'),
  mlC6gdXlarge('ml.c6gd.xlarge'),
  mlC6gd2xlarge('ml.c6gd.2xlarge'),
  mlC6gd4xlarge('ml.c6gd.4xlarge'),
  mlC6gd8xlarge('ml.c6gd.8xlarge'),
  mlC6gd12xlarge('ml.c6gd.12xlarge'),
  mlC6gd16xlarge('ml.c6gd.16xlarge'),
  mlC6gnLarge('ml.c6gn.large'),
  mlC6gnXlarge('ml.c6gn.xlarge'),
  mlC6gn2xlarge('ml.c6gn.2xlarge'),
  mlC6gn4xlarge('ml.c6gn.4xlarge'),
  mlC6gn8xlarge('ml.c6gn.8xlarge'),
  mlC6gn12xlarge('ml.c6gn.12xlarge'),
  mlC6gn16xlarge('ml.c6gn.16xlarge'),
  mlR6gLarge('ml.r6g.large'),
  mlR6gXlarge('ml.r6g.xlarge'),
  mlR6g2xlarge('ml.r6g.2xlarge'),
  mlR6g4xlarge('ml.r6g.4xlarge'),
  mlR6g8xlarge('ml.r6g.8xlarge'),
  mlR6g12xlarge('ml.r6g.12xlarge'),
  mlR6g16xlarge('ml.r6g.16xlarge'),
  mlR6gdLarge('ml.r6gd.large'),
  mlR6gdXlarge('ml.r6gd.xlarge'),
  mlR6gd2xlarge('ml.r6gd.2xlarge'),
  mlR6gd4xlarge('ml.r6gd.4xlarge'),
  mlR6gd8xlarge('ml.r6gd.8xlarge'),
  mlR6gd12xlarge('ml.r6gd.12xlarge'),
  mlR6gd16xlarge('ml.r6gd.16xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlTrn2p48xlarge('ml.trn2.48xlarge'),
  mlInf2Xlarge('ml.inf2.xlarge'),
  mlInf2p8xlarge('ml.inf2.8xlarge'),
  mlInf2p24xlarge('ml.inf2.24xlarge'),
  mlInf2p48xlarge('ml.inf2.48xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5e48xlarge('ml.p5e.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlC8gMedium('ml.c8g.medium'),
  mlC8gLarge('ml.c8g.large'),
  mlC8gXlarge('ml.c8g.xlarge'),
  mlC8g2xlarge('ml.c8g.2xlarge'),
  mlC8g4xlarge('ml.c8g.4xlarge'),
  mlC8g8xlarge('ml.c8g.8xlarge'),
  mlC8g12xlarge('ml.c8g.12xlarge'),
  mlC8g16xlarge('ml.c8g.16xlarge'),
  mlC8g24xlarge('ml.c8g.24xlarge'),
  mlC8g48xlarge('ml.c8g.48xlarge'),
  mlR7gdMedium('ml.r7gd.medium'),
  mlR7gdLarge('ml.r7gd.large'),
  mlR7gdXlarge('ml.r7gd.xlarge'),
  mlR7gd2xlarge('ml.r7gd.2xlarge'),
  mlR7gd4xlarge('ml.r7gd.4xlarge'),
  mlR7gd8xlarge('ml.r7gd.8xlarge'),
  mlR7gd12xlarge('ml.r7gd.12xlarge'),
  mlR7gd16xlarge('ml.r7gd.16xlarge'),
  mlM8gMedium('ml.m8g.medium'),
  mlM8gLarge('ml.m8g.large'),
  mlM8gXlarge('ml.m8g.xlarge'),
  mlM8g2xlarge('ml.m8g.2xlarge'),
  mlM8g4xlarge('ml.m8g.4xlarge'),
  mlM8g8xlarge('ml.m8g.8xlarge'),
  mlM8g12xlarge('ml.m8g.12xlarge'),
  mlM8g16xlarge('ml.m8g.16xlarge'),
  mlM8g24xlarge('ml.m8g.24xlarge'),
  mlM8g48xlarge('ml.m8g.48xlarge'),
  mlC6inLarge('ml.c6in.large'),
  mlC6inXlarge('ml.c6in.xlarge'),
  mlC6in2xlarge('ml.c6in.2xlarge'),
  mlC6in4xlarge('ml.c6in.4xlarge'),
  mlC6in8xlarge('ml.c6in.8xlarge'),
  mlC6in12xlarge('ml.c6in.12xlarge'),
  mlC6in16xlarge('ml.c6in.16xlarge'),
  mlC6in24xlarge('ml.c6in.24xlarge'),
  mlC6in32xlarge('ml.c6in.32xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlP6B300p48xlarge('ml.p6-b300.48xlarge'),
  mlP6eGb200p36xlarge('ml.p6e-gb200.36xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge');

  const SagemakerAlgorithmSupportedRealtimeInferenceInstanceTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `supported_transform_instance_types` — derived from the provider schema description.
enum SagemakerAlgorithmSupportedTransformInstanceTypes
    implements TerraformEnum {
  mlM4Xlarge('ml.m4.xlarge'),
  mlM4p2xlarge('ml.m4.2xlarge'),
  mlM4p4xlarge('ml.m4.4xlarge'),
  mlM4p10xlarge('ml.m4.10xlarge'),
  mlM4p16xlarge('ml.m4.16xlarge'),
  mlC4Xlarge('ml.c4.xlarge'),
  mlC4p2xlarge('ml.c4.2xlarge'),
  mlC4p4xlarge('ml.c4.4xlarge'),
  mlC4p8xlarge('ml.c4.8xlarge'),
  mlP2Xlarge('ml.p2.xlarge'),
  mlP2p8xlarge('ml.p2.8xlarge'),
  mlP2p16xlarge('ml.p2.16xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlInf2Xlarge('ml.inf2.xlarge'),
  mlInf2p8xlarge('ml.inf2.8xlarge'),
  mlInf2p24xlarge('ml.inf2.24xlarge'),
  mlInf2p48xlarge('ml.inf2.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge');

  const SagemakerAlgorithmSupportedTransformInstanceTypes(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerAlgorithmCompressionType>? compressionType;

  final TfArg<String>? etag;

  final TfArg<SagemakerAlgorithmS3DataType> s3DataType;

  final TfArg<String> s3Uri;

  Map<String, Object?> encode() => {
    'compression_type': ?compressionType?.toTfJson(),
    'etag': ?etag?.toTfJson(),
    's3_data_type': s3DataType.toTfJson(),
    's3_uri': s3Uri.toTfJson(),
  };
}

/// `compression_type` — derived from the provider schema description.
enum SagemakerAlgorithmCompressionType implements TerraformEnum {
  none('None'),
  gzip('Gzip');

  const SagemakerAlgorithmCompressionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s3_data_type` — derived from the provider schema description.
enum SagemakerAlgorithmS3DataType implements TerraformEnum {
  s3object('S3Object'),
  s3prefix('S3Prefix');

  const SagemakerAlgorithmS3DataType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerAlgorithmCompressionType> compressionType;

  final TfArg<String>? etag;

  final TfArg<String>? manifestEtag;

  final TfArg<String>? manifestS3Uri;

  final TfArg<SagemakerAlgorithmS3DataSourceS3DataType> s3DataType;

  final TfArg<String> s3Uri;

  final List<SagemakerAlgorithmHubAccessConfig>? hubAccessConfig;

  final List<SagemakerAlgorithmModelAccessConfig>? modelAccessConfig;

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
enum SagemakerAlgorithmS3DataSourceS3DataType implements TerraformEnum {
  s3prefix('S3Prefix'),
  s3object('S3Object');

  const SagemakerAlgorithmS3DataSourceS3DataType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `inference_specification.containers.model_data_source.s3_data_source.hub_access_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class SagemakerAlgorithmHubAccessConfig {
  const SagemakerAlgorithmHubAccessConfig({this.hubContentArn});

  final TfArg<String>? hubContentArn;

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

  Map<String, Object?> encode() => {'accept_eula': ?acceptEula?.toTfJson()};
}

/// Typed helper for the `inference_specification.containers.model_input` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmModelInput {
  const SagemakerAlgorithmModelInput({this.dataInputConfig});

  final TfArg<String>? dataInputConfig;

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

  final List<TfArg<SagemakerAlgorithmSupportedTrainingInstanceTypes>>
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
enum SagemakerAlgorithmSupportedTrainingInstanceTypes implements TerraformEnum {
  mlM4Xlarge('ml.m4.xlarge'),
  mlM4p2xlarge('ml.m4.2xlarge'),
  mlM4p4xlarge('ml.m4.4xlarge'),
  mlM4p10xlarge('ml.m4.10xlarge'),
  mlM4p16xlarge('ml.m4.16xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlC4Xlarge('ml.c4.xlarge'),
  mlC4p2xlarge('ml.c4.2xlarge'),
  mlC4p4xlarge('ml.c4.4xlarge'),
  mlC4p8xlarge('ml.c4.8xlarge'),
  mlP2Xlarge('ml.p2.xlarge'),
  mlP2p8xlarge('ml.p2.8xlarge'),
  mlP2p16xlarge('ml.p2.16xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5e48xlarge('ml.p5e.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5nXlarge('ml.c5n.xlarge'),
  mlC5n2xlarge('ml.c5n.2xlarge'),
  mlC5n4xlarge('ml.c5n.4xlarge'),
  mlC5n9xlarge('ml.c5n.9xlarge'),
  mlC5n18xlarge('ml.c5n.18xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlTrn2p48xlarge('ml.trn2.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlR5dLarge('ml.r5d.large'),
  mlR5dXlarge('ml.r5d.xlarge'),
  mlR5d2xlarge('ml.r5d.2xlarge'),
  mlR5d4xlarge('ml.r5d.4xlarge'),
  mlR5d8xlarge('ml.r5d.8xlarge'),
  mlR5d12xlarge('ml.r5d.12xlarge'),
  mlR5d16xlarge('ml.r5d.16xlarge'),
  mlR5d24xlarge('ml.r5d.24xlarge'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlP6eGb200p36xlarge('ml.p6e-gb200.36xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlP6B300p48xlarge('ml.p6-b300.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge');

  const SagemakerAlgorithmSupportedTrainingInstanceTypes(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerAlgorithmSupportedHyperParametersType> type;

  final List<SagemakerAlgorithmRange>? range;

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
enum SagemakerAlgorithmSupportedHyperParametersType implements TerraformEnum {
  integer('Integer'),
  continuous('Continuous'),
  categorical('Categorical'),
  freetext('FreeText');

  const SagemakerAlgorithmSupportedHyperParametersType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerAlgorithmSupportedTuningJobObjectiveMetricsType> type;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SagemakerAlgorithmSupportedTuningJobObjectiveMetricsType
    implements TerraformEnum {
  maximize('Maximize'),
  minimize('Minimize');

  const SagemakerAlgorithmSupportedTuningJobObjectiveMetricsType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final List<TfArg<SagemakerAlgorithmSupportedCompressionTypes>>?
  supportedCompressionTypes;

  final TfArg<List<String>> supportedContentTypes;

  final List<TfArg<SagemakerAlgorithmSupportedInputModes>> supportedInputModes;

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
enum SagemakerAlgorithmSupportedCompressionTypes implements TerraformEnum {
  none('None'),
  gzip('Gzip');

  const SagemakerAlgorithmSupportedCompressionTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// `supported_input_modes` — derived from the provider schema description.
enum SagemakerAlgorithmSupportedInputModes implements TerraformEnum {
  pipe('Pipe'),
  file('File'),
  fastfile('FastFile');

  const SagemakerAlgorithmSupportedInputModes(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerAlgorithmTrainingInputMode> trainingInputMode;

  final List<SagemakerAlgorithmInputDataConfig>? inputDataConfig;

  final List<SagemakerAlgorithmOutputDataConfig>? outputDataConfig;

  final List<SagemakerAlgorithmResourceConfig>? resourceConfig;

  final List<SagemakerAlgorithmStoppingCondition>? stoppingCondition;

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
enum SagemakerAlgorithmTrainingInputMode implements TerraformEnum {
  pipe('Pipe'),
  file('File'),
  fastfile('FastFile');

  const SagemakerAlgorithmTrainingInputMode(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerAlgorithmCompressionType>? compressionType;

  final TfArg<String>? contentType;

  final TfArg<SagemakerAlgorithmInputMode>? inputMode;

  final TfArg<SagemakerAlgorithmRecordWrapperType>? recordWrapperType;

  final List<SagemakerAlgorithmInputDataConfigDataSource>? dataSource;

  final List<SagemakerAlgorithmShuffleConfig>? shuffleConfig;

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
enum SagemakerAlgorithmInputMode implements TerraformEnum {
  pipe('Pipe'),
  file('File'),
  fastfile('FastFile');

  const SagemakerAlgorithmInputMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `record_wrapper_type` — derived from the provider schema description.
enum SagemakerAlgorithmRecordWrapperType implements TerraformEnum {
  none('None'),
  recordio('RecordIO');

  const SagemakerAlgorithmRecordWrapperType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerAlgorithmFileSystemAccessMode> fileSystemAccessMode;

  final TfArg<String> fileSystemId;

  final TfArg<SagemakerAlgorithmFileSystemType> fileSystemType;

  Map<String, Object?> encode() => {
    'directory_path': directoryPath.toTfJson(),
    'file_system_access_mode': fileSystemAccessMode.toTfJson(),
    'file_system_id': fileSystemId.toTfJson(),
    'file_system_type': fileSystemType.toTfJson(),
  };
}

/// `file_system_access_mode` — derived from the provider schema description.
enum SagemakerAlgorithmFileSystemAccessMode implements TerraformEnum {
  rw('rw'),
  ro('ro');

  const SagemakerAlgorithmFileSystemAccessMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `file_system_type` — derived from the provider schema description.
enum SagemakerAlgorithmFileSystemType implements TerraformEnum {
  efs('EFS'),
  fsxlustre('FSxLustre');

  const SagemakerAlgorithmFileSystemType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerAlgorithmS3DataDistributionType>? s3DataDistributionType;

  final TfArg<SagemakerAlgorithmDataSourceS3DataType> s3DataType;

  final TfArg<String> s3Uri;

  final List<SagemakerAlgorithmHubAccessConfig>? hubAccessConfig;

  final List<SagemakerAlgorithmModelAccessConfig>? modelAccessConfig;

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
enum SagemakerAlgorithmS3DataDistributionType implements TerraformEnum {
  fullyreplicated('FullyReplicated'),
  shardedbys3key('ShardedByS3Key');

  const SagemakerAlgorithmS3DataDistributionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s3_data_type` — derived from the provider schema description.
enum SagemakerAlgorithmDataSourceS3DataType implements TerraformEnum {
  manifestfile('ManifestFile'),
  s3prefix('S3Prefix'),
  augmentedmanifestfile('AugmentedManifestFile'),
  converse('Converse');

  const SagemakerAlgorithmDataSourceS3DataType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `validation_specification.validation_profiles.training_job_definition.input_data_config.shuffle_config` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmShuffleConfig {
  const SagemakerAlgorithmShuffleConfig({required this.seed});

  final TfArg<num> seed;

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

  final TfArg<SagemakerAlgorithmOutputDataConfigCompressionType>?
  compressionType;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String> s3OutputPath;

  Map<String, Object?> encode() => {
    'compression_type': ?compressionType?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
  };
}

/// `compression_type` — derived from the provider schema description.
enum SagemakerAlgorithmOutputDataConfigCompressionType
    implements TerraformEnum {
  gzip('GZIP'),
  none('NONE');

  const SagemakerAlgorithmOutputDataConfigCompressionType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerAlgorithmResourceConfigInstanceType>? instanceType;

  final TfArg<num>? keepAlivePeriodInSeconds;

  final TfArg<String>? trainingPlanArn;

  final TfArg<String>? volumeKmsKeyId;

  final TfArg<num>? volumeSizeInGb;

  final List<SagemakerAlgorithmInstanceGroups>? instanceGroups;

  final List<SagemakerAlgorithmInstancePlacementConfig>?
  instancePlacementConfig;

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
enum SagemakerAlgorithmResourceConfigInstanceType implements TerraformEnum {
  mlM4Xlarge('ml.m4.xlarge'),
  mlM4p2xlarge('ml.m4.2xlarge'),
  mlM4p4xlarge('ml.m4.4xlarge'),
  mlM4p10xlarge('ml.m4.10xlarge'),
  mlM4p16xlarge('ml.m4.16xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlC4Xlarge('ml.c4.xlarge'),
  mlC4p2xlarge('ml.c4.2xlarge'),
  mlC4p4xlarge('ml.c4.4xlarge'),
  mlC4p8xlarge('ml.c4.8xlarge'),
  mlP2Xlarge('ml.p2.xlarge'),
  mlP2p8xlarge('ml.p2.8xlarge'),
  mlP2p16xlarge('ml.p2.16xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP5e48xlarge('ml.p5e.48xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5nXlarge('ml.c5n.xlarge'),
  mlC5n2xlarge('ml.c5n.2xlarge'),
  mlC5n4xlarge('ml.c5n.4xlarge'),
  mlC5n9xlarge('ml.c5n.9xlarge'),
  mlC5n18xlarge('ml.c5n.18xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlTrn2p48xlarge('ml.trn2.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlR5dLarge('ml.r5d.large'),
  mlR5dXlarge('ml.r5d.xlarge'),
  mlR5d2xlarge('ml.r5d.2xlarge'),
  mlR5d4xlarge('ml.r5d.4xlarge'),
  mlR5d8xlarge('ml.r5d.8xlarge'),
  mlR5d12xlarge('ml.r5d.12xlarge'),
  mlR5d16xlarge('ml.r5d.16xlarge'),
  mlR5d24xlarge('ml.r5d.24xlarge'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlP6eGb200p36xlarge('ml.p6e-gb200.36xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlP6B300p48xlarge('ml.p6-b300.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge'),
  mlG7p2xlarge('ml.g7.2xlarge'),
  mlG7p4xlarge('ml.g7.4xlarge'),
  mlG7p8xlarge('ml.g7.8xlarge'),
  mlG7p12xlarge('ml.g7.12xlarge'),
  mlG7p24xlarge('ml.g7.24xlarge'),
  mlG7p48xlarge('ml.g7.48xlarge');

  const SagemakerAlgorithmResourceConfigInstanceType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerAlgorithmResourceConfigInstanceType> instanceType;

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

  final TfArg<SagemakerAlgorithmBatchStrategy>? batchStrategy;

  final TfArg<Map<String, String>>? environment;

  final TfArg<num>? maxConcurrentTransforms;

  final TfArg<num>? maxPayloadInMb;

  final List<SagemakerAlgorithmTransformInput>? transformInput;

  final List<SagemakerAlgorithmTransformOutput>? transformOutput;

  final List<SagemakerAlgorithmTransformResources>? transformResources;

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
enum SagemakerAlgorithmBatchStrategy implements TerraformEnum {
  multirecord('MultiRecord'),
  singlerecord('SingleRecord');

  const SagemakerAlgorithmBatchStrategy(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerAlgorithmCompressionType>? compressionType;

  final TfArg<String>? contentType;

  final TfArg<SagemakerAlgorithmSplitType>? splitType;

  final List<SagemakerAlgorithmTransformInputDataSource>? dataSource;

  Map<String, Object?> encode() => {
    'compression_type': ?compressionType?.toTfJson(),
    'content_type': ?contentType?.toTfJson(),
    'split_type': ?splitType?.toTfJson(),
    if (dataSource != null)
      'data_source': [for (final e in dataSource!) e.encode()],
  };
}

/// `split_type` — derived from the provider schema description.
enum SagemakerAlgorithmSplitType implements TerraformEnum {
  none('None'),
  line('Line'),
  recordio('RecordIO'),
  tfrecord('TFRecord');

  const SagemakerAlgorithmSplitType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `validation_specification.validation_profiles.transform_job_definition.transform_input.data_source` block of
/// `aws_sagemaker_algorithm` (derived from provider schema).
@immutable
final class SagemakerAlgorithmTransformInputDataSource {
  const SagemakerAlgorithmTransformInputDataSource({this.s3DataSource});

  final List<SagemakerAlgorithmTransformInputS3DataSource>? s3DataSource;

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

  final TfArg<SagemakerAlgorithmDataSourceS3DataType> s3DataType;

  final TfArg<String> s3Uri;

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

  final TfArg<SagemakerAlgorithmAssembleWith>? assembleWith;

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String> s3OutputPath;

  Map<String, Object?> encode() => {
    'accept': ?accept?.toTfJson(),
    'assemble_with': ?assembleWith?.toTfJson(),
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    's3_output_path': s3OutputPath.toTfJson(),
  };
}

/// `assemble_with` — derived from the provider schema description.
enum SagemakerAlgorithmAssembleWith implements TerraformEnum {
  none('None'),
  line('Line');

  const SagemakerAlgorithmAssembleWith(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<SagemakerAlgorithmTransformResourcesInstanceType> instanceType;

  final TfArg<String>? transformAmiVersion;

  final TfArg<String>? volumeKmsKeyId;

  Map<String, Object?> encode() => {
    'instance_count': instanceCount.toTfJson(),
    'instance_type': instanceType.toTfJson(),
    'transform_ami_version': ?transformAmiVersion?.toTfJson(),
    'volume_kms_key_id': ?volumeKmsKeyId?.toTfJson(),
  };
}

/// `instance_type` — derived from the provider schema description.
enum SagemakerAlgorithmTransformResourcesInstanceType implements TerraformEnum {
  mlM4Xlarge('ml.m4.xlarge'),
  mlM4p2xlarge('ml.m4.2xlarge'),
  mlM4p4xlarge('ml.m4.4xlarge'),
  mlM4p10xlarge('ml.m4.10xlarge'),
  mlM4p16xlarge('ml.m4.16xlarge'),
  mlC4Xlarge('ml.c4.xlarge'),
  mlC4p2xlarge('ml.c4.2xlarge'),
  mlC4p4xlarge('ml.c4.4xlarge'),
  mlC4p8xlarge('ml.c4.8xlarge'),
  mlP2Xlarge('ml.p2.xlarge'),
  mlP2p8xlarge('ml.p2.8xlarge'),
  mlP2p16xlarge('ml.p2.16xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlM5Large('ml.m5.large'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlInf2Xlarge('ml.inf2.xlarge'),
  mlInf2p8xlarge('ml.inf2.8xlarge'),
  mlInf2p24xlarge('ml.inf2.24xlarge'),
  mlInf2p48xlarge('ml.inf2.48xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge');

  const SagemakerAlgorithmTransformResourcesInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_sagemaker_algorithm`.
final class AwsSagemakerAlgorithm extends Resource {
  static const String tfType = 'aws_sagemaker_algorithm';

  AwsSagemakerAlgorithm({
    required super.localName,
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
