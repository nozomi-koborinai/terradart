// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53recoveryreadiness_cell`.
const Set<String> _awsRoute53recoveryreadinessCellSensitive = <String>{};

/// Factory wrapper for `aws_route53recoveryreadiness_cell`.
final class AwsRoute53recoveryreadinessCell extends Resource {
  static const String tfType = 'aws_route53recoveryreadiness_cell';

  AwsRoute53recoveryreadinessCell({
    required super.localName,
    required TfArg<String> cellName,
    TfArg<List<String>>? cells,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cell_name': cellName,
           if (cells != null) 'cells': cells,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53recoveryreadinessCellSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `parent_readiness_scopes` attribute.
  TfRef<List<String>> get parentReadinessScopes =>
      TfRef.attribute<List<String>>(this, 'parent_readiness_scopes');
}
