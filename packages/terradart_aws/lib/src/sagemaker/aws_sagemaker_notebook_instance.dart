// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sagemaker_notebook_instance`.
const Set<String> _awsSagemakerNotebookInstanceSensitive = <String>{};

/// Sagemaker Notebook Instance Direct Internet enum for `direct_internet_access`.
extension type const SagemakerNotebookInstanceDirectInternetAccess._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerNotebookInstanceDirectInternetAccess.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerNotebookInstanceDirectInternetAccess.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerNotebookInstanceDirectInternetAccess.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = SagemakerNotebookInstanceDirectInternetAccess._(
    TfArgLiteral('Enabled'),
  );
  static const disabled = SagemakerNotebookInstanceDirectInternetAccess._(
    TfArgLiteral('Disabled'),
  );

  static const List<SagemakerNotebookInstanceDirectInternetAccess> values = [
    enabled,
    disabled,
  ];
}

/// Sagemaker Notebook Instance enum for `instance_type`.
extension type const SagemakerNotebookInstanceType._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerNotebookInstanceType.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerNotebookInstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerNotebookInstanceType.arg(TfArg<String> arg) : this._(arg);

  static const mlT2Medium = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.t2.medium'),
  );
  static const mlT2Large = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.t2.large'),
  );
  static const mlT2Xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.t2.xlarge'),
  );
  static const mlT2p2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.t2.2xlarge'),
  );
  static const mlT3Medium = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.t3.medium'),
  );
  static const mlT3Large = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.t3.large'),
  );
  static const mlT3Xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.t3.xlarge'),
  );
  static const mlT3p2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.t3.2xlarge'),
  );
  static const mlM4Xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m4.xlarge'),
  );
  static const mlM4p2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m4.2xlarge'),
  );
  static const mlM4p4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m4.4xlarge'),
  );
  static const mlM4p10xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m4.10xlarge'),
  );
  static const mlM4p16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m4.16xlarge'),
  );
  static const mlM5Xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m5.xlarge'),
  );
  static const mlM5p2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m5.2xlarge'),
  );
  static const mlM5p4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m5.4xlarge'),
  );
  static const mlM5p12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m5.12xlarge'),
  );
  static const mlM5p24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m5.24xlarge'),
  );
  static const mlM5dLarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m5d.large'),
  );
  static const mlM5dXlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m5d.xlarge'),
  );
  static const mlM5d2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m5d.2xlarge'),
  );
  static const mlM5d4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m5d.4xlarge'),
  );
  static const mlM5d8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m5d.8xlarge'),
  );
  static const mlM5d12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m5d.12xlarge'),
  );
  static const mlM5d16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m5d.16xlarge'),
  );
  static const mlM5d24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m5d.24xlarge'),
  );
  static const mlC4Xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c4.xlarge'),
  );
  static const mlC4p2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c4.2xlarge'),
  );
  static const mlC4p4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c4.4xlarge'),
  );
  static const mlC4p8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c4.8xlarge'),
  );
  static const mlC5Xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c5.xlarge'),
  );
  static const mlC5p2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c5.2xlarge'),
  );
  static const mlC5p4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c5.4xlarge'),
  );
  static const mlC5p9xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c5.9xlarge'),
  );
  static const mlC5p18xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c5.18xlarge'),
  );
  static const mlC5dXlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c5d.xlarge'),
  );
  static const mlC5d2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c5d.2xlarge'),
  );
  static const mlC5d4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c5d.4xlarge'),
  );
  static const mlC5d9xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c5d.9xlarge'),
  );
  static const mlC5d18xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c5d.18xlarge'),
  );
  static const mlP2Xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.p2.xlarge'),
  );
  static const mlP2p8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.p2.8xlarge'),
  );
  static const mlP2p16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.p2.16xlarge'),
  );
  static const mlP3p2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.p3.2xlarge'),
  );
  static const mlP3p8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.p3.8xlarge'),
  );
  static const mlP3p16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.p3.16xlarge'),
  );
  static const mlP3dn24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.p3dn.24xlarge'),
  );
  static const mlG4dnXlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g4dn.xlarge'),
  );
  static const mlG4dn2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g4dn.2xlarge'),
  );
  static const mlG4dn4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g4dn.4xlarge'),
  );
  static const mlG4dn8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g4dn.8xlarge'),
  );
  static const mlG4dn12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g4dn.12xlarge'),
  );
  static const mlG4dn16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g4dn.16xlarge'),
  );
  static const mlR5Large = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r5.large'),
  );
  static const mlR5Xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r5.xlarge'),
  );
  static const mlR5p2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r5.2xlarge'),
  );
  static const mlR5p4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r5.4xlarge'),
  );
  static const mlR5p8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r5.8xlarge'),
  );
  static const mlR5p12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r5.12xlarge'),
  );
  static const mlR5p16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r5.16xlarge'),
  );
  static const mlR5p24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r5.24xlarge'),
  );
  static const mlG5Xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g5.xlarge'),
  );
  static const mlG5p2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g5.2xlarge'),
  );
  static const mlG5p4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g5.4xlarge'),
  );
  static const mlG5p8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g5.8xlarge'),
  );
  static const mlG5p16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g5.16xlarge'),
  );
  static const mlG5p12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g5.12xlarge'),
  );
  static const mlG5p24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g5.24xlarge'),
  );
  static const mlG5p48xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g5.48xlarge'),
  );
  static const mlInf1Xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.inf1.xlarge'),
  );
  static const mlInf1p2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.inf1.2xlarge'),
  );
  static const mlInf1p6xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.inf1.6xlarge'),
  );
  static const mlInf1p24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.inf1.24xlarge'),
  );
  static const mlTrn1p2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.trn1.2xlarge'),
  );
  static const mlTrn1p32xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.trn1.32xlarge'),
  );
  static const mlTrn1n32xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.trn1n.32xlarge'),
  );
  static const mlInf2Xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.inf2.xlarge'),
  );
  static const mlInf2p8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.inf2.8xlarge'),
  );
  static const mlInf2p24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.inf2.24xlarge'),
  );
  static const mlInf2p48xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.inf2.48xlarge'),
  );
  static const mlP4d24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.p4d.24xlarge'),
  );
  static const mlP4de24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.p4de.24xlarge'),
  );
  static const mlP5p48xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.p5.48xlarge'),
  );
  static const mlP6B200p48xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.p6-b200.48xlarge'),
  );
  static const mlM6iLarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6i.large'),
  );
  static const mlM6iXlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6i.xlarge'),
  );
  static const mlM6i2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6i.2xlarge'),
  );
  static const mlM6i4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6i.4xlarge'),
  );
  static const mlM6i8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6i.8xlarge'),
  );
  static const mlM6i12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6i.12xlarge'),
  );
  static const mlM6i16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6i.16xlarge'),
  );
  static const mlM6i24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6i.24xlarge'),
  );
  static const mlM6i32xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6i.32xlarge'),
  );
  static const mlM7iLarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m7i.large'),
  );
  static const mlM7iXlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m7i.xlarge'),
  );
  static const mlM7i2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m7i.2xlarge'),
  );
  static const mlM7i4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m7i.4xlarge'),
  );
  static const mlM7i8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m7i.8xlarge'),
  );
  static const mlM7i12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m7i.12xlarge'),
  );
  static const mlM7i16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m7i.16xlarge'),
  );
  static const mlM7i24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m7i.24xlarge'),
  );
  static const mlM7i48xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m7i.48xlarge'),
  );
  static const mlC6iLarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6i.large'),
  );
  static const mlC6iXlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6i.xlarge'),
  );
  static const mlC6i2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6i.2xlarge'),
  );
  static const mlC6i4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6i.4xlarge'),
  );
  static const mlC6i8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6i.8xlarge'),
  );
  static const mlC6i12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6i.12xlarge'),
  );
  static const mlC6i16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6i.16xlarge'),
  );
  static const mlC6i24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6i.24xlarge'),
  );
  static const mlC6i32xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6i.32xlarge'),
  );
  static const mlC7iLarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c7i.large'),
  );
  static const mlC7iXlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c7i.xlarge'),
  );
  static const mlC7i2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c7i.2xlarge'),
  );
  static const mlC7i4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c7i.4xlarge'),
  );
  static const mlC7i8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c7i.8xlarge'),
  );
  static const mlC7i12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c7i.12xlarge'),
  );
  static const mlC7i16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c7i.16xlarge'),
  );
  static const mlC7i24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c7i.24xlarge'),
  );
  static const mlC7i48xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c7i.48xlarge'),
  );
  static const mlR6iLarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6i.large'),
  );
  static const mlR6iXlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6i.xlarge'),
  );
  static const mlR6i2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6i.2xlarge'),
  );
  static const mlR6i4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6i.4xlarge'),
  );
  static const mlR6i8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6i.8xlarge'),
  );
  static const mlR6i12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6i.12xlarge'),
  );
  static const mlR6i16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6i.16xlarge'),
  );
  static const mlR6i24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6i.24xlarge'),
  );
  static const mlR6i32xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6i.32xlarge'),
  );
  static const mlR7iLarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r7i.large'),
  );
  static const mlR7iXlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r7i.xlarge'),
  );
  static const mlR7i2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r7i.2xlarge'),
  );
  static const mlR7i4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r7i.4xlarge'),
  );
  static const mlR7i8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r7i.8xlarge'),
  );
  static const mlR7i12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r7i.12xlarge'),
  );
  static const mlR7i16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r7i.16xlarge'),
  );
  static const mlR7i24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r7i.24xlarge'),
  );
  static const mlR7i48xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r7i.48xlarge'),
  );
  static const mlM6idLarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6id.large'),
  );
  static const mlM6idXlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6id.xlarge'),
  );
  static const mlM6id2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6id.2xlarge'),
  );
  static const mlM6id4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6id.4xlarge'),
  );
  static const mlM6id8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6id.8xlarge'),
  );
  static const mlM6id12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6id.12xlarge'),
  );
  static const mlM6id16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6id.16xlarge'),
  );
  static const mlM6id24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6id.24xlarge'),
  );
  static const mlM6id32xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.m6id.32xlarge'),
  );
  static const mlC6idLarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6id.large'),
  );
  static const mlC6idXlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6id.xlarge'),
  );
  static const mlC6id2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6id.2xlarge'),
  );
  static const mlC6id4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6id.4xlarge'),
  );
  static const mlC6id8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6id.8xlarge'),
  );
  static const mlC6id12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6id.12xlarge'),
  );
  static const mlC6id16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6id.16xlarge'),
  );
  static const mlC6id24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6id.24xlarge'),
  );
  static const mlC6id32xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.c6id.32xlarge'),
  );
  static const mlR6idLarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6id.large'),
  );
  static const mlR6idXlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6id.xlarge'),
  );
  static const mlR6id2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6id.2xlarge'),
  );
  static const mlR6id4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6id.4xlarge'),
  );
  static const mlR6id8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6id.8xlarge'),
  );
  static const mlR6id12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6id.12xlarge'),
  );
  static const mlR6id16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6id.16xlarge'),
  );
  static const mlR6id24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6id.24xlarge'),
  );
  static const mlR6id32xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.r6id.32xlarge'),
  );
  static const mlG6Xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6.xlarge'),
  );
  static const mlG6p2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6.2xlarge'),
  );
  static const mlG6p4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6.4xlarge'),
  );
  static const mlG6p8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6.8xlarge'),
  );
  static const mlG6p12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6.12xlarge'),
  );
  static const mlG6p16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6.16xlarge'),
  );
  static const mlG6p24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6.24xlarge'),
  );
  static const mlG6p48xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6.48xlarge'),
  );
  static const mlG7e2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g7e.2xlarge'),
  );
  static const mlG7e4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g7e.4xlarge'),
  );
  static const mlG7e8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g7e.8xlarge'),
  );
  static const mlG7e12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g7e.12xlarge'),
  );
  static const mlG7e24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g7e.24xlarge'),
  );
  static const mlG7e48xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g7e.48xlarge'),
  );
  static const mlP5p4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.p5.4xlarge'),
  );
  static const mlP5en48xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.p5en.48xlarge'),
  );
  static const mlG6eXlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6e.xlarge'),
  );
  static const mlG6e2xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6e.2xlarge'),
  );
  static const mlG6e4xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6e.4xlarge'),
  );
  static const mlG6e8xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6e.8xlarge'),
  );
  static const mlG6e12xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6e.12xlarge'),
  );
  static const mlG6e16xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6e.16xlarge'),
  );
  static const mlG6e24xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6e.24xlarge'),
  );
  static const mlG6e48xlarge = SagemakerNotebookInstanceType._(
    TfArgLiteral('ml.g6e.48xlarge'),
  );

  static const List<SagemakerNotebookInstanceType> values = [
    mlT2Medium,
    mlT2Large,
    mlT2Xlarge,
    mlT2p2xlarge,
    mlT3Medium,
    mlT3Large,
    mlT3Xlarge,
    mlT3p2xlarge,
    mlM4Xlarge,
    mlM4p2xlarge,
    mlM4p4xlarge,
    mlM4p10xlarge,
    mlM4p16xlarge,
    mlM5Xlarge,
    mlM5p2xlarge,
    mlM5p4xlarge,
    mlM5p12xlarge,
    mlM5p24xlarge,
    mlM5dLarge,
    mlM5dXlarge,
    mlM5d2xlarge,
    mlM5d4xlarge,
    mlM5d8xlarge,
    mlM5d12xlarge,
    mlM5d16xlarge,
    mlM5d24xlarge,
    mlC4Xlarge,
    mlC4p2xlarge,
    mlC4p4xlarge,
    mlC4p8xlarge,
    mlC5Xlarge,
    mlC5p2xlarge,
    mlC5p4xlarge,
    mlC5p9xlarge,
    mlC5p18xlarge,
    mlC5dXlarge,
    mlC5d2xlarge,
    mlC5d4xlarge,
    mlC5d9xlarge,
    mlC5d18xlarge,
    mlP2Xlarge,
    mlP2p8xlarge,
    mlP2p16xlarge,
    mlP3p2xlarge,
    mlP3p8xlarge,
    mlP3p16xlarge,
    mlP3dn24xlarge,
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
    mlR5p8xlarge,
    mlR5p12xlarge,
    mlR5p16xlarge,
    mlR5p24xlarge,
    mlG5Xlarge,
    mlG5p2xlarge,
    mlG5p4xlarge,
    mlG5p8xlarge,
    mlG5p16xlarge,
    mlG5p12xlarge,
    mlG5p24xlarge,
    mlG5p48xlarge,
    mlInf1Xlarge,
    mlInf1p2xlarge,
    mlInf1p6xlarge,
    mlInf1p24xlarge,
    mlTrn1p2xlarge,
    mlTrn1p32xlarge,
    mlTrn1n32xlarge,
    mlInf2Xlarge,
    mlInf2p8xlarge,
    mlInf2p24xlarge,
    mlInf2p48xlarge,
    mlP4d24xlarge,
    mlP4de24xlarge,
    mlP5p48xlarge,
    mlP6B200p48xlarge,
    mlM6iLarge,
    mlM6iXlarge,
    mlM6i2xlarge,
    mlM6i4xlarge,
    mlM6i8xlarge,
    mlM6i12xlarge,
    mlM6i16xlarge,
    mlM6i24xlarge,
    mlM6i32xlarge,
    mlM7iLarge,
    mlM7iXlarge,
    mlM7i2xlarge,
    mlM7i4xlarge,
    mlM7i8xlarge,
    mlM7i12xlarge,
    mlM7i16xlarge,
    mlM7i24xlarge,
    mlM7i48xlarge,
    mlC6iLarge,
    mlC6iXlarge,
    mlC6i2xlarge,
    mlC6i4xlarge,
    mlC6i8xlarge,
    mlC6i12xlarge,
    mlC6i16xlarge,
    mlC6i24xlarge,
    mlC6i32xlarge,
    mlC7iLarge,
    mlC7iXlarge,
    mlC7i2xlarge,
    mlC7i4xlarge,
    mlC7i8xlarge,
    mlC7i12xlarge,
    mlC7i16xlarge,
    mlC7i24xlarge,
    mlC7i48xlarge,
    mlR6iLarge,
    mlR6iXlarge,
    mlR6i2xlarge,
    mlR6i4xlarge,
    mlR6i8xlarge,
    mlR6i12xlarge,
    mlR6i16xlarge,
    mlR6i24xlarge,
    mlR6i32xlarge,
    mlR7iLarge,
    mlR7iXlarge,
    mlR7i2xlarge,
    mlR7i4xlarge,
    mlR7i8xlarge,
    mlR7i12xlarge,
    mlR7i16xlarge,
    mlR7i24xlarge,
    mlR7i48xlarge,
    mlM6idLarge,
    mlM6idXlarge,
    mlM6id2xlarge,
    mlM6id4xlarge,
    mlM6id8xlarge,
    mlM6id12xlarge,
    mlM6id16xlarge,
    mlM6id24xlarge,
    mlM6id32xlarge,
    mlC6idLarge,
    mlC6idXlarge,
    mlC6id2xlarge,
    mlC6id4xlarge,
    mlC6id8xlarge,
    mlC6id12xlarge,
    mlC6id16xlarge,
    mlC6id24xlarge,
    mlC6id32xlarge,
    mlR6idLarge,
    mlR6idXlarge,
    mlR6id2xlarge,
    mlR6id4xlarge,
    mlR6id8xlarge,
    mlR6id12xlarge,
    mlR6id16xlarge,
    mlR6id24xlarge,
    mlR6id32xlarge,
    mlG6Xlarge,
    mlG6p2xlarge,
    mlG6p4xlarge,
    mlG6p8xlarge,
    mlG6p12xlarge,
    mlG6p16xlarge,
    mlG6p24xlarge,
    mlG6p48xlarge,
    mlG7e2xlarge,
    mlG7e4xlarge,
    mlG7e8xlarge,
    mlG7e12xlarge,
    mlG7e24xlarge,
    mlG7e48xlarge,
    mlP5p4xlarge,
    mlP5en48xlarge,
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

/// Sagemaker Notebook Instance Root enum for `root_access`.
extension type const SagemakerNotebookInstanceRootAccess._(TfArg<String> _)
    implements TfArg<String> {
  SagemakerNotebookInstanceRootAccess.variable(String name)
    : this._(TfArg.variable(name));
  SagemakerNotebookInstanceRootAccess.expression(String template)
    : this._(TfArg.expression(template));
  const SagemakerNotebookInstanceRootAccess.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = SagemakerNotebookInstanceRootAccess._(
    TfArgLiteral('Enabled'),
  );
  static const disabled = SagemakerNotebookInstanceRootAccess._(
    TfArgLiteral('Disabled'),
  );

  static const List<SagemakerNotebookInstanceRootAccess> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `instance_metadata_service_configuration` block of
/// `aws_sagemaker_notebook_instance` (derived from provider schema).
@immutable
final class SagemakerNotebookInstanceMetadataServiceConfiguration {
  const SagemakerNotebookInstanceMetadataServiceConfiguration({
    this.minimumInstanceMetadataServiceVersion,
  });

  final SagemakerNotebookInstanceMinimumInstanceMetadataServiceVersion?
  minimumInstanceMetadataServiceVersion;

  Map<String, Object?> encode() => {
    'minimum_instance_metadata_service_version':
        ?minimumInstanceMetadataServiceVersion?.toTfJson(),
  };
}

/// `minimum_instance_metadata_service_version` — derived from the provider schema description.
extension type const SagemakerNotebookInstanceMinimumInstanceMetadataServiceVersion._(
  TfArg<String> _
) implements TfArg<String> {
  SagemakerNotebookInstanceMinimumInstanceMetadataServiceVersion.variable(
    String name,
  ) : this._(TfArg.variable(name));
  SagemakerNotebookInstanceMinimumInstanceMetadataServiceVersion.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SagemakerNotebookInstanceMinimumInstanceMetadataServiceVersion.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const v1 =
      SagemakerNotebookInstanceMinimumInstanceMetadataServiceVersion._(
        TfArgLiteral('1'),
      );
  static const v2 =
      SagemakerNotebookInstanceMinimumInstanceMetadataServiceVersion._(
        TfArgLiteral('2'),
      );

  static const List<
    SagemakerNotebookInstanceMinimumInstanceMetadataServiceVersion
  >
  values = [v1, v2];
}

/// Factory wrapper for `aws_sagemaker_notebook_instance`.
final class AwsSagemakerNotebookInstance extends Resource {
  static const String tfType = 'aws_sagemaker_notebook_instance';

  AwsSagemakerNotebookInstance(
    super.localName, {
    TfArg<List<String>>? additionalCodeRepositories,
    TfArg<String>? defaultCodeRepository,
    SagemakerNotebookInstanceDirectInternetAccess? directInternetAccess,
    required SagemakerNotebookInstanceType instanceType,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? lifecycleConfigName,
    required TfArg<String> name,
    TfArg<String>? platformIdentifier,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    SagemakerNotebookInstanceRootAccess? rootAccess,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups,
    RefTo<AwsSubnet>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? volumeSize,
    SagemakerNotebookInstanceMetadataServiceConfiguration?
    instanceMetadataServiceConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_code_repositories': ?additionalCodeRepositories,
           'default_code_repository': ?defaultCodeRepository,
           'direct_internet_access': ?directInternetAccess,
           'instance_type': instanceType,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'lifecycle_config_name': ?lifecycleConfigName,
           'name': name,
           'platform_identifier': ?platformIdentifier,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'root_access': ?rootAccess,
           'security_groups': ?securityGroups?.encodeAs('id'),
           'subnet_id': ?subnetId?.encodeAs('id'),
           'tags': ?tags,
           'volume_size': ?volumeSize,
           if (instanceMetadataServiceConfiguration != null)
             'instance_metadata_service_configuration': TfArg.literal(
               instanceMetadataServiceConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerNotebookInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerNotebookInstance>`.
  RefTo<AwsSagemakerNotebookInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `additional_code_repositories` attribute.
  TfRef<List<String>> get additionalCodeRepositories =>
      TfRef.attribute<List<String>>(this, 'additional_code_repositories');

  /// Reference to `default_code_repository` attribute.
  TfRef<String> get defaultCodeRepository =>
      TfRef.attribute<String>(this, 'default_code_repository');

  /// Reference to `direct_internet_access` attribute.
  TfRef<String> get directInternetAccess =>
      TfRef.attribute<String>(this, 'direct_internet_access');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `lifecycle_config_name` attribute.
  TfRef<String> get lifecycleConfigName =>
      TfRef.attribute<String>(this, 'lifecycle_config_name');

  /// Reference to `platform_identifier` attribute.
  TfRef<String> get platformIdentifier =>
      TfRef.attribute<String>(this, 'platform_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `root_access` attribute.
  TfRef<String> get rootAccess => TfRef.attribute<String>(this, 'root_access');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `volume_size` attribute.
  TfRef<num> get volumeSize => TfRef.attribute<num>(this, 'volume_size');
}
