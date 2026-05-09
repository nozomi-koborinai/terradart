import 'constraints.dart';
import 'type_def.dart';

/// One attribute on a Terraform block.
///
/// `name` is the **Terraform JSON name** (snake_case). The Dart camelCase
/// rendering happens at emit time and is the responsibility of the
/// `naming.dart` utility.
final class Attribute {
  final String name;
  final TypeDef type;
  final Constraints constraints;
  final String? description;
  final Object? defaultValue;

  const Attribute({
    required this.name,
    required this.type,
    required this.constraints,
    this.description,
    this.defaultValue,
  });
}
