// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_instance_state`.
const Set<String> _awsRdsInstanceStateSensitive = <String>{};

/// Factory wrapper for `aws_rds_instance_state`.
final class AwsRdsInstanceState extends Resource {
  static const String tfType = 'aws_rds_instance_state';

  AwsRdsInstanceState({
    required super.localName,
    required TfArg<String> identifier,
    TfArg<String>? region,
    required TfArg<String> state,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identifier': identifier,
           if (region != null) 'region': region,
           'state': state,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsInstanceStateSensitive;
}
