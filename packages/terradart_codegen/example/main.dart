/// Example: invoke the terradart maintainer CLI.
///
/// ```bash
/// dart pub global activate terradart_codegen ^0.12.x
/// terradart wrap \
///   --provider hashicorp/google \
///   --source path/to/schema-dir \
///   --output path/to/output
/// ```
void main() {
  // ignore: avoid_print
  print('Run terradart_codegen via the `terradart` CLI; see README.');
}
