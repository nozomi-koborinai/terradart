/// Example: invoke the terradart maintainer CLI.
///
/// ```bash
/// dart pub global activate terradart_codegen ^0.35.0
/// terradart-codegen wrap \
///   --provider hashicorp/google \
///   --source path/to/schema-dir \
///   --output path/to/output
/// ```
void main() {
  // ignore: avoid_print
  print('Run terradart_codegen via the `terradart-codegen` CLI; see README.');
}
