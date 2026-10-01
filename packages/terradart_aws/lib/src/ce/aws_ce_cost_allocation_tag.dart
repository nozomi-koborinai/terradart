// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ce_cost_allocation_tag`.
const Set<String> _awsCeCostAllocationTagSensitive = <String>{};

/// Ce Cost Allocation Tag enum for `status`.
extension type const CeCostAllocationTagStatus._(TfArg<String> _)
    implements TfArg<String> {
  CeCostAllocationTagStatus.variable(String name)
    : this._(TfArg.variable(name));
  CeCostAllocationTagStatus.expression(String template)
    : this._(TfArg.expression(template));
  const CeCostAllocationTagStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = CeCostAllocationTagStatus._(TfArgLiteral('Active'));
  static const inactive = CeCostAllocationTagStatus._(TfArgLiteral('Inactive'));

  static const List<CeCostAllocationTagStatus> values = [active, inactive];
}

/// Factory wrapper for `aws_ce_cost_allocation_tag`.
final class AwsCeCostAllocationTag extends Resource {
  static const String tfType = 'aws_ce_cost_allocation_tag';

  AwsCeCostAllocationTag(
    super.localName, {
    required CeCostAllocationTagStatus status,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCeCostAllocationTag>`.
  RefTo<AwsCeCostAllocationTag> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tag_key` attribute.
  TfRef<String> get tagKey => TfRef.attribute<String>(this, 'tag_key');
}
