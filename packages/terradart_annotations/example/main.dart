import 'package:terradart_annotations/terradart_annotations.dart';

/// Annotations are consumed by terradart_codegen-generated abstract classes.
/// End users normally do not write these directly.
@TerraformResource(
    type: 'example_resource', provider: 'example/provider ~> 1.0')
abstract class $ExampleResource {
  @ForceNew()
  String get name;

  @Sensitive()
  String? get password;
}

void main() {
  print('See README for usage; annotations are emitted by terradart_codegen.');
}
