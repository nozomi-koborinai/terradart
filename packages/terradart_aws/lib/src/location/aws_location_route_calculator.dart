// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_location_route_calculator`.
const Set<String> _awsLocationRouteCalculatorSensitive = <String>{};

/// Factory wrapper for `aws_location_route_calculator`.
final class AwsLocationRouteCalculator extends Resource {
  static const String tfType = 'aws_location_route_calculator';

  AwsLocationRouteCalculator({
    required super.localName,
    required TfArg<String> calculatorName,
    required TfArg<String> dataSource,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'calculator_name': calculatorName,
           'data_source': dataSource,
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationRouteCalculatorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `calculator_arn` attribute.
  TfRef<String> get calculatorArn =>
      TfRef.attribute<String>(this, 'calculator_arn');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
