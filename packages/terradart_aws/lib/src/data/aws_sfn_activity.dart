// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../sfn/aws_sfn_activity.dart';

/// Sensitive field paths for `aws_sfn_activity`.
const Set<String> _awsSfnActivitySensitive = <String>{};

/// Factory wrapper for `aws_sfn_activity`.
final class DataAwsSfnActivity extends Data {
  static const String tfType = 'aws_sfn_activity';

  DataAwsSfnActivity({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'arn': ?arn, 'name': ?name, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsSfnActivitySensitive;

  /// A reference to the `aws_sfn_activity` this data source reads, for
  /// arguments typed `RefTo<AwsSfnActivity>`.
  RefTo<AwsSfnActivity> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `arn` attribute.
  TfRef<String> get arnRef => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
