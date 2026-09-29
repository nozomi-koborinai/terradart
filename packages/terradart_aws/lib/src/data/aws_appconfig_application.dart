// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../appconfig/aws_appconfig_application.dart';

/// Sensitive field paths for `aws_appconfig_application`.
const Set<String> _awsAppconfigApplicationSensitive = <String>{};

/// Factory wrapper for `aws_appconfig_application`.
final class DataAwsAppconfigApplication extends Data {
  static const String tfType = 'aws_appconfig_application';

  DataAwsAppconfigApplication({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': ?name, 'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsAppconfigApplicationSensitive;

  /// A reference to the `aws_appconfig_application` this data source reads, for
  /// arguments typed `RefTo<AwsAppconfigApplication>`.
  RefTo<AwsAppconfigApplication> get ref =>
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
