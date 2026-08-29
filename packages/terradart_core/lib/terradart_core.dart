/// terradart — Dart-first IaC runtime.
library;

export 'src/app_export.dart'
    show
        AppExport,
        EnvBackedExport,
        ResourceAttributeExport,
        ResourceIdExport,
        StringExport;
export 'src/backends.dart' show GcsBackend, LocalBackend;
export 'src/data.dart' show Data;
export 'src/duplicate_resource_error.dart' show DuplicateResourceError;
export 'src/duration_helper.dart' show TerraformDurationExt;
export 'src/lifecycle.dart'
    show DependencyTarget, LifecycleOptions, RefDependency, ResourceDependency;
export 'src/resource.dart' show Resource, ResourceKind;
export 'src/stack.dart' show Stack, StackBackend, StackProvider;
export 'src/synth/dart_constants_emitter.dart' show DartConstantsEmitter;
export 'src/synth/json_encoder.dart' show TfJsonEncoder;
export 'src/synth/literal_resolver.dart' show LiteralResolver;
export 'src/synth/output_emitter.dart'
    show
        DartConstantSpec,
        OutputEmissionResult,
        OutputEmitter,
        TerraformOutputSpec;
export 'src/synth/sensitive_literal_error.dart' show SensitiveLiteralError;
export 'src/synth/stack_synth.dart' show SynthResult;
export 'src/tf_arg.dart'
    show TerraformEnum, TfArg, TfArgLiteral, TfArgRef, TfArgVariable;
export 'src/tf_variable.dart' show TfVariable;
export 'src/tf_ref.dart'
    show AttributeRef, DataRef, ResourceRef, TfAddressed, TfRef;
