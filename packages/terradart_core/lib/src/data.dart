import 'resource.dart';

/// Base of every user-instantiable Terraform `data` block.
///
/// Parallel to `Resource`. The two share `Stack`-level dedup via
/// `(kind, terraformType, localName)`. `Data` does not accept `lifecycle`
/// (Terraform forbids it on data sources).
abstract class Data extends Resource {
  Data({
    required super.terraformType,
    required super.localName,
    required super.argMap,
    super.dependsOn,
    super.provider,
  }) : super(lifecycle: null);

  @override
  ResourceKind get kind => ResourceKind.data;

  @override
  String get tfAddress => 'data.$terraformType.$localName';
}
