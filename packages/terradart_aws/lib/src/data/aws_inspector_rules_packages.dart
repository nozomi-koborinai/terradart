// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_inspector_rules_packages`.
const Set<String> _awsInspectorRulesPackagesSensitive = <String>{};

/// Factory wrapper for `aws_inspector_rules_packages`.
final class DataAwsInspectorRulesPackages extends Data {
  static const String tfType = 'aws_inspector_rules_packages';

  DataAwsInspectorRulesPackages({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsInspectorRulesPackagesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');
}
