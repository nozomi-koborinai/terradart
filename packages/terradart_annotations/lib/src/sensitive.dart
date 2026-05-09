import 'package:meta/meta.dart';

/// Marks a getter on a generated `$Foo` abstract class whose value must be
/// masked in synth output. Per ADRs 0009 + 0012, all `@Sensitive`-marked
/// fields are aggregated by `terradart_codegen` into a top-level
/// `const Set<String> <terraformTypeCamelCase>Sensitive` sibling to the
/// abstract class; the runtime synth pass consults that set when emitting
/// `terraform.tf.json` to substitute literal sensitive values with `''`.
@immutable
final class Sensitive {
  const Sensitive();
}
