// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_gamelift_fleet`.
const Set<String> _awsGameliftFleetSensitive = <String>{};

/// Gamelift Fleet Ec2 Instance enum for `ec2_instance_type`.
enum GameliftFleetEc2InstanceType implements TerraformEnum {
  t2Micro('t2.micro'),
  t2Small('t2.small'),
  t2Medium('t2.medium'),
  t2Large('t2.large'),
  c3Large('c3.large'),
  c3Xlarge('c3.xlarge'),
  c3p2xlarge('c3.2xlarge'),
  c3p4xlarge('c3.4xlarge'),
  c3p8xlarge('c3.8xlarge'),
  c4Large('c4.large'),
  c4Xlarge('c4.xlarge'),
  c4p2xlarge('c4.2xlarge'),
  c4p4xlarge('c4.4xlarge'),
  c4p8xlarge('c4.8xlarge'),
  c5Large('c5.large'),
  c5Xlarge('c5.xlarge'),
  c5p2xlarge('c5.2xlarge'),
  c5p4xlarge('c5.4xlarge'),
  c5p9xlarge('c5.9xlarge'),
  c5p12xlarge('c5.12xlarge'),
  c5p18xlarge('c5.18xlarge'),
  c5p24xlarge('c5.24xlarge'),
  c5aLarge('c5a.large'),
  c5aXlarge('c5a.xlarge'),
  c5a2xlarge('c5a.2xlarge'),
  c5a4xlarge('c5a.4xlarge'),
  c5a8xlarge('c5a.8xlarge'),
  c5a12xlarge('c5a.12xlarge'),
  c5a16xlarge('c5a.16xlarge'),
  c5a24xlarge('c5a.24xlarge'),
  r3Large('r3.large'),
  r3Xlarge('r3.xlarge'),
  r3p2xlarge('r3.2xlarge'),
  r3p4xlarge('r3.4xlarge'),
  r3p8xlarge('r3.8xlarge'),
  r4Large('r4.large'),
  r4Xlarge('r4.xlarge'),
  r4p2xlarge('r4.2xlarge'),
  r4p4xlarge('r4.4xlarge'),
  r4p8xlarge('r4.8xlarge'),
  r4p16xlarge('r4.16xlarge'),
  r5Large('r5.large'),
  r5Xlarge('r5.xlarge'),
  r5p2xlarge('r5.2xlarge'),
  r5p4xlarge('r5.4xlarge'),
  r5p8xlarge('r5.8xlarge'),
  r5p12xlarge('r5.12xlarge'),
  r5p16xlarge('r5.16xlarge'),
  r5p24xlarge('r5.24xlarge'),
  r5aLarge('r5a.large'),
  r5aXlarge('r5a.xlarge'),
  r5a2xlarge('r5a.2xlarge'),
  r5a4xlarge('r5a.4xlarge'),
  r5a8xlarge('r5a.8xlarge'),
  r5a12xlarge('r5a.12xlarge'),
  r5a16xlarge('r5a.16xlarge'),
  r5a24xlarge('r5a.24xlarge'),
  m3Medium('m3.medium'),
  m3Large('m3.large'),
  m3Xlarge('m3.xlarge'),
  m3p2xlarge('m3.2xlarge'),
  m4Large('m4.large'),
  m4Xlarge('m4.xlarge'),
  m4p2xlarge('m4.2xlarge'),
  m4p4xlarge('m4.4xlarge'),
  m4p10xlarge('m4.10xlarge'),
  m5Large('m5.large'),
  m5Xlarge('m5.xlarge'),
  m5p2xlarge('m5.2xlarge'),
  m5p4xlarge('m5.4xlarge'),
  m5p8xlarge('m5.8xlarge'),
  m5p12xlarge('m5.12xlarge'),
  m5p16xlarge('m5.16xlarge'),
  m5p24xlarge('m5.24xlarge'),
  m5aLarge('m5a.large'),
  m5aXlarge('m5a.xlarge'),
  m5a2xlarge('m5a.2xlarge'),
  m5a4xlarge('m5a.4xlarge'),
  m5a8xlarge('m5a.8xlarge'),
  m5a12xlarge('m5a.12xlarge'),
  m5a16xlarge('m5a.16xlarge'),
  m5a24xlarge('m5a.24xlarge'),
  c5dLarge('c5d.large'),
  c5dXlarge('c5d.xlarge'),
  c5d2xlarge('c5d.2xlarge'),
  c5d4xlarge('c5d.4xlarge'),
  c5d9xlarge('c5d.9xlarge'),
  c5d12xlarge('c5d.12xlarge'),
  c5d18xlarge('c5d.18xlarge'),
  c5d24xlarge('c5d.24xlarge'),
  c6aLarge('c6a.large'),
  c6aXlarge('c6a.xlarge'),
  c6a2xlarge('c6a.2xlarge'),
  c6a4xlarge('c6a.4xlarge'),
  c6a8xlarge('c6a.8xlarge'),
  c6a12xlarge('c6a.12xlarge'),
  c6a16xlarge('c6a.16xlarge'),
  c6a24xlarge('c6a.24xlarge'),
  c6iLarge('c6i.large'),
  c6iXlarge('c6i.xlarge'),
  c6i2xlarge('c6i.2xlarge'),
  c6i4xlarge('c6i.4xlarge'),
  c6i8xlarge('c6i.8xlarge'),
  c6i12xlarge('c6i.12xlarge'),
  c6i16xlarge('c6i.16xlarge'),
  c6i24xlarge('c6i.24xlarge'),
  r5dLarge('r5d.large'),
  r5dXlarge('r5d.xlarge'),
  r5d2xlarge('r5d.2xlarge'),
  r5d4xlarge('r5d.4xlarge'),
  r5d8xlarge('r5d.8xlarge'),
  r5d12xlarge('r5d.12xlarge'),
  r5d16xlarge('r5d.16xlarge'),
  r5d24xlarge('r5d.24xlarge'),
  m6gMedium('m6g.medium'),
  m6gLarge('m6g.large'),
  m6gXlarge('m6g.xlarge'),
  m6g2xlarge('m6g.2xlarge'),
  m6g4xlarge('m6g.4xlarge'),
  m6g8xlarge('m6g.8xlarge'),
  m6g12xlarge('m6g.12xlarge'),
  m6g16xlarge('m6g.16xlarge'),
  c6gMedium('c6g.medium'),
  c6gLarge('c6g.large'),
  c6gXlarge('c6g.xlarge'),
  c6g2xlarge('c6g.2xlarge'),
  c6g4xlarge('c6g.4xlarge'),
  c6g8xlarge('c6g.8xlarge'),
  c6g12xlarge('c6g.12xlarge'),
  c6g16xlarge('c6g.16xlarge'),
  r6gMedium('r6g.medium'),
  r6gLarge('r6g.large'),
  r6gXlarge('r6g.xlarge'),
  r6g2xlarge('r6g.2xlarge'),
  r6g4xlarge('r6g.4xlarge'),
  r6g8xlarge('r6g.8xlarge'),
  r6g12xlarge('r6g.12xlarge'),
  r6g16xlarge('r6g.16xlarge'),
  c6gnMedium('c6gn.medium'),
  c6gnLarge('c6gn.large'),
  c6gnXlarge('c6gn.xlarge'),
  c6gn2xlarge('c6gn.2xlarge'),
  c6gn4xlarge('c6gn.4xlarge'),
  c6gn8xlarge('c6gn.8xlarge'),
  c6gn12xlarge('c6gn.12xlarge'),
  c6gn16xlarge('c6gn.16xlarge'),
  c7gMedium('c7g.medium'),
  c7gLarge('c7g.large'),
  c7gXlarge('c7g.xlarge'),
  c7g2xlarge('c7g.2xlarge'),
  c7g4xlarge('c7g.4xlarge'),
  c7g8xlarge('c7g.8xlarge'),
  c7g12xlarge('c7g.12xlarge'),
  c7g16xlarge('c7g.16xlarge'),
  r7gMedium('r7g.medium'),
  r7gLarge('r7g.large'),
  r7gXlarge('r7g.xlarge'),
  r7g2xlarge('r7g.2xlarge'),
  r7g4xlarge('r7g.4xlarge'),
  r7g8xlarge('r7g.8xlarge'),
  r7g12xlarge('r7g.12xlarge'),
  r7g16xlarge('r7g.16xlarge'),
  m7gMedium('m7g.medium'),
  m7gLarge('m7g.large'),
  m7gXlarge('m7g.xlarge'),
  m7g2xlarge('m7g.2xlarge'),
  m7g4xlarge('m7g.4xlarge'),
  m7g8xlarge('m7g.8xlarge'),
  m7g12xlarge('m7g.12xlarge'),
  m7g16xlarge('m7g.16xlarge'),
  g5gXlarge('g5g.xlarge'),
  g5g2xlarge('g5g.2xlarge'),
  g5g4xlarge('g5g.4xlarge'),
  g5g8xlarge('g5g.8xlarge'),
  g5g16xlarge('g5g.16xlarge'),
  r6iLarge('r6i.large'),
  r6iXlarge('r6i.xlarge'),
  r6i2xlarge('r6i.2xlarge'),
  r6i4xlarge('r6i.4xlarge'),
  r6i8xlarge('r6i.8xlarge'),
  r6i12xlarge('r6i.12xlarge'),
  r6i16xlarge('r6i.16xlarge'),
  c6gdMedium('c6gd.medium'),
  c6gdLarge('c6gd.large'),
  c6gdXlarge('c6gd.xlarge'),
  c6gd2xlarge('c6gd.2xlarge'),
  c6gd4xlarge('c6gd.4xlarge'),
  c6gd8xlarge('c6gd.8xlarge'),
  c6gd12xlarge('c6gd.12xlarge'),
  c6gd16xlarge('c6gd.16xlarge'),
  c6inLarge('c6in.large'),
  c6inXlarge('c6in.xlarge'),
  c6in2xlarge('c6in.2xlarge'),
  c6in4xlarge('c6in.4xlarge'),
  c6in8xlarge('c6in.8xlarge'),
  c6in12xlarge('c6in.12xlarge'),
  c6in16xlarge('c6in.16xlarge'),
  c7aMedium('c7a.medium'),
  c7aLarge('c7a.large'),
  c7aXlarge('c7a.xlarge'),
  c7a2xlarge('c7a.2xlarge'),
  c7a4xlarge('c7a.4xlarge'),
  c7a8xlarge('c7a.8xlarge'),
  c7a12xlarge('c7a.12xlarge'),
  c7a16xlarge('c7a.16xlarge'),
  c7gdMedium('c7gd.medium'),
  c7gdLarge('c7gd.large'),
  c7gdXlarge('c7gd.xlarge'),
  c7gd2xlarge('c7gd.2xlarge'),
  c7gd4xlarge('c7gd.4xlarge'),
  c7gd8xlarge('c7gd.8xlarge'),
  c7gd12xlarge('c7gd.12xlarge'),
  c7gd16xlarge('c7gd.16xlarge'),
  c7gnMedium('c7gn.medium'),
  c7gnLarge('c7gn.large'),
  c7gnXlarge('c7gn.xlarge'),
  c7gn2xlarge('c7gn.2xlarge'),
  c7gn4xlarge('c7gn.4xlarge'),
  c7gn8xlarge('c7gn.8xlarge'),
  c7gn12xlarge('c7gn.12xlarge'),
  c7gn16xlarge('c7gn.16xlarge'),
  c7iLarge('c7i.large'),
  c7iXlarge('c7i.xlarge'),
  c7i2xlarge('c7i.2xlarge'),
  c7i4xlarge('c7i.4xlarge'),
  c7i8xlarge('c7i.8xlarge'),
  c7i12xlarge('c7i.12xlarge'),
  c7i16xlarge('c7i.16xlarge'),
  m6aLarge('m6a.large'),
  m6aXlarge('m6a.xlarge'),
  m6a2xlarge('m6a.2xlarge'),
  m6a4xlarge('m6a.4xlarge'),
  m6a8xlarge('m6a.8xlarge'),
  m6a12xlarge('m6a.12xlarge'),
  m6a16xlarge('m6a.16xlarge'),
  m6gdMedium('m6gd.medium'),
  m6gdLarge('m6gd.large'),
  m6gdXlarge('m6gd.xlarge'),
  m6gd2xlarge('m6gd.2xlarge'),
  m6gd4xlarge('m6gd.4xlarge'),
  m6gd8xlarge('m6gd.8xlarge'),
  m6gd12xlarge('m6gd.12xlarge'),
  m6gd16xlarge('m6gd.16xlarge'),
  m6iLarge('m6i.large'),
  m6iXlarge('m6i.xlarge'),
  m6i2xlarge('m6i.2xlarge'),
  m6i4xlarge('m6i.4xlarge'),
  m6i8xlarge('m6i.8xlarge'),
  m6i12xlarge('m6i.12xlarge'),
  m6i16xlarge('m6i.16xlarge'),
  m7aMedium('m7a.medium'),
  m7aLarge('m7a.large'),
  m7aXlarge('m7a.xlarge'),
  m7a2xlarge('m7a.2xlarge'),
  m7a4xlarge('m7a.4xlarge'),
  m7a8xlarge('m7a.8xlarge'),
  m7a12xlarge('m7a.12xlarge'),
  m7a16xlarge('m7a.16xlarge'),
  m7gdMedium('m7gd.medium'),
  m7gdLarge('m7gd.large'),
  m7gdXlarge('m7gd.xlarge'),
  m7gd2xlarge('m7gd.2xlarge'),
  m7gd4xlarge('m7gd.4xlarge'),
  m7gd8xlarge('m7gd.8xlarge'),
  m7gd12xlarge('m7gd.12xlarge'),
  m7gd16xlarge('m7gd.16xlarge'),
  m7iLarge('m7i.large'),
  m7iXlarge('m7i.xlarge'),
  m7i2xlarge('m7i.2xlarge'),
  m7i4xlarge('m7i.4xlarge'),
  m7i8xlarge('m7i.8xlarge'),
  m7i12xlarge('m7i.12xlarge'),
  m7i16xlarge('m7i.16xlarge'),
  r6gdMedium('r6gd.medium'),
  r6gdLarge('r6gd.large'),
  r6gdXlarge('r6gd.xlarge'),
  r6gd2xlarge('r6gd.2xlarge'),
  r6gd4xlarge('r6gd.4xlarge'),
  r6gd8xlarge('r6gd.8xlarge'),
  r6gd12xlarge('r6gd.12xlarge'),
  r6gd16xlarge('r6gd.16xlarge'),
  r7aMedium('r7a.medium'),
  r7aLarge('r7a.large'),
  r7aXlarge('r7a.xlarge'),
  r7a2xlarge('r7a.2xlarge'),
  r7a4xlarge('r7a.4xlarge'),
  r7a8xlarge('r7a.8xlarge'),
  r7a12xlarge('r7a.12xlarge'),
  r7a16xlarge('r7a.16xlarge'),
  r7gdMedium('r7gd.medium'),
  r7gdLarge('r7gd.large'),
  r7gdXlarge('r7gd.xlarge'),
  r7gd2xlarge('r7gd.2xlarge'),
  r7gd4xlarge('r7gd.4xlarge'),
  r7gd8xlarge('r7gd.8xlarge'),
  r7gd12xlarge('r7gd.12xlarge'),
  r7gd16xlarge('r7gd.16xlarge'),
  r7iLarge('r7i.large'),
  r7iXlarge('r7i.xlarge'),
  r7i2xlarge('r7i.2xlarge'),
  r7i4xlarge('r7i.4xlarge'),
  r7i8xlarge('r7i.8xlarge'),
  r7i12xlarge('r7i.12xlarge'),
  r7i16xlarge('r7i.16xlarge'),
  r7i24xlarge('r7i.24xlarge'),
  r7i48xlarge('r7i.48xlarge'),
  c5adLarge('c5ad.large'),
  c5adXlarge('c5ad.xlarge'),
  c5ad2xlarge('c5ad.2xlarge'),
  c5ad4xlarge('c5ad.4xlarge'),
  c5ad8xlarge('c5ad.8xlarge'),
  c5ad12xlarge('c5ad.12xlarge'),
  c5ad16xlarge('c5ad.16xlarge'),
  c5ad24xlarge('c5ad.24xlarge'),
  c5nLarge('c5n.large'),
  c5nXlarge('c5n.xlarge'),
  c5n2xlarge('c5n.2xlarge'),
  c5n4xlarge('c5n.4xlarge'),
  c5n9xlarge('c5n.9xlarge'),
  c5n18xlarge('c5n.18xlarge'),
  r5adLarge('r5ad.large'),
  r5adXlarge('r5ad.xlarge'),
  r5ad2xlarge('r5ad.2xlarge'),
  r5ad4xlarge('r5ad.4xlarge'),
  r5ad8xlarge('r5ad.8xlarge'),
  r5ad12xlarge('r5ad.12xlarge'),
  r5ad16xlarge('r5ad.16xlarge'),
  r5ad24xlarge('r5ad.24xlarge'),
  c6idLarge('c6id.large'),
  c6idXlarge('c6id.xlarge'),
  c6id2xlarge('c6id.2xlarge'),
  c6id4xlarge('c6id.4xlarge'),
  c6id8xlarge('c6id.8xlarge'),
  c6id12xlarge('c6id.12xlarge'),
  c6id16xlarge('c6id.16xlarge'),
  c6id24xlarge('c6id.24xlarge'),
  c6id32xlarge('c6id.32xlarge'),
  c8gMedium('c8g.medium'),
  c8gLarge('c8g.large'),
  c8gXlarge('c8g.xlarge'),
  c8g2xlarge('c8g.2xlarge'),
  c8g4xlarge('c8g.4xlarge'),
  c8g8xlarge('c8g.8xlarge'),
  c8g12xlarge('c8g.12xlarge'),
  c8g16xlarge('c8g.16xlarge'),
  c8g24xlarge('c8g.24xlarge'),
  c8g48xlarge('c8g.48xlarge'),
  m5adLarge('m5ad.large'),
  m5adXlarge('m5ad.xlarge'),
  m5ad2xlarge('m5ad.2xlarge'),
  m5ad4xlarge('m5ad.4xlarge'),
  m5ad8xlarge('m5ad.8xlarge'),
  m5ad12xlarge('m5ad.12xlarge'),
  m5ad16xlarge('m5ad.16xlarge'),
  m5ad24xlarge('m5ad.24xlarge'),
  m5dLarge('m5d.large'),
  m5dXlarge('m5d.xlarge'),
  m5d2xlarge('m5d.2xlarge'),
  m5d4xlarge('m5d.4xlarge'),
  m5d8xlarge('m5d.8xlarge'),
  m5d12xlarge('m5d.12xlarge'),
  m5d16xlarge('m5d.16xlarge'),
  m5d24xlarge('m5d.24xlarge'),
  m5dnLarge('m5dn.large'),
  m5dnXlarge('m5dn.xlarge'),
  m5dn2xlarge('m5dn.2xlarge'),
  m5dn4xlarge('m5dn.4xlarge'),
  m5dn8xlarge('m5dn.8xlarge'),
  m5dn12xlarge('m5dn.12xlarge'),
  m5dn16xlarge('m5dn.16xlarge'),
  m5dn24xlarge('m5dn.24xlarge'),
  m5nLarge('m5n.large'),
  m5nXlarge('m5n.xlarge'),
  m5n2xlarge('m5n.2xlarge'),
  m5n4xlarge('m5n.4xlarge'),
  m5n8xlarge('m5n.8xlarge'),
  m5n12xlarge('m5n.12xlarge'),
  m5n16xlarge('m5n.16xlarge'),
  m5n24xlarge('m5n.24xlarge'),
  m6idLarge('m6id.large'),
  m6idXlarge('m6id.xlarge'),
  m6id2xlarge('m6id.2xlarge'),
  m6id4xlarge('m6id.4xlarge'),
  m6id8xlarge('m6id.8xlarge'),
  m6id12xlarge('m6id.12xlarge'),
  m6id16xlarge('m6id.16xlarge'),
  m6id24xlarge('m6id.24xlarge'),
  m6id32xlarge('m6id.32xlarge'),
  m6idnLarge('m6idn.large'),
  m6idnXlarge('m6idn.xlarge'),
  m6idn2xlarge('m6idn.2xlarge'),
  m6idn4xlarge('m6idn.4xlarge'),
  m6idn8xlarge('m6idn.8xlarge'),
  m6idn12xlarge('m6idn.12xlarge'),
  m6idn16xlarge('m6idn.16xlarge'),
  m6idn24xlarge('m6idn.24xlarge'),
  m6idn32xlarge('m6idn.32xlarge'),
  m6inLarge('m6in.large'),
  m6inXlarge('m6in.xlarge'),
  m6in2xlarge('m6in.2xlarge'),
  m6in4xlarge('m6in.4xlarge'),
  m6in8xlarge('m6in.8xlarge'),
  m6in12xlarge('m6in.12xlarge'),
  m6in16xlarge('m6in.16xlarge'),
  m6in24xlarge('m6in.24xlarge'),
  m6in32xlarge('m6in.32xlarge'),
  m8gMedium('m8g.medium'),
  m8gLarge('m8g.large'),
  m8gXlarge('m8g.xlarge'),
  m8g2xlarge('m8g.2xlarge'),
  m8g4xlarge('m8g.4xlarge'),
  m8g8xlarge('m8g.8xlarge'),
  m8g12xlarge('m8g.12xlarge'),
  m8g16xlarge('m8g.16xlarge'),
  m8g24xlarge('m8g.24xlarge'),
  m8g48xlarge('m8g.48xlarge'),
  r5dnLarge('r5dn.large'),
  r5dnXlarge('r5dn.xlarge'),
  r5dn2xlarge('r5dn.2xlarge'),
  r5dn4xlarge('r5dn.4xlarge'),
  r5dn8xlarge('r5dn.8xlarge'),
  r5dn12xlarge('r5dn.12xlarge'),
  r5dn16xlarge('r5dn.16xlarge'),
  r5dn24xlarge('r5dn.24xlarge'),
  r5nLarge('r5n.large'),
  r5nXlarge('r5n.xlarge'),
  r5n2xlarge('r5n.2xlarge'),
  r5n4xlarge('r5n.4xlarge'),
  r5n8xlarge('r5n.8xlarge'),
  r5n12xlarge('r5n.12xlarge'),
  r5n16xlarge('r5n.16xlarge'),
  r5n24xlarge('r5n.24xlarge'),
  r6aLarge('r6a.large'),
  r6aXlarge('r6a.xlarge'),
  r6a2xlarge('r6a.2xlarge'),
  r6a4xlarge('r6a.4xlarge'),
  r6a8xlarge('r6a.8xlarge'),
  r6a12xlarge('r6a.12xlarge'),
  r6a16xlarge('r6a.16xlarge'),
  r6a24xlarge('r6a.24xlarge'),
  r6a32xlarge('r6a.32xlarge'),
  r6a48xlarge('r6a.48xlarge'),
  r6idLarge('r6id.large'),
  r6idXlarge('r6id.xlarge'),
  r6id2xlarge('r6id.2xlarge'),
  r6id4xlarge('r6id.4xlarge'),
  r6id8xlarge('r6id.8xlarge'),
  r6id12xlarge('r6id.12xlarge'),
  r6id16xlarge('r6id.16xlarge'),
  r6id24xlarge('r6id.24xlarge'),
  r6id32xlarge('r6id.32xlarge'),
  r6idnLarge('r6idn.large'),
  r6idnXlarge('r6idn.xlarge'),
  r6idn2xlarge('r6idn.2xlarge'),
  r6idn4xlarge('r6idn.4xlarge'),
  r6idn8xlarge('r6idn.8xlarge'),
  r6idn12xlarge('r6idn.12xlarge'),
  r6idn16xlarge('r6idn.16xlarge'),
  r6idn24xlarge('r6idn.24xlarge'),
  r6idn32xlarge('r6idn.32xlarge'),
  r6inLarge('r6in.large'),
  r6inXlarge('r6in.xlarge'),
  r6in2xlarge('r6in.2xlarge'),
  r6in4xlarge('r6in.4xlarge'),
  r6in8xlarge('r6in.8xlarge'),
  r6in12xlarge('r6in.12xlarge'),
  r6in16xlarge('r6in.16xlarge'),
  r6in24xlarge('r6in.24xlarge'),
  r6in32xlarge('r6in.32xlarge'),
  r8gMedium('r8g.medium'),
  r8gLarge('r8g.large'),
  r8gXlarge('r8g.xlarge'),
  r8g2xlarge('r8g.2xlarge'),
  r8g4xlarge('r8g.4xlarge'),
  r8g8xlarge('r8g.8xlarge'),
  r8g12xlarge('r8g.12xlarge'),
  r8g16xlarge('r8g.16xlarge'),
  r8g24xlarge('r8g.24xlarge'),
  r8g48xlarge('r8g.48xlarge'),
  m4p16xlarge('m4.16xlarge'),
  c6a32xlarge('c6a.32xlarge'),
  c6a48xlarge('c6a.48xlarge'),
  c6i32xlarge('c6i.32xlarge'),
  r6i24xlarge('r6i.24xlarge'),
  r6i32xlarge('r6i.32xlarge'),
  c6in24xlarge('c6in.24xlarge'),
  c6in32xlarge('c6in.32xlarge'),
  c7a24xlarge('c7a.24xlarge'),
  c7a32xlarge('c7a.32xlarge'),
  c7a48xlarge('c7a.48xlarge'),
  c7i24xlarge('c7i.24xlarge'),
  c7i48xlarge('c7i.48xlarge'),
  m6a24xlarge('m6a.24xlarge'),
  m6a32xlarge('m6a.32xlarge'),
  m6a48xlarge('m6a.48xlarge'),
  m6i24xlarge('m6i.24xlarge'),
  m6i32xlarge('m6i.32xlarge'),
  m7a24xlarge('m7a.24xlarge'),
  m7a32xlarge('m7a.32xlarge'),
  m7a48xlarge('m7a.48xlarge'),
  m7i24xlarge('m7i.24xlarge'),
  m7i48xlarge('m7i.48xlarge'),
  r7a24xlarge('r7a.24xlarge'),
  r7a32xlarge('r7a.32xlarge'),
  r7a48xlarge('r7a.48xlarge'),
  c8aMedium('c8a.medium'),
  c8aLarge('c8a.large'),
  c8aXlarge('c8a.xlarge'),
  c8a2xlarge('c8a.2xlarge'),
  c8iLarge('c8i.large'),
  c8iXlarge('c8i.xlarge'),
  c8i2xlarge('c8i.2xlarge'),
  c9gMedium('c9g.medium'),
  c9gLarge('c9g.large'),
  c9gXlarge('c9g.xlarge'),
  c9g2xlarge('c9g.2xlarge'),
  m8aMedium('m8a.medium'),
  m8aLarge('m8a.large'),
  m8aXlarge('m8a.xlarge'),
  m8a2xlarge('m8a.2xlarge'),
  m8iLarge('m8i.large'),
  m8iXlarge('m8i.xlarge'),
  m8i2xlarge('m8i.2xlarge'),
  m9gLarge('m9g.large'),
  m9gXlarge('m9g.xlarge'),
  m9g2xlarge('m9g.2xlarge');

  const GameliftFleetEc2InstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Gamelift Fleet Fleet enum for `fleet_type`.
enum GameliftFleetFleetType implements TerraformEnum {
  onDemand('ON_DEMAND'),
  spot('SPOT');

  const GameliftFleetFleetType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Gamelift Fleet New Game Session Protection enum for `new_game_session_protection_policy`.
enum GameliftFleetNewGameSessionProtectionPolicy implements TerraformEnum {
  noprotection('NoProtection'),
  fullprotection('FullProtection');

  const GameliftFleetNewGameSessionProtectionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `build_id`, `script_id` on `aws_gamelift_fleet`: the provider rejects
/// none and more than one, so each variant sets one of them.
sealed class GameliftFleetBuildIdOrScriptId {
  const GameliftFleetBuildIdOrScriptId();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `build_id` (one of the [GameliftFleetBuildIdOrScriptId] choices).
final class GameliftFleetBuildIdOption extends GameliftFleetBuildIdOrScriptId {
  const GameliftFleetBuildIdOption({required this.buildId});

  final TfArg<String> buildId;

  @override
  String get blockKey => 'build_id';

  @override
  Map<String, Object?> encode() => {'build_id': buildId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'build_id': buildId};
}

/// Sets `script_id` (one of the [GameliftFleetBuildIdOrScriptId] choices).
final class GameliftFleetScriptIdOption extends GameliftFleetBuildIdOrScriptId {
  const GameliftFleetScriptIdOption({required this.scriptId});

  final TfArg<String> scriptId;

  @override
  String get blockKey => 'script_id';

  @override
  Map<String, Object?> encode() => {'script_id': scriptId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'script_id': scriptId};
}

/// Typed helper for the `certificate_configuration` block of
/// `aws_gamelift_fleet` (derived from provider schema).
@immutable
final class GameliftFleetCertificateConfiguration {
  const GameliftFleetCertificateConfiguration({this.certificateType});

  final TfArg<GameliftFleetCertificateConfigurationCertificateType>?
  certificateType;

  Map<String, Object?> encode() => {
    if (certificateType != null)
      'certificate_type': certificateType!.toTfJson(),
  };
}

/// `certificate_type` — derived from the provider schema description.
enum GameliftFleetCertificateConfigurationCertificateType
    implements TerraformEnum {
  disabled('DISABLED'),
  generated('GENERATED');

  const GameliftFleetCertificateConfigurationCertificateType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `ec2_inbound_permission` block of
/// `aws_gamelift_fleet` (derived from provider schema).
@immutable
final class GameliftFleetEc2InboundPermission {
  const GameliftFleetEc2InboundPermission({
    required this.fromPort,
    required this.ipRange,
    required this.protocol,
    required this.toPort,
  });

  final TfArg<num> fromPort;

  final TfArg<String> ipRange;

  final TfArg<GameliftFleetEc2InboundPermissionProtocol> protocol;

  final TfArg<num> toPort;

  Map<String, Object?> encode() => {
    'from_port': fromPort.toTfJson(),
    'ip_range': ipRange.toTfJson(),
    'protocol': protocol.toTfJson(),
    'to_port': toPort.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
enum GameliftFleetEc2InboundPermissionProtocol implements TerraformEnum {
  tcp('TCP'),
  udp('UDP');

  const GameliftFleetEc2InboundPermissionProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `resource_creation_limit_policy` block of
/// `aws_gamelift_fleet` (derived from provider schema).
@immutable
final class GameliftFleetResourceCreationLimitPolicy {
  const GameliftFleetResourceCreationLimitPolicy({
    this.newGameSessionsPerCreator,
    this.policyPeriodInMinutes,
  });

  final TfArg<num>? newGameSessionsPerCreator;

  final TfArg<num>? policyPeriodInMinutes;

  Map<String, Object?> encode() => {
    if (newGameSessionsPerCreator != null)
      'new_game_sessions_per_creator': newGameSessionsPerCreator!.toTfJson(),
    if (policyPeriodInMinutes != null)
      'policy_period_in_minutes': policyPeriodInMinutes!.toTfJson(),
  };
}

/// Typed helper for the `runtime_configuration` block of
/// `aws_gamelift_fleet` (derived from provider schema).
@immutable
final class GameliftFleetRuntimeConfiguration {
  const GameliftFleetRuntimeConfiguration({
    this.gameSessionActivationTimeoutSeconds,
    this.maxConcurrentGameSessionActivations,
    this.serverProcess,
  });

  final TfArg<num>? gameSessionActivationTimeoutSeconds;

  final TfArg<num>? maxConcurrentGameSessionActivations;

  final List<GameliftFleetRuntimeConfigurationServerProcess>? serverProcess;

  Map<String, Object?> encode() => {
    if (gameSessionActivationTimeoutSeconds != null)
      'game_session_activation_timeout_seconds':
          gameSessionActivationTimeoutSeconds!.toTfJson(),
    if (maxConcurrentGameSessionActivations != null)
      'max_concurrent_game_session_activations':
          maxConcurrentGameSessionActivations!.toTfJson(),
    if (serverProcess != null)
      'server_process': [for (final e in serverProcess!) e.encode()],
  };
}

/// Typed helper for the `runtime_configuration.server_process` block of
/// `aws_gamelift_fleet` (derived from provider schema).
@immutable
final class GameliftFleetRuntimeConfigurationServerProcess {
  const GameliftFleetRuntimeConfigurationServerProcess({
    required this.concurrentExecutions,
    required this.launchPath,
    this.parameters,
  });

  final TfArg<num> concurrentExecutions;

  final TfArg<String> launchPath;

  final TfArg<String>? parameters;

  Map<String, Object?> encode() => {
    'concurrent_executions': concurrentExecutions.toTfJson(),
    'launch_path': launchPath.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
  };
}

/// Factory wrapper for `aws_gamelift_fleet`.
final class AwsGameliftFleet extends Resource {
  static const String tfType = 'aws_gamelift_fleet';

  AwsGameliftFleet({
    required super.localName,
    required GameliftFleetBuildIdOrScriptId buildIdOrScriptId,
    TfArg<String>? description,
    required TfArg<GameliftFleetEc2InstanceType> ec2InstanceType,
    TfArg<GameliftFleetFleetType>? fleetType,
    TfArg<String>? instanceRoleArn,
    TfArg<List<String>>? metricGroups,
    required TfArg<String> name,
    TfArg<GameliftFleetNewGameSessionProtectionPolicy>?
    newGameSessionProtectionPolicy,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    GameliftFleetCertificateConfiguration? certificateConfiguration,
    List<GameliftFleetEc2InboundPermission>? ec2InboundPermission,
    GameliftFleetResourceCreationLimitPolicy? resourceCreationLimitPolicy,
    GameliftFleetRuntimeConfiguration? runtimeConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...buildIdOrScriptId.argMap,
           if (description != null) 'description': description,
           'ec2_instance_type': ec2InstanceType,
           if (fleetType != null) 'fleet_type': fleetType,
           if (instanceRoleArn != null) 'instance_role_arn': instanceRoleArn,
           if (metricGroups != null) 'metric_groups': metricGroups,
           'name': name,
           if (newGameSessionProtectionPolicy != null)
             'new_game_session_protection_policy':
                 newGameSessionProtectionPolicy,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (certificateConfiguration != null)
             'certificate_configuration': TfArg.literal(
               certificateConfiguration.encode(),
             ),
           if (ec2InboundPermission != null)
             'ec2_inbound_permission': TfArg.literal([
               for (final e in ec2InboundPermission) e.encode(),
             ]),
           if (resourceCreationLimitPolicy != null)
             'resource_creation_limit_policy': TfArg.literal(
               resourceCreationLimitPolicy.encode(),
             ),
           if (runtimeConfiguration != null)
             'runtime_configuration': TfArg.literal(
               runtimeConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGameliftFleetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `build_arn` attribute.
  TfRef<String> get buildArn => TfRef.attribute<String>(this, 'build_arn');

  /// Reference to `log_paths` attribute.
  TfRef<List<String>> get logPaths =>
      TfRef.attribute<List<String>>(this, 'log_paths');

  /// Reference to `operating_system` attribute.
  TfRef<String> get operatingSystem =>
      TfRef.attribute<String>(this, 'operating_system');

  /// Reference to `script_arn` attribute.
  TfRef<String> get scriptArn => TfRef.attribute<String>(this, 'script_arn');
}
