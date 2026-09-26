// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ce_cost_allocation_tag`.
const Set<String> _awsCeCostAllocationTagSensitive = <String>{};

/// Factory wrapper for `aws_ce_cost_allocation_tag`.
final class AwsCeCostAllocationTag extends Resource {
  static const String tfType = 'aws_ce_cost_allocation_tag';

  AwsCeCostAllocationTag({
    required super.localName,
    required TfArg<String> status,
    required TfArg<String> tagKey,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'status': status, 'tag_key': tagKey},
       );

  @override
  Set<String> get sensitiveFields => _awsCeCostAllocationTagSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
