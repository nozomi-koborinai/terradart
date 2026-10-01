// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_gamelift_fleet`.
const Set<String> _awsGameliftFleetSensitive = <String>{};

/// Gamelift Fleet Ec2 Instance enum for `ec2_instance_type`.
extension type const GameliftFleetEc2InstanceType._(TfArg<String> _)
    implements TfArg<String> {
  GameliftFleetEc2InstanceType.variable(String name)
    : this._(TfArg.variable(name));
  GameliftFleetEc2InstanceType.expression(String template)
    : this._(TfArg.expression(template));
  const GameliftFleetEc2InstanceType.arg(TfArg<String> arg) : this._(arg);

  static const t2Micro = GameliftFleetEc2InstanceType._(
    TfArgLiteral('t2.micro'),
  );
  static const t2Small = GameliftFleetEc2InstanceType._(
    TfArgLiteral('t2.small'),
  );
  static const t2Medium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('t2.medium'),
  );
  static const t2Large = GameliftFleetEc2InstanceType._(
    TfArgLiteral('t2.large'),
  );
  static const c3Large = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c3.large'),
  );
  static const c3Xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c3.xlarge'),
  );
  static const c3p2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c3.2xlarge'),
  );
  static const c3p4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c3.4xlarge'),
  );
  static const c3p8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c3.8xlarge'),
  );
  static const c4Large = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c4.large'),
  );
  static const c4Xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c4.xlarge'),
  );
  static const c4p2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c4.2xlarge'),
  );
  static const c4p4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c4.4xlarge'),
  );
  static const c4p8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c4.8xlarge'),
  );
  static const c5Large = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5.large'),
  );
  static const c5Xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5.xlarge'),
  );
  static const c5p2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5.2xlarge'),
  );
  static const c5p4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5.4xlarge'),
  );
  static const c5p9xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5.9xlarge'),
  );
  static const c5p12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5.12xlarge'),
  );
  static const c5p18xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5.18xlarge'),
  );
  static const c5p24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5.24xlarge'),
  );
  static const c5aLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5a.large'),
  );
  static const c5aXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5a.xlarge'),
  );
  static const c5a2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5a.2xlarge'),
  );
  static const c5a4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5a.4xlarge'),
  );
  static const c5a8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5a.8xlarge'),
  );
  static const c5a12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5a.12xlarge'),
  );
  static const c5a16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5a.16xlarge'),
  );
  static const c5a24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5a.24xlarge'),
  );
  static const r3Large = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r3.large'),
  );
  static const r3Xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r3.xlarge'),
  );
  static const r3p2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r3.2xlarge'),
  );
  static const r3p4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r3.4xlarge'),
  );
  static const r3p8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r3.8xlarge'),
  );
  static const r4Large = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r4.large'),
  );
  static const r4Xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r4.xlarge'),
  );
  static const r4p2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r4.2xlarge'),
  );
  static const r4p4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r4.4xlarge'),
  );
  static const r4p8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r4.8xlarge'),
  );
  static const r4p16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r4.16xlarge'),
  );
  static const r5Large = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5.large'),
  );
  static const r5Xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5.xlarge'),
  );
  static const r5p2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5.2xlarge'),
  );
  static const r5p4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5.4xlarge'),
  );
  static const r5p8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5.8xlarge'),
  );
  static const r5p12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5.12xlarge'),
  );
  static const r5p16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5.16xlarge'),
  );
  static const r5p24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5.24xlarge'),
  );
  static const r5aLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5a.large'),
  );
  static const r5aXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5a.xlarge'),
  );
  static const r5a2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5a.2xlarge'),
  );
  static const r5a4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5a.4xlarge'),
  );
  static const r5a8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5a.8xlarge'),
  );
  static const r5a12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5a.12xlarge'),
  );
  static const r5a16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5a.16xlarge'),
  );
  static const r5a24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5a.24xlarge'),
  );
  static const m3Medium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m3.medium'),
  );
  static const m3Large = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m3.large'),
  );
  static const m3Xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m3.xlarge'),
  );
  static const m3p2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m3.2xlarge'),
  );
  static const m4Large = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m4.large'),
  );
  static const m4Xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m4.xlarge'),
  );
  static const m4p2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m4.2xlarge'),
  );
  static const m4p4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m4.4xlarge'),
  );
  static const m4p10xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m4.10xlarge'),
  );
  static const m5Large = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5.large'),
  );
  static const m5Xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5.xlarge'),
  );
  static const m5p2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5.2xlarge'),
  );
  static const m5p4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5.4xlarge'),
  );
  static const m5p8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5.8xlarge'),
  );
  static const m5p12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5.12xlarge'),
  );
  static const m5p16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5.16xlarge'),
  );
  static const m5p24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5.24xlarge'),
  );
  static const m5aLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5a.large'),
  );
  static const m5aXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5a.xlarge'),
  );
  static const m5a2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5a.2xlarge'),
  );
  static const m5a4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5a.4xlarge'),
  );
  static const m5a8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5a.8xlarge'),
  );
  static const m5a12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5a.12xlarge'),
  );
  static const m5a16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5a.16xlarge'),
  );
  static const m5a24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5a.24xlarge'),
  );
  static const c5dLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5d.large'),
  );
  static const c5dXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5d.xlarge'),
  );
  static const c5d2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5d.2xlarge'),
  );
  static const c5d4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5d.4xlarge'),
  );
  static const c5d9xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5d.9xlarge'),
  );
  static const c5d12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5d.12xlarge'),
  );
  static const c5d18xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5d.18xlarge'),
  );
  static const c5d24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5d.24xlarge'),
  );
  static const c6aLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6a.large'),
  );
  static const c6aXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6a.xlarge'),
  );
  static const c6a2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6a.2xlarge'),
  );
  static const c6a4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6a.4xlarge'),
  );
  static const c6a8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6a.8xlarge'),
  );
  static const c6a12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6a.12xlarge'),
  );
  static const c6a16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6a.16xlarge'),
  );
  static const c6a24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6a.24xlarge'),
  );
  static const c6iLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6i.large'),
  );
  static const c6iXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6i.xlarge'),
  );
  static const c6i2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6i.2xlarge'),
  );
  static const c6i4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6i.4xlarge'),
  );
  static const c6i8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6i.8xlarge'),
  );
  static const c6i12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6i.12xlarge'),
  );
  static const c6i16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6i.16xlarge'),
  );
  static const c6i24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6i.24xlarge'),
  );
  static const r5dLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5d.large'),
  );
  static const r5dXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5d.xlarge'),
  );
  static const r5d2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5d.2xlarge'),
  );
  static const r5d4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5d.4xlarge'),
  );
  static const r5d8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5d.8xlarge'),
  );
  static const r5d12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5d.12xlarge'),
  );
  static const r5d16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5d.16xlarge'),
  );
  static const r5d24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5d.24xlarge'),
  );
  static const m6gMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6g.medium'),
  );
  static const m6gLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6g.large'),
  );
  static const m6gXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6g.xlarge'),
  );
  static const m6g2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6g.2xlarge'),
  );
  static const m6g4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6g.4xlarge'),
  );
  static const m6g8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6g.8xlarge'),
  );
  static const m6g12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6g.12xlarge'),
  );
  static const m6g16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6g.16xlarge'),
  );
  static const c6gMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6g.medium'),
  );
  static const c6gLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6g.large'),
  );
  static const c6gXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6g.xlarge'),
  );
  static const c6g2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6g.2xlarge'),
  );
  static const c6g4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6g.4xlarge'),
  );
  static const c6g8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6g.8xlarge'),
  );
  static const c6g12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6g.12xlarge'),
  );
  static const c6g16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6g.16xlarge'),
  );
  static const r6gMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6g.medium'),
  );
  static const r6gLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6g.large'),
  );
  static const r6gXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6g.xlarge'),
  );
  static const r6g2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6g.2xlarge'),
  );
  static const r6g4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6g.4xlarge'),
  );
  static const r6g8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6g.8xlarge'),
  );
  static const r6g12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6g.12xlarge'),
  );
  static const r6g16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6g.16xlarge'),
  );
  static const c6gnMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gn.medium'),
  );
  static const c6gnLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gn.large'),
  );
  static const c6gnXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gn.xlarge'),
  );
  static const c6gn2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gn.2xlarge'),
  );
  static const c6gn4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gn.4xlarge'),
  );
  static const c6gn8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gn.8xlarge'),
  );
  static const c6gn12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gn.12xlarge'),
  );
  static const c6gn16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gn.16xlarge'),
  );
  static const c7gMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7g.medium'),
  );
  static const c7gLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7g.large'),
  );
  static const c7gXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7g.xlarge'),
  );
  static const c7g2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7g.2xlarge'),
  );
  static const c7g4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7g.4xlarge'),
  );
  static const c7g8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7g.8xlarge'),
  );
  static const c7g12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7g.12xlarge'),
  );
  static const c7g16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7g.16xlarge'),
  );
  static const r7gMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7g.medium'),
  );
  static const r7gLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7g.large'),
  );
  static const r7gXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7g.xlarge'),
  );
  static const r7g2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7g.2xlarge'),
  );
  static const r7g4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7g.4xlarge'),
  );
  static const r7g8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7g.8xlarge'),
  );
  static const r7g12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7g.12xlarge'),
  );
  static const r7g16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7g.16xlarge'),
  );
  static const m7gMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7g.medium'),
  );
  static const m7gLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7g.large'),
  );
  static const m7gXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7g.xlarge'),
  );
  static const m7g2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7g.2xlarge'),
  );
  static const m7g4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7g.4xlarge'),
  );
  static const m7g8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7g.8xlarge'),
  );
  static const m7g12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7g.12xlarge'),
  );
  static const m7g16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7g.16xlarge'),
  );
  static const g5gXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('g5g.xlarge'),
  );
  static const g5g2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('g5g.2xlarge'),
  );
  static const g5g4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('g5g.4xlarge'),
  );
  static const g5g8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('g5g.8xlarge'),
  );
  static const g5g16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('g5g.16xlarge'),
  );
  static const r6iLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6i.large'),
  );
  static const r6iXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6i.xlarge'),
  );
  static const r6i2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6i.2xlarge'),
  );
  static const r6i4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6i.4xlarge'),
  );
  static const r6i8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6i.8xlarge'),
  );
  static const r6i12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6i.12xlarge'),
  );
  static const r6i16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6i.16xlarge'),
  );
  static const c6gdMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gd.medium'),
  );
  static const c6gdLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gd.large'),
  );
  static const c6gdXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gd.xlarge'),
  );
  static const c6gd2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gd.2xlarge'),
  );
  static const c6gd4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gd.4xlarge'),
  );
  static const c6gd8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gd.8xlarge'),
  );
  static const c6gd12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gd.12xlarge'),
  );
  static const c6gd16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6gd.16xlarge'),
  );
  static const c6inLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6in.large'),
  );
  static const c6inXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6in.xlarge'),
  );
  static const c6in2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6in.2xlarge'),
  );
  static const c6in4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6in.4xlarge'),
  );
  static const c6in8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6in.8xlarge'),
  );
  static const c6in12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6in.12xlarge'),
  );
  static const c6in16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6in.16xlarge'),
  );
  static const c7aMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7a.medium'),
  );
  static const c7aLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7a.large'),
  );
  static const c7aXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7a.xlarge'),
  );
  static const c7a2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7a.2xlarge'),
  );
  static const c7a4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7a.4xlarge'),
  );
  static const c7a8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7a.8xlarge'),
  );
  static const c7a12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7a.12xlarge'),
  );
  static const c7a16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7a.16xlarge'),
  );
  static const c7gdMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gd.medium'),
  );
  static const c7gdLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gd.large'),
  );
  static const c7gdXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gd.xlarge'),
  );
  static const c7gd2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gd.2xlarge'),
  );
  static const c7gd4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gd.4xlarge'),
  );
  static const c7gd8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gd.8xlarge'),
  );
  static const c7gd12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gd.12xlarge'),
  );
  static const c7gd16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gd.16xlarge'),
  );
  static const c7gnMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gn.medium'),
  );
  static const c7gnLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gn.large'),
  );
  static const c7gnXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gn.xlarge'),
  );
  static const c7gn2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gn.2xlarge'),
  );
  static const c7gn4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gn.4xlarge'),
  );
  static const c7gn8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gn.8xlarge'),
  );
  static const c7gn12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gn.12xlarge'),
  );
  static const c7gn16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7gn.16xlarge'),
  );
  static const c7iLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7i.large'),
  );
  static const c7iXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7i.xlarge'),
  );
  static const c7i2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7i.2xlarge'),
  );
  static const c7i4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7i.4xlarge'),
  );
  static const c7i8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7i.8xlarge'),
  );
  static const c7i12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7i.12xlarge'),
  );
  static const c7i16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7i.16xlarge'),
  );
  static const m6aLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6a.large'),
  );
  static const m6aXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6a.xlarge'),
  );
  static const m6a2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6a.2xlarge'),
  );
  static const m6a4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6a.4xlarge'),
  );
  static const m6a8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6a.8xlarge'),
  );
  static const m6a12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6a.12xlarge'),
  );
  static const m6a16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6a.16xlarge'),
  );
  static const m6gdMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6gd.medium'),
  );
  static const m6gdLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6gd.large'),
  );
  static const m6gdXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6gd.xlarge'),
  );
  static const m6gd2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6gd.2xlarge'),
  );
  static const m6gd4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6gd.4xlarge'),
  );
  static const m6gd8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6gd.8xlarge'),
  );
  static const m6gd12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6gd.12xlarge'),
  );
  static const m6gd16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6gd.16xlarge'),
  );
  static const m6iLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6i.large'),
  );
  static const m6iXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6i.xlarge'),
  );
  static const m6i2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6i.2xlarge'),
  );
  static const m6i4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6i.4xlarge'),
  );
  static const m6i8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6i.8xlarge'),
  );
  static const m6i12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6i.12xlarge'),
  );
  static const m6i16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6i.16xlarge'),
  );
  static const m7aMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7a.medium'),
  );
  static const m7aLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7a.large'),
  );
  static const m7aXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7a.xlarge'),
  );
  static const m7a2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7a.2xlarge'),
  );
  static const m7a4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7a.4xlarge'),
  );
  static const m7a8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7a.8xlarge'),
  );
  static const m7a12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7a.12xlarge'),
  );
  static const m7a16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7a.16xlarge'),
  );
  static const m7gdMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7gd.medium'),
  );
  static const m7gdLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7gd.large'),
  );
  static const m7gdXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7gd.xlarge'),
  );
  static const m7gd2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7gd.2xlarge'),
  );
  static const m7gd4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7gd.4xlarge'),
  );
  static const m7gd8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7gd.8xlarge'),
  );
  static const m7gd12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7gd.12xlarge'),
  );
  static const m7gd16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7gd.16xlarge'),
  );
  static const m7iLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7i.large'),
  );
  static const m7iXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7i.xlarge'),
  );
  static const m7i2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7i.2xlarge'),
  );
  static const m7i4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7i.4xlarge'),
  );
  static const m7i8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7i.8xlarge'),
  );
  static const m7i12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7i.12xlarge'),
  );
  static const m7i16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7i.16xlarge'),
  );
  static const r6gdMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6gd.medium'),
  );
  static const r6gdLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6gd.large'),
  );
  static const r6gdXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6gd.xlarge'),
  );
  static const r6gd2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6gd.2xlarge'),
  );
  static const r6gd4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6gd.4xlarge'),
  );
  static const r6gd8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6gd.8xlarge'),
  );
  static const r6gd12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6gd.12xlarge'),
  );
  static const r6gd16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6gd.16xlarge'),
  );
  static const r7aMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7a.medium'),
  );
  static const r7aLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7a.large'),
  );
  static const r7aXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7a.xlarge'),
  );
  static const r7a2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7a.2xlarge'),
  );
  static const r7a4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7a.4xlarge'),
  );
  static const r7a8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7a.8xlarge'),
  );
  static const r7a12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7a.12xlarge'),
  );
  static const r7a16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7a.16xlarge'),
  );
  static const r7gdMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7gd.medium'),
  );
  static const r7gdLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7gd.large'),
  );
  static const r7gdXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7gd.xlarge'),
  );
  static const r7gd2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7gd.2xlarge'),
  );
  static const r7gd4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7gd.4xlarge'),
  );
  static const r7gd8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7gd.8xlarge'),
  );
  static const r7gd12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7gd.12xlarge'),
  );
  static const r7gd16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7gd.16xlarge'),
  );
  static const r7iLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7i.large'),
  );
  static const r7iXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7i.xlarge'),
  );
  static const r7i2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7i.2xlarge'),
  );
  static const r7i4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7i.4xlarge'),
  );
  static const r7i8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7i.8xlarge'),
  );
  static const r7i12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7i.12xlarge'),
  );
  static const r7i16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7i.16xlarge'),
  );
  static const r7i24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7i.24xlarge'),
  );
  static const r7i48xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7i.48xlarge'),
  );
  static const c5adLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5ad.large'),
  );
  static const c5adXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5ad.xlarge'),
  );
  static const c5ad2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5ad.2xlarge'),
  );
  static const c5ad4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5ad.4xlarge'),
  );
  static const c5ad8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5ad.8xlarge'),
  );
  static const c5ad12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5ad.12xlarge'),
  );
  static const c5ad16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5ad.16xlarge'),
  );
  static const c5ad24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5ad.24xlarge'),
  );
  static const c5nLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5n.large'),
  );
  static const c5nXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5n.xlarge'),
  );
  static const c5n2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5n.2xlarge'),
  );
  static const c5n4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5n.4xlarge'),
  );
  static const c5n9xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5n.9xlarge'),
  );
  static const c5n18xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c5n.18xlarge'),
  );
  static const r5adLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5ad.large'),
  );
  static const r5adXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5ad.xlarge'),
  );
  static const r5ad2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5ad.2xlarge'),
  );
  static const r5ad4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5ad.4xlarge'),
  );
  static const r5ad8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5ad.8xlarge'),
  );
  static const r5ad12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5ad.12xlarge'),
  );
  static const r5ad16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5ad.16xlarge'),
  );
  static const r5ad24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5ad.24xlarge'),
  );
  static const c6idLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6id.large'),
  );
  static const c6idXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6id.xlarge'),
  );
  static const c6id2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6id.2xlarge'),
  );
  static const c6id4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6id.4xlarge'),
  );
  static const c6id8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6id.8xlarge'),
  );
  static const c6id12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6id.12xlarge'),
  );
  static const c6id16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6id.16xlarge'),
  );
  static const c6id24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6id.24xlarge'),
  );
  static const c6id32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6id.32xlarge'),
  );
  static const c8gMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8g.medium'),
  );
  static const c8gLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8g.large'),
  );
  static const c8gXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8g.xlarge'),
  );
  static const c8g2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8g.2xlarge'),
  );
  static const c8g4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8g.4xlarge'),
  );
  static const c8g8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8g.8xlarge'),
  );
  static const c8g12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8g.12xlarge'),
  );
  static const c8g16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8g.16xlarge'),
  );
  static const c8g24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8g.24xlarge'),
  );
  static const c8g48xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8g.48xlarge'),
  );
  static const m5adLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5ad.large'),
  );
  static const m5adXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5ad.xlarge'),
  );
  static const m5ad2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5ad.2xlarge'),
  );
  static const m5ad4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5ad.4xlarge'),
  );
  static const m5ad8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5ad.8xlarge'),
  );
  static const m5ad12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5ad.12xlarge'),
  );
  static const m5ad16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5ad.16xlarge'),
  );
  static const m5ad24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5ad.24xlarge'),
  );
  static const m5dLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5d.large'),
  );
  static const m5dXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5d.xlarge'),
  );
  static const m5d2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5d.2xlarge'),
  );
  static const m5d4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5d.4xlarge'),
  );
  static const m5d8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5d.8xlarge'),
  );
  static const m5d12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5d.12xlarge'),
  );
  static const m5d16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5d.16xlarge'),
  );
  static const m5d24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5d.24xlarge'),
  );
  static const m5dnLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5dn.large'),
  );
  static const m5dnXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5dn.xlarge'),
  );
  static const m5dn2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5dn.2xlarge'),
  );
  static const m5dn4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5dn.4xlarge'),
  );
  static const m5dn8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5dn.8xlarge'),
  );
  static const m5dn12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5dn.12xlarge'),
  );
  static const m5dn16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5dn.16xlarge'),
  );
  static const m5dn24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5dn.24xlarge'),
  );
  static const m5nLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5n.large'),
  );
  static const m5nXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5n.xlarge'),
  );
  static const m5n2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5n.2xlarge'),
  );
  static const m5n4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5n.4xlarge'),
  );
  static const m5n8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5n.8xlarge'),
  );
  static const m5n12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5n.12xlarge'),
  );
  static const m5n16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5n.16xlarge'),
  );
  static const m5n24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m5n.24xlarge'),
  );
  static const m6idLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6id.large'),
  );
  static const m6idXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6id.xlarge'),
  );
  static const m6id2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6id.2xlarge'),
  );
  static const m6id4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6id.4xlarge'),
  );
  static const m6id8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6id.8xlarge'),
  );
  static const m6id12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6id.12xlarge'),
  );
  static const m6id16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6id.16xlarge'),
  );
  static const m6id24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6id.24xlarge'),
  );
  static const m6id32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6id.32xlarge'),
  );
  static const m6idnLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6idn.large'),
  );
  static const m6idnXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6idn.xlarge'),
  );
  static const m6idn2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6idn.2xlarge'),
  );
  static const m6idn4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6idn.4xlarge'),
  );
  static const m6idn8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6idn.8xlarge'),
  );
  static const m6idn12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6idn.12xlarge'),
  );
  static const m6idn16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6idn.16xlarge'),
  );
  static const m6idn24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6idn.24xlarge'),
  );
  static const m6idn32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6idn.32xlarge'),
  );
  static const m6inLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6in.large'),
  );
  static const m6inXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6in.xlarge'),
  );
  static const m6in2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6in.2xlarge'),
  );
  static const m6in4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6in.4xlarge'),
  );
  static const m6in8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6in.8xlarge'),
  );
  static const m6in12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6in.12xlarge'),
  );
  static const m6in16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6in.16xlarge'),
  );
  static const m6in24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6in.24xlarge'),
  );
  static const m6in32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6in.32xlarge'),
  );
  static const m8gMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8g.medium'),
  );
  static const m8gLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8g.large'),
  );
  static const m8gXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8g.xlarge'),
  );
  static const m8g2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8g.2xlarge'),
  );
  static const m8g4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8g.4xlarge'),
  );
  static const m8g8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8g.8xlarge'),
  );
  static const m8g12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8g.12xlarge'),
  );
  static const m8g16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8g.16xlarge'),
  );
  static const m8g24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8g.24xlarge'),
  );
  static const m8g48xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8g.48xlarge'),
  );
  static const r5dnLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5dn.large'),
  );
  static const r5dnXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5dn.xlarge'),
  );
  static const r5dn2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5dn.2xlarge'),
  );
  static const r5dn4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5dn.4xlarge'),
  );
  static const r5dn8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5dn.8xlarge'),
  );
  static const r5dn12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5dn.12xlarge'),
  );
  static const r5dn16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5dn.16xlarge'),
  );
  static const r5dn24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5dn.24xlarge'),
  );
  static const r5nLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5n.large'),
  );
  static const r5nXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5n.xlarge'),
  );
  static const r5n2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5n.2xlarge'),
  );
  static const r5n4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5n.4xlarge'),
  );
  static const r5n8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5n.8xlarge'),
  );
  static const r5n12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5n.12xlarge'),
  );
  static const r5n16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5n.16xlarge'),
  );
  static const r5n24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r5n.24xlarge'),
  );
  static const r6aLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6a.large'),
  );
  static const r6aXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6a.xlarge'),
  );
  static const r6a2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6a.2xlarge'),
  );
  static const r6a4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6a.4xlarge'),
  );
  static const r6a8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6a.8xlarge'),
  );
  static const r6a12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6a.12xlarge'),
  );
  static const r6a16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6a.16xlarge'),
  );
  static const r6a24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6a.24xlarge'),
  );
  static const r6a32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6a.32xlarge'),
  );
  static const r6a48xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6a.48xlarge'),
  );
  static const r6idLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6id.large'),
  );
  static const r6idXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6id.xlarge'),
  );
  static const r6id2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6id.2xlarge'),
  );
  static const r6id4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6id.4xlarge'),
  );
  static const r6id8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6id.8xlarge'),
  );
  static const r6id12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6id.12xlarge'),
  );
  static const r6id16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6id.16xlarge'),
  );
  static const r6id24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6id.24xlarge'),
  );
  static const r6id32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6id.32xlarge'),
  );
  static const r6idnLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6idn.large'),
  );
  static const r6idnXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6idn.xlarge'),
  );
  static const r6idn2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6idn.2xlarge'),
  );
  static const r6idn4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6idn.4xlarge'),
  );
  static const r6idn8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6idn.8xlarge'),
  );
  static const r6idn12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6idn.12xlarge'),
  );
  static const r6idn16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6idn.16xlarge'),
  );
  static const r6idn24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6idn.24xlarge'),
  );
  static const r6idn32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6idn.32xlarge'),
  );
  static const r6inLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6in.large'),
  );
  static const r6inXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6in.xlarge'),
  );
  static const r6in2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6in.2xlarge'),
  );
  static const r6in4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6in.4xlarge'),
  );
  static const r6in8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6in.8xlarge'),
  );
  static const r6in12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6in.12xlarge'),
  );
  static const r6in16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6in.16xlarge'),
  );
  static const r6in24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6in.24xlarge'),
  );
  static const r6in32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6in.32xlarge'),
  );
  static const r8gMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r8g.medium'),
  );
  static const r8gLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r8g.large'),
  );
  static const r8gXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r8g.xlarge'),
  );
  static const r8g2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r8g.2xlarge'),
  );
  static const r8g4xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r8g.4xlarge'),
  );
  static const r8g8xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r8g.8xlarge'),
  );
  static const r8g12xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r8g.12xlarge'),
  );
  static const r8g16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r8g.16xlarge'),
  );
  static const r8g24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r8g.24xlarge'),
  );
  static const r8g48xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r8g.48xlarge'),
  );
  static const m4p16xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m4.16xlarge'),
  );
  static const c6a32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6a.32xlarge'),
  );
  static const c6a48xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6a.48xlarge'),
  );
  static const c6i32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6i.32xlarge'),
  );
  static const r6i24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6i.24xlarge'),
  );
  static const r6i32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r6i.32xlarge'),
  );
  static const c6in24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6in.24xlarge'),
  );
  static const c6in32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c6in.32xlarge'),
  );
  static const c7a24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7a.24xlarge'),
  );
  static const c7a32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7a.32xlarge'),
  );
  static const c7a48xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7a.48xlarge'),
  );
  static const c7i24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7i.24xlarge'),
  );
  static const c7i48xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c7i.48xlarge'),
  );
  static const m6a24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6a.24xlarge'),
  );
  static const m6a32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6a.32xlarge'),
  );
  static const m6a48xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6a.48xlarge'),
  );
  static const m6i24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6i.24xlarge'),
  );
  static const m6i32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m6i.32xlarge'),
  );
  static const m7a24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7a.24xlarge'),
  );
  static const m7a32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7a.32xlarge'),
  );
  static const m7a48xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7a.48xlarge'),
  );
  static const m7i24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7i.24xlarge'),
  );
  static const m7i48xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m7i.48xlarge'),
  );
  static const r7a24xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7a.24xlarge'),
  );
  static const r7a32xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7a.32xlarge'),
  );
  static const r7a48xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('r7a.48xlarge'),
  );
  static const c8aMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8a.medium'),
  );
  static const c8aLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8a.large'),
  );
  static const c8aXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8a.xlarge'),
  );
  static const c8a2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8a.2xlarge'),
  );
  static const c8iLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8i.large'),
  );
  static const c8iXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8i.xlarge'),
  );
  static const c8i2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c8i.2xlarge'),
  );
  static const c9gMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c9g.medium'),
  );
  static const c9gLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c9g.large'),
  );
  static const c9gXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c9g.xlarge'),
  );
  static const c9g2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('c9g.2xlarge'),
  );
  static const m8aMedium = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8a.medium'),
  );
  static const m8aLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8a.large'),
  );
  static const m8aXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8a.xlarge'),
  );
  static const m8a2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8a.2xlarge'),
  );
  static const m8iLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8i.large'),
  );
  static const m8iXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8i.xlarge'),
  );
  static const m8i2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m8i.2xlarge'),
  );
  static const m9gLarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m9g.large'),
  );
  static const m9gXlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m9g.xlarge'),
  );
  static const m9g2xlarge = GameliftFleetEc2InstanceType._(
    TfArgLiteral('m9g.2xlarge'),
  );

  static const List<GameliftFleetEc2InstanceType> values = [
    t2Micro,
    t2Small,
    t2Medium,
    t2Large,
    c3Large,
    c3Xlarge,
    c3p2xlarge,
    c3p4xlarge,
    c3p8xlarge,
    c4Large,
    c4Xlarge,
    c4p2xlarge,
    c4p4xlarge,
    c4p8xlarge,
    c5Large,
    c5Xlarge,
    c5p2xlarge,
    c5p4xlarge,
    c5p9xlarge,
    c5p12xlarge,
    c5p18xlarge,
    c5p24xlarge,
    c5aLarge,
    c5aXlarge,
    c5a2xlarge,
    c5a4xlarge,
    c5a8xlarge,
    c5a12xlarge,
    c5a16xlarge,
    c5a24xlarge,
    r3Large,
    r3Xlarge,
    r3p2xlarge,
    r3p4xlarge,
    r3p8xlarge,
    r4Large,
    r4Xlarge,
    r4p2xlarge,
    r4p4xlarge,
    r4p8xlarge,
    r4p16xlarge,
    r5Large,
    r5Xlarge,
    r5p2xlarge,
    r5p4xlarge,
    r5p8xlarge,
    r5p12xlarge,
    r5p16xlarge,
    r5p24xlarge,
    r5aLarge,
    r5aXlarge,
    r5a2xlarge,
    r5a4xlarge,
    r5a8xlarge,
    r5a12xlarge,
    r5a16xlarge,
    r5a24xlarge,
    m3Medium,
    m3Large,
    m3Xlarge,
    m3p2xlarge,
    m4Large,
    m4Xlarge,
    m4p2xlarge,
    m4p4xlarge,
    m4p10xlarge,
    m5Large,
    m5Xlarge,
    m5p2xlarge,
    m5p4xlarge,
    m5p8xlarge,
    m5p12xlarge,
    m5p16xlarge,
    m5p24xlarge,
    m5aLarge,
    m5aXlarge,
    m5a2xlarge,
    m5a4xlarge,
    m5a8xlarge,
    m5a12xlarge,
    m5a16xlarge,
    m5a24xlarge,
    c5dLarge,
    c5dXlarge,
    c5d2xlarge,
    c5d4xlarge,
    c5d9xlarge,
    c5d12xlarge,
    c5d18xlarge,
    c5d24xlarge,
    c6aLarge,
    c6aXlarge,
    c6a2xlarge,
    c6a4xlarge,
    c6a8xlarge,
    c6a12xlarge,
    c6a16xlarge,
    c6a24xlarge,
    c6iLarge,
    c6iXlarge,
    c6i2xlarge,
    c6i4xlarge,
    c6i8xlarge,
    c6i12xlarge,
    c6i16xlarge,
    c6i24xlarge,
    r5dLarge,
    r5dXlarge,
    r5d2xlarge,
    r5d4xlarge,
    r5d8xlarge,
    r5d12xlarge,
    r5d16xlarge,
    r5d24xlarge,
    m6gMedium,
    m6gLarge,
    m6gXlarge,
    m6g2xlarge,
    m6g4xlarge,
    m6g8xlarge,
    m6g12xlarge,
    m6g16xlarge,
    c6gMedium,
    c6gLarge,
    c6gXlarge,
    c6g2xlarge,
    c6g4xlarge,
    c6g8xlarge,
    c6g12xlarge,
    c6g16xlarge,
    r6gMedium,
    r6gLarge,
    r6gXlarge,
    r6g2xlarge,
    r6g4xlarge,
    r6g8xlarge,
    r6g12xlarge,
    r6g16xlarge,
    c6gnMedium,
    c6gnLarge,
    c6gnXlarge,
    c6gn2xlarge,
    c6gn4xlarge,
    c6gn8xlarge,
    c6gn12xlarge,
    c6gn16xlarge,
    c7gMedium,
    c7gLarge,
    c7gXlarge,
    c7g2xlarge,
    c7g4xlarge,
    c7g8xlarge,
    c7g12xlarge,
    c7g16xlarge,
    r7gMedium,
    r7gLarge,
    r7gXlarge,
    r7g2xlarge,
    r7g4xlarge,
    r7g8xlarge,
    r7g12xlarge,
    r7g16xlarge,
    m7gMedium,
    m7gLarge,
    m7gXlarge,
    m7g2xlarge,
    m7g4xlarge,
    m7g8xlarge,
    m7g12xlarge,
    m7g16xlarge,
    g5gXlarge,
    g5g2xlarge,
    g5g4xlarge,
    g5g8xlarge,
    g5g16xlarge,
    r6iLarge,
    r6iXlarge,
    r6i2xlarge,
    r6i4xlarge,
    r6i8xlarge,
    r6i12xlarge,
    r6i16xlarge,
    c6gdMedium,
    c6gdLarge,
    c6gdXlarge,
    c6gd2xlarge,
    c6gd4xlarge,
    c6gd8xlarge,
    c6gd12xlarge,
    c6gd16xlarge,
    c6inLarge,
    c6inXlarge,
    c6in2xlarge,
    c6in4xlarge,
    c6in8xlarge,
    c6in12xlarge,
    c6in16xlarge,
    c7aMedium,
    c7aLarge,
    c7aXlarge,
    c7a2xlarge,
    c7a4xlarge,
    c7a8xlarge,
    c7a12xlarge,
    c7a16xlarge,
    c7gdMedium,
    c7gdLarge,
    c7gdXlarge,
    c7gd2xlarge,
    c7gd4xlarge,
    c7gd8xlarge,
    c7gd12xlarge,
    c7gd16xlarge,
    c7gnMedium,
    c7gnLarge,
    c7gnXlarge,
    c7gn2xlarge,
    c7gn4xlarge,
    c7gn8xlarge,
    c7gn12xlarge,
    c7gn16xlarge,
    c7iLarge,
    c7iXlarge,
    c7i2xlarge,
    c7i4xlarge,
    c7i8xlarge,
    c7i12xlarge,
    c7i16xlarge,
    m6aLarge,
    m6aXlarge,
    m6a2xlarge,
    m6a4xlarge,
    m6a8xlarge,
    m6a12xlarge,
    m6a16xlarge,
    m6gdMedium,
    m6gdLarge,
    m6gdXlarge,
    m6gd2xlarge,
    m6gd4xlarge,
    m6gd8xlarge,
    m6gd12xlarge,
    m6gd16xlarge,
    m6iLarge,
    m6iXlarge,
    m6i2xlarge,
    m6i4xlarge,
    m6i8xlarge,
    m6i12xlarge,
    m6i16xlarge,
    m7aMedium,
    m7aLarge,
    m7aXlarge,
    m7a2xlarge,
    m7a4xlarge,
    m7a8xlarge,
    m7a12xlarge,
    m7a16xlarge,
    m7gdMedium,
    m7gdLarge,
    m7gdXlarge,
    m7gd2xlarge,
    m7gd4xlarge,
    m7gd8xlarge,
    m7gd12xlarge,
    m7gd16xlarge,
    m7iLarge,
    m7iXlarge,
    m7i2xlarge,
    m7i4xlarge,
    m7i8xlarge,
    m7i12xlarge,
    m7i16xlarge,
    r6gdMedium,
    r6gdLarge,
    r6gdXlarge,
    r6gd2xlarge,
    r6gd4xlarge,
    r6gd8xlarge,
    r6gd12xlarge,
    r6gd16xlarge,
    r7aMedium,
    r7aLarge,
    r7aXlarge,
    r7a2xlarge,
    r7a4xlarge,
    r7a8xlarge,
    r7a12xlarge,
    r7a16xlarge,
    r7gdMedium,
    r7gdLarge,
    r7gdXlarge,
    r7gd2xlarge,
    r7gd4xlarge,
    r7gd8xlarge,
    r7gd12xlarge,
    r7gd16xlarge,
    r7iLarge,
    r7iXlarge,
    r7i2xlarge,
    r7i4xlarge,
    r7i8xlarge,
    r7i12xlarge,
    r7i16xlarge,
    r7i24xlarge,
    r7i48xlarge,
    c5adLarge,
    c5adXlarge,
    c5ad2xlarge,
    c5ad4xlarge,
    c5ad8xlarge,
    c5ad12xlarge,
    c5ad16xlarge,
    c5ad24xlarge,
    c5nLarge,
    c5nXlarge,
    c5n2xlarge,
    c5n4xlarge,
    c5n9xlarge,
    c5n18xlarge,
    r5adLarge,
    r5adXlarge,
    r5ad2xlarge,
    r5ad4xlarge,
    r5ad8xlarge,
    r5ad12xlarge,
    r5ad16xlarge,
    r5ad24xlarge,
    c6idLarge,
    c6idXlarge,
    c6id2xlarge,
    c6id4xlarge,
    c6id8xlarge,
    c6id12xlarge,
    c6id16xlarge,
    c6id24xlarge,
    c6id32xlarge,
    c8gMedium,
    c8gLarge,
    c8gXlarge,
    c8g2xlarge,
    c8g4xlarge,
    c8g8xlarge,
    c8g12xlarge,
    c8g16xlarge,
    c8g24xlarge,
    c8g48xlarge,
    m5adLarge,
    m5adXlarge,
    m5ad2xlarge,
    m5ad4xlarge,
    m5ad8xlarge,
    m5ad12xlarge,
    m5ad16xlarge,
    m5ad24xlarge,
    m5dLarge,
    m5dXlarge,
    m5d2xlarge,
    m5d4xlarge,
    m5d8xlarge,
    m5d12xlarge,
    m5d16xlarge,
    m5d24xlarge,
    m5dnLarge,
    m5dnXlarge,
    m5dn2xlarge,
    m5dn4xlarge,
    m5dn8xlarge,
    m5dn12xlarge,
    m5dn16xlarge,
    m5dn24xlarge,
    m5nLarge,
    m5nXlarge,
    m5n2xlarge,
    m5n4xlarge,
    m5n8xlarge,
    m5n12xlarge,
    m5n16xlarge,
    m5n24xlarge,
    m6idLarge,
    m6idXlarge,
    m6id2xlarge,
    m6id4xlarge,
    m6id8xlarge,
    m6id12xlarge,
    m6id16xlarge,
    m6id24xlarge,
    m6id32xlarge,
    m6idnLarge,
    m6idnXlarge,
    m6idn2xlarge,
    m6idn4xlarge,
    m6idn8xlarge,
    m6idn12xlarge,
    m6idn16xlarge,
    m6idn24xlarge,
    m6idn32xlarge,
    m6inLarge,
    m6inXlarge,
    m6in2xlarge,
    m6in4xlarge,
    m6in8xlarge,
    m6in12xlarge,
    m6in16xlarge,
    m6in24xlarge,
    m6in32xlarge,
    m8gMedium,
    m8gLarge,
    m8gXlarge,
    m8g2xlarge,
    m8g4xlarge,
    m8g8xlarge,
    m8g12xlarge,
    m8g16xlarge,
    m8g24xlarge,
    m8g48xlarge,
    r5dnLarge,
    r5dnXlarge,
    r5dn2xlarge,
    r5dn4xlarge,
    r5dn8xlarge,
    r5dn12xlarge,
    r5dn16xlarge,
    r5dn24xlarge,
    r5nLarge,
    r5nXlarge,
    r5n2xlarge,
    r5n4xlarge,
    r5n8xlarge,
    r5n12xlarge,
    r5n16xlarge,
    r5n24xlarge,
    r6aLarge,
    r6aXlarge,
    r6a2xlarge,
    r6a4xlarge,
    r6a8xlarge,
    r6a12xlarge,
    r6a16xlarge,
    r6a24xlarge,
    r6a32xlarge,
    r6a48xlarge,
    r6idLarge,
    r6idXlarge,
    r6id2xlarge,
    r6id4xlarge,
    r6id8xlarge,
    r6id12xlarge,
    r6id16xlarge,
    r6id24xlarge,
    r6id32xlarge,
    r6idnLarge,
    r6idnXlarge,
    r6idn2xlarge,
    r6idn4xlarge,
    r6idn8xlarge,
    r6idn12xlarge,
    r6idn16xlarge,
    r6idn24xlarge,
    r6idn32xlarge,
    r6inLarge,
    r6inXlarge,
    r6in2xlarge,
    r6in4xlarge,
    r6in8xlarge,
    r6in12xlarge,
    r6in16xlarge,
    r6in24xlarge,
    r6in32xlarge,
    r8gMedium,
    r8gLarge,
    r8gXlarge,
    r8g2xlarge,
    r8g4xlarge,
    r8g8xlarge,
    r8g12xlarge,
    r8g16xlarge,
    r8g24xlarge,
    r8g48xlarge,
    m4p16xlarge,
    c6a32xlarge,
    c6a48xlarge,
    c6i32xlarge,
    r6i24xlarge,
    r6i32xlarge,
    c6in24xlarge,
    c6in32xlarge,
    c7a24xlarge,
    c7a32xlarge,
    c7a48xlarge,
    c7i24xlarge,
    c7i48xlarge,
    m6a24xlarge,
    m6a32xlarge,
    m6a48xlarge,
    m6i24xlarge,
    m6i32xlarge,
    m7a24xlarge,
    m7a32xlarge,
    m7a48xlarge,
    m7i24xlarge,
    m7i48xlarge,
    r7a24xlarge,
    r7a32xlarge,
    r7a48xlarge,
    c8aMedium,
    c8aLarge,
    c8aXlarge,
    c8a2xlarge,
    c8iLarge,
    c8iXlarge,
    c8i2xlarge,
    c9gMedium,
    c9gLarge,
    c9gXlarge,
    c9g2xlarge,
    m8aMedium,
    m8aLarge,
    m8aXlarge,
    m8a2xlarge,
    m8iLarge,
    m8iXlarge,
    m8i2xlarge,
    m9gLarge,
    m9gXlarge,
    m9g2xlarge,
  ];
}

/// Gamelift Fleet enum for `fleet_type`.
extension type const GameliftFleetType._(TfArg<String> _)
    implements TfArg<String> {
  GameliftFleetType.variable(String name) : this._(TfArg.variable(name));
  GameliftFleetType.expression(String template)
    : this._(TfArg.expression(template));
  const GameliftFleetType.arg(TfArg<String> arg) : this._(arg);

  static const onDemand = GameliftFleetType._(TfArgLiteral('ON_DEMAND'));
  static const spot = GameliftFleetType._(TfArgLiteral('SPOT'));

  static const List<GameliftFleetType> values = [onDemand, spot];
}

/// Gamelift Fleet New Game Session Protection enum for `new_game_session_protection_policy`.
extension type const GameliftFleetNewGameSessionProtectionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  GameliftFleetNewGameSessionProtectionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  GameliftFleetNewGameSessionProtectionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const GameliftFleetNewGameSessionProtectionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const noprotection = GameliftFleetNewGameSessionProtectionPolicy._(
    TfArgLiteral('NoProtection'),
  );
  static const fullprotection = GameliftFleetNewGameSessionProtectionPolicy._(
    TfArgLiteral('FullProtection'),
  );

  static const List<GameliftFleetNewGameSessionProtectionPolicy> values = [
    noprotection,
    fullprotection,
  ];
}

/// Exactly one of `build_id`, `script_id` on `aws_gamelift_fleet`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.buildId(...)`.
sealed class GameliftFleetArtifact {
  const GameliftFleetArtifact();

  /// Sets `build_id`.
  const factory GameliftFleetArtifact.buildId(TfArg<String> buildId) =
      GameliftFleetArtifactBuildId;

  /// Sets `script_id`.
  const factory GameliftFleetArtifact.scriptId(TfArg<String> scriptId) =
      GameliftFleetArtifactScriptId;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [GameliftFleetArtifact.buildId] choice: sets `build_id`.
final class GameliftFleetArtifactBuildId extends GameliftFleetArtifact {
  const GameliftFleetArtifactBuildId(this.buildId);

  final TfArg<String> buildId;

  @override
  String get blockKey => 'build_id';

  @override
  Map<String, Object?> encode() => {'build_id': buildId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'build_id': buildId};
}

/// The [GameliftFleetArtifact.scriptId] choice: sets `script_id`.
final class GameliftFleetArtifactScriptId extends GameliftFleetArtifact {
  const GameliftFleetArtifactScriptId(this.scriptId);

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

  final GameliftFleetCertificateType? certificateType;

  Map<String, Object?> encode() => {
    'certificate_type': ?certificateType?.toTfJson(),
  };
}

/// `certificate_type` — derived from the provider schema description.
extension type const GameliftFleetCertificateType._(TfArg<String> _)
    implements TfArg<String> {
  GameliftFleetCertificateType.variable(String name)
    : this._(TfArg.variable(name));
  GameliftFleetCertificateType.expression(String template)
    : this._(TfArg.expression(template));
  const GameliftFleetCertificateType.arg(TfArg<String> arg) : this._(arg);

  static const disabled = GameliftFleetCertificateType._(
    TfArgLiteral('DISABLED'),
  );
  static const generated = GameliftFleetCertificateType._(
    TfArgLiteral('GENERATED'),
  );

  static const List<GameliftFleetCertificateType> values = [
    disabled,
    generated,
  ];
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

  final GameliftFleetProtocol protocol;

  final TfArg<num> toPort;

  Map<String, Object?> encode() => {
    'from_port': fromPort.toTfJson(),
    'ip_range': ipRange.toTfJson(),
    'protocol': protocol.toTfJson(),
    'to_port': toPort.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const GameliftFleetProtocol._(TfArg<String> _)
    implements TfArg<String> {
  GameliftFleetProtocol.variable(String name) : this._(TfArg.variable(name));
  GameliftFleetProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const GameliftFleetProtocol.arg(TfArg<String> arg) : this._(arg);

  static const tcp = GameliftFleetProtocol._(TfArgLiteral('TCP'));
  static const udp = GameliftFleetProtocol._(TfArgLiteral('UDP'));

  static const List<GameliftFleetProtocol> values = [tcp, udp];
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
    'new_game_sessions_per_creator': ?newGameSessionsPerCreator?.toTfJson(),
    'policy_period_in_minutes': ?policyPeriodInMinutes?.toTfJson(),
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

  final List<GameliftFleetServerProcess>? serverProcess;

  Map<String, Object?> encode() => {
    'game_session_activation_timeout_seconds':
        ?gameSessionActivationTimeoutSeconds?.toTfJson(),
    'max_concurrent_game_session_activations':
        ?maxConcurrentGameSessionActivations?.toTfJson(),
    if (serverProcess != null)
      'server_process': [for (final e in serverProcess!) e.encode()],
  };
}

/// Typed helper for the `runtime_configuration.server_process` block of
/// `aws_gamelift_fleet` (derived from provider schema).
@immutable
final class GameliftFleetServerProcess {
  const GameliftFleetServerProcess({
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
    'parameters': ?parameters?.toTfJson(),
  };
}

/// Factory wrapper for `aws_gamelift_fleet`.
final class AwsGameliftFleet extends Resource {
  static const String tfType = 'aws_gamelift_fleet';

  AwsGameliftFleet(
    super.localName, {
    required GameliftFleetArtifact artifact,
    TfArg<String>? description,
    required GameliftFleetEc2InstanceType ec2InstanceType,
    GameliftFleetType? fleetType,
    TfArg<String>? instanceRoleArn,
    TfArg<List<String>>? metricGroups,
    required TfArg<String> name,
    GameliftFleetNewGameSessionProtectionPolicy? newGameSessionProtectionPolicy,
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
           ...artifact.argMap,
           'description': ?description,
           'ec2_instance_type': ec2InstanceType,
           'fleet_type': ?fleetType,
           'instance_role_arn': ?instanceRoleArn,
           'metric_groups': ?metricGroups,
           'name': name,
           'new_game_session_protection_policy':
               ?newGameSessionProtectionPolicy,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGameliftFleet>`.
  RefTo<AwsGameliftFleet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `build_id` attribute.
  TfRef<String> get buildId => TfRef.attribute<String>(this, 'build_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ec2_instance_type` attribute.
  TfRef<String> get ec2InstanceType =>
      TfRef.attribute<String>(this, 'ec2_instance_type');

  /// Reference to `fleet_type` attribute.
  TfRef<String> get fleetType => TfRef.attribute<String>(this, 'fleet_type');

  /// Reference to `instance_role_arn` attribute.
  TfRef<String> get instanceRoleArn =>
      TfRef.attribute<String>(this, 'instance_role_arn');

  /// Reference to `metric_groups` attribute.
  TfRef<List<String>> get metricGroups =>
      TfRef.attribute<List<String>>(this, 'metric_groups');

  /// Reference to `new_game_session_protection_policy` attribute.
  TfRef<String> get newGameSessionProtectionPolicy =>
      TfRef.attribute<String>(this, 'new_game_session_protection_policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `script_id` attribute.
  TfRef<String> get scriptId => TfRef.attribute<String>(this, 'script_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
