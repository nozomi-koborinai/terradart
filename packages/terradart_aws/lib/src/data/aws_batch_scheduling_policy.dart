// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../batch/aws_batch_scheduling_policy.dart';

/// Sensitive field paths for `aws_batch_scheduling_policy`.
const Set<String> _awsBatchSchedulingPolicySensitive = <String>{};

/// Factory wrapper for `aws_batch_scheduling_policy`.
final class DataAwsBatchSchedulingPolicy extends Data {
  static const String tfType = 'aws_batch_scheduling_policy';

  DataAwsBatchSchedulingPolicy({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBatchSchedulingPolicySensitive;

  /// A reference to the `aws_batch_scheduling_policy` this data source reads, for
  /// arguments typed `RefTo<AwsBatchSchedulingPolicy>`.
  RefTo<AwsBatchSchedulingPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fair_share_policy` attribute.
  TfRef<List<Map<String, Object?>>> get fairSharePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'fair_share_policy');
}
