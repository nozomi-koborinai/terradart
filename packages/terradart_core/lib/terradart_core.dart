/// terradart — Dart-first IaC runtime.
library;

export 'src/app_export.dart'
    show
        AppExport,
        EnvBackedExport,
        ResourceAttributeExport,
        ResourceIdExport,
        StringExport;
export 'src/backends.dart' show GcsBackend;
export 'src/data.dart' show Data;
export 'src/duplicate_resource_error.dart' show DuplicateResourceError;
export 'src/duration_helper.dart' show TerraformDurationExt;
export 'src/lifecycle.dart'
    show DependencyTarget, LifecycleOptions, RefDependency, ResourceDependency;
export 'src/resource.dart' show ProviderBinding, Resource, ResourceKind;
export 'src/stack.dart' show Stack, StackBackend, StackProvider;
export 'src/synth/dart_constants_emitter.dart' show DartConstantsEmitter;
export 'src/synth/json_encoder.dart' show JsonEncoder;
export 'src/synth/literal_resolver.dart' show LiteralResolver;
export 'src/synth/output_emitter.dart'
    show
        DartConstantSpec,
        OutputEmissionResult,
        OutputEmitter,
        TerraformOutputSpec;
export 'src/synth/stack_synth.dart' show StackSynth, SynthResult;
export 'src/tf_arg.dart' show TfArg, TfArgLiteral, TfArgRef;
export 'src/tf_ref.dart'
    show AttributeRef, DataRef, ResourceRef, TfAddressed, TfRef;
