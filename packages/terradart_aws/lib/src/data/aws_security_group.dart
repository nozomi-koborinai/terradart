// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_security_group.dart';
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_security_group`.
const Set<String> _awsSecurityGroupSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_security_group` (derived from provider schema).
@immutable
final class DataSecurityGroupFilter {
  const DataSecurityGroupFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_security_group`.
final class DataAwsSecurityGroup extends Data {
  static const String tfType = 'aws_security_group';

  DataAwsSecurityGroup({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    RefTo<AwsVpc>? vpcId,
    List<DataSecurityGroupFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'region': ?region,
           'tags': ?tags,
           'vpc_id': ?vpcId?.encodeAs('id'),
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityGroupSensitive;

  /// A reference to the `aws_security_group` this data source reads, for
  /// arguments typed `RefTo<AwsSecurityGroup>`.
  RefTo<AwsSecurityGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');
}
