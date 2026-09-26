// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_swf_domain`.
const Set<String> _awsSwfDomainSensitive = <String>{};

/// Factory wrapper for `aws_swf_domain`.
final class AwsSwfDomain extends Resource {
  static const String tfType = 'aws_swf_domain';

  AwsSwfDomain({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> workflowExecutionRetentionPeriodInDays,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'workflow_execution_retention_period_in_days':
               workflowExecutionRetentionPeriodInDays,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSwfDomainSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
