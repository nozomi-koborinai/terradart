/// terradart_annotations -- annotation surface consumed by terradart_codegen
/// generated `$Foo` abstract classes.
///
/// Three const annotations exposed:
/// - [TerraformResource] -- pinned on each generated abstract class to
///   record the Terraform resource type + provider.
/// - [ForceNew] -- marks getters whose schema attribute is `ForceNew`
///   (provider replaces the resource on change).
/// - [Sensitive] -- marks getters whose values must not appear in plain
///   text in synth output. The aggregate set is emitted as a top-level
///   `const Set<String> <terraformTypeCamelCase>Sensitive` sibling to
///   each generated abstract class; factories
///   read the const for their runtime `$sensitiveFields` getter.
library;

export 'src/terraform_resource.dart' show TerraformResource;
export 'src/force_new.dart' show ForceNew;
export 'src/sensitive.dart' show Sensitive;
