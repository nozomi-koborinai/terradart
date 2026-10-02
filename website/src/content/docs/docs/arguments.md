---
title: Writing arguments
description: How to pass a value to a TerraDart factory — a literal, another resource, an enum member, a variant, a nested block, a variable, a secret or a Terraform expression — on every provider.
---

Every factory argument has one shape per kind of value, and the analyzer tells you which kind it wants. The rules are the same on every provider package: Google Cloud, AWS, Cloudflare and Appwrite.

## The rules

<!-- argument-rules:start -->
Pick the form by where the value comes from. The argument's type tells you which forms it takes, and a dot shorthand (`.literal`, `.new`, `.providedAl2023`) names the constructor of that type.

| The value is | Write | Example |
|---|---|---|
| known when you synth | `.literal(...)` | `functionName: .literal('hello')` |
| another resource of this Stack (a `RefTo<R>` input) | its `ref` | `role: role.ref` |
| one attribute of another block | its getter | `assumeRolePolicy: trust.json` |
| a resource outside this Stack (a `RefTo<R>` input) | `.literal(id)` | `zoneId: .literal('023e105f4ecef8ad9ca31a8372d0c353')` |
| one of a fixed set (an enum) | the member | `runtime: .providedAl2023` |
| one of several exclusive arguments (a sealed type) | the variant | `code: .filename(.literal('build/fn.zip'))` |
| a nested block | its helper class; `.new(...)` inside another block or a variant | `environment: LambdaFunctionEnvironment(...)` |
| a Terraform variable | the handle `variable<T>()` returns | `memorySize: memory` |
| a variable in an enum or `RefTo<R>` input | `.arg(handle)` | `runtime: .arg(runtimeName)` |
| a secret (a `Sensitive<T>` input) | a sensitive variable, never a literal | `value: .value(dbPassword)` |
| a reference inside a literal list or map | the getter's `.interpolation` | `{'ROLE_ARN': role.arn.interpolation}` |
| anything else Terraform evaluates | `.expression(...)` | `.expression(r'${file("trust.json")}')` |

```dart
final memory = variable<num>('memory_mb');
final runtimeName = variable<String>('runtime');
final dbPassword = variable<String>('db_password', sensitive: true);

final trust = add(
  DataAwsIamPolicyDocument(
    'trust',
    statement: [
      DataIamPolicyDocumentStatement(
        actions: .literal(['sts:AssumeRole']),
        principals: [
          .new(
            type: .literal('Service'),
            identifiers: .literal(['lambda.amazonaws.com']),
          ),
        ],
      ),
    ],
  ),
);
final role = add(AwsIamRole('hello', assumeRolePolicy: trust.json));
add(
  AwsLambdaFunction(
    'hello',
    functionName: .literal('hello'),
    role: role.ref,
    runtime: .arg(runtimeName),
    code: .filename(.literal('build/fn.zip')),
    memorySize: memory,
    environment: LambdaFunctionEnvironment(
      variables: .literal({'ROLE_ARN': role.arn.interpolation}),
    ),
  ),
);
add(
  AwsSsmParameter(
    'db_password',
    name: .literal('/hello/db_password'),
    type: .securestring,
    value: .value(dbPassword),
  ),
);
```
<!-- argument-rules:end -->

The same table is in the [README](https://github.com/nozomi-koborinai/terradart#writing-arguments), on the dartdoc pages of `TfArg`, `RefTo` and every provider package, and in the [agent skill](/docs/agents/). The sections below say more about each row.

## Literals

A value known when you synth is `.literal(...)`. Numbers, booleans, lists and maps work the same way:

```dart
add(
  AppwriteWebhook(
    'orders',
    name: .literal('orders'),
    url: .literal('https://example.com/hooks/orders'),
    events: .literal(['databases.*.tables.*.rows.*.create']),
    tls: .literal(true),
  ),
);
```

An argument can only be `null` when it is optional; leave it out instead of passing `.literal(null)`.

## References

An input that names another resource is typed `RefTo<R>`. Pass the resource's `ref`, and the input writes the attribute the provider expects (`self_link`, `id`, `arn`, `name`), so you never pick one, and a resource of the wrong type does not compile:

```dart
final zone = add(
  CloudflareZone('site', name: .literal('example.com'), account: ZoneAccount(id: .literal('acc'))),
);
add(
  CloudflareDnsRecord(
    'www',
    zoneId: zone.ref,
    name: .literal('www'),
    type: .cname,
    ttl: .literal(1),
    content: .content(.literal('ghs.googlehosted.com')),
    proxied: .literal(true),
  ),
);
```

Every attribute also has a getter (`zone.id`, `role.arn`, `topic.name`) that is a `TfArg` of its type, so it goes into any argument that takes one. A resource outside the Stack goes into a `RefTo<R>` input as `.literal(...)`, its name, ID or ARN. A module output or another string you cannot type goes in as `.arg(...)`, unchecked.

## Enums and exclusive arguments

An input with a fixed set of values takes the member, bare: `type: .cname`, `runtime: .providedAl2023`, `ingress: .all`. A list of them is a Dart list: `architectures: [.x8664]`.

When the provider accepts exactly one (or at most one) of several arguments, they are one sealed argument, and each variant sets one of them. Its name is the concept (`code`, `content`, `name`, `delivery`), and its variants are named after the Terraform arguments:

```dart
add(
  AwsIamRole(
    'deploy',
    assumeRolePolicy: .expression(r'${file("trust.json")}'),
    name: .namePrefix(.literal('deploy-')),
  ),
);
```

A variant whose block has no fields takes no argument (`format: .avroFormat()`).

## Nested blocks

A nested block is a helper class. Name the class on the resource's own arguments, where it tells a reader which block starts, and write `.new(...)` for a block inside another block or inside a variant (`delivery: .pushConfig(.new(...))`). A block that repeats is a Dart `List` of helpers:

```dart
add(
  GoogleStorageBucket(
    'logs',
    name: .literal('my-project-logs'),
    location: .literal('EU'),
    lifecycleRule: [
      StorageBucketLifecycleRule(
        action: .new(type: .delete),
        condition: .new(age: .literal(30)),
      ),
    ],
  ),
);
```

## Variables and secrets

`variable<T>()` declares a Terraform variable on the Stack and returns its handle, which a `TfArg<T>` input takes as is. An enum or `RefTo<R>` input takes it through `.arg(handle)`.

An input the provider marks sensitive is `Sensitive<T>`. It takes a sensitive variable, an expression or another block's attribute, but has no `.literal`, so a secret never ends up in `main.tf.json`:

```dart
final dbPassword = variable<String>('db_password', sensitive: true);
add(
  GoogleSecretManagerSecretVersion(
    'db_password',
    secret: .literal('projects/my-project/secrets/db-password'),
    payload: .plaintext(dbPassword),
  ),
);
```

## Expressions and references inside literals

Anything Terraform has to evaluate — a function call, a conditional, `terraform.workspace` — is `.expression(...)`, written as a Terraform template. Use a raw string (`r'...'`) so Dart leaves `${` alone.

A literal list or map holds plain values, so a reference inside one goes in as the getter's `.interpolation` (`${aws_iam_role.hello.arn}`): `variables: .literal({'ROLE_ARN': role.arn.interpolation})`.

Synth checks what the analyzer cannot: a variable you never declared, a reference to a block you never added, a negative timeout. `stack.validate()` lists every issue at once.
