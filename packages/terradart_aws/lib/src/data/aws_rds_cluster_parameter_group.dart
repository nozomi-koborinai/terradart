// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../rds/aws_rds_cluster_parameter_group.dart';

/// Sensitive field paths for `aws_rds_cluster_parameter_group`.
const Set<String> _awsRdsClusterParameterGroupSensitive = <String>{};

/// Factory wrapper for `aws_rds_cluster_parameter_group`.
final class DataAwsRdsClusterParameterGroup extends Data {
  static const String tfType = 'aws_rds_cluster_parameter_group';

  DataAwsRdsClusterParameterGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name, 'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsRdsClusterParameterGroupSensitive;

  /// A reference to the `aws_rds_cluster_parameter_group` this data source reads, for
  /// arguments typed `RefTo<AwsRdsClusterParameterGroup>`.
  RefTo<AwsRdsClusterParameterGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `family` attribute.
  TfRef<String> get family => TfRef.attribute<String>(this, 'family');
}
