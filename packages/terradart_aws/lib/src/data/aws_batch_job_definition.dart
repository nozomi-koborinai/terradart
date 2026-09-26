// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_batch_job_definition`.
const Set<String> _awsBatchJobDefinitionSensitive = <String>{};

/// Factory wrapper for `aws_batch_job_definition`.
final class DataAwsBatchJobDefinition extends Data {
  static const String tfType = 'aws_batch_job_definition';

  DataAwsBatchJobDefinition({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<num>? revision,
    TfArg<String>? status,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arn != null) 'arn': arn,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (revision != null) 'revision': revision,
           if (status != null) 'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBatchJobDefinitionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn_prefix` attribute.
  TfRef<String> get arnPrefix => TfRef.attribute<String>(this, 'arn_prefix');

  /// Reference to `container_orchestration_type` attribute.
  TfRef<String> get containerOrchestrationType =>
      TfRef.attribute<String>(this, 'container_orchestration_type');

  /// Reference to `eks_properties` attribute.
  TfRef<List<Map<String, Object?>>> get eksProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'eks_properties');

  /// Reference to `node_properties` attribute.
  TfRef<List<Map<String, Object?>>> get nodeProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'node_properties');

  /// Reference to `retry_strategy` attribute.
  TfRef<List<Map<String, Object?>>> get retryStrategy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'retry_strategy');

  /// Reference to `scheduling_priority` attribute.
  TfRef<num> get schedulingPriority =>
      TfRef.attribute<num>(this, 'scheduling_priority');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timeout` attribute.
  TfRef<List<Map<String, Object?>>> get timeout =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'timeout');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
