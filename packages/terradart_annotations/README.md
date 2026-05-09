# terradart_annotations

Annotation surface consumed by code generated via [`terradart_codegen`](https://github.com/nozomi-koborinai/terradart). End users normally do not write these annotations themselves -- they appear in the `$Foo` abstract resource classes that `dart run terradart codegen` emits.

## Annotations

| Annotation | Target | Purpose |
|---|---|---|
| `@TerraformResource(type:, provider:)` | class | Records the Terraform resource type and provider source/version on each generated abstract class. |
| `@ForceNew()` | getter | Marks attributes whose mutation triggers a destroy/recreate cycle. |
| `@Sensitive()` | getter | Marks attributes whose values must be masked in synth output. Folded into a top-level `const Set<String> <terraformTypeCamelCase>Sensitive` sibling to each generated class. |

## Example (emitter output)

```dart
import 'package:schemantic/schemantic.dart';
import 'package:terradart_annotations/terradart_annotations.dart';

const Set<String> googlePubsubTopicSensitive = <String>{};

@TerraformResource(type: 'google_pubsub_topic', provider: 'hashicorp/google ~> 7.0')
@Schema()
abstract class $GooglePubsubTopic {
  @Field(name: 'name')
  String get name;

  @ForceNew()
  @Field(name: 'project')
  String? get project;
}
```

The sensitive set lives as a **top-level public const** sibling to the abstract class — `schemantic`'s `SchemaGenerator` indiscriminately treats class-member `static const` fields as required schema properties, so the carrier is emitted outside the class.

See the main [terradart](https://github.com/nozomi-koborinai/terradart) repository for the codegen pipeline and runtime synth.

## Installation

End users normally do not depend on this package directly — the abstract classes emitted by `terradart_codegen` import it automatically. If you need it directly:

```yaml
dependencies:
  terradart_annotations: ^0.0.1-dev
```
