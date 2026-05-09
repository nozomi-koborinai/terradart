import 'package:meta/meta.dart';

/// Marks a getter on a generated `$Foo` abstract class whose underlying
/// Terraform attribute is `ForceNew` -- i.e. mutating it triggers a
/// destroy/recreate cycle. Pure documentation in v0.0.x; future may surface
/// this in plan-time warnings.
///
/// Emitted by `terradart_codegen`'s abstract-class emitter on Required +
/// ForceNew attributes.
@immutable
final class ForceNew {
  const ForceNew();
}
