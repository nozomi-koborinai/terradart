// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sfn_state_machine_versions`.
const Set<String> _awsSfnStateMachineVersionsSensitive = <String>{};

/// Factory wrapper for `aws_sfn_state_machine_versions`.
final class DataAwsSfnStateMachineVersions extends Data {
  static const String tfType = 'aws_sfn_state_machine_versions';

  DataAwsSfnStateMachineVersions({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> statemachineArn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'statemachine_arn': statemachineArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSfnStateMachineVersionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `statemachine_versions` attribute.
  TfRef<List<String>> get statemachineVersions =>
      TfRef.attribute<List<String>>(this, 'statemachine_versions');
}
