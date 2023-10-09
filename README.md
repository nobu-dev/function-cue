# cue-function

A Crossplane [Composition Function](https://docs.crossplane.io/latest/concepts/composition-functions/), for [cuelang](https://cuelang.org/).

Supports `cue export` based off a string template past into the Compositions `export` field.

The resulting Export is added to the Desired State of the XR, this will override conflicting values (perhaps this should exit with an error, as this is what cue would do)

This function is lifted from [/play](https://cuelang.org/play) [codebase](https://github.com/cue-lang/cuelang.org/blob/master/play/main.go)

# Example Composition

```yaml
apiVersion: apiextensions.crossplane.io/v1
kind: Composition
metadata:
  name: test-cue
spec:
  compositeTypeRef:
    apiVersion: database.example.com/v1alpha1
    kind: NoSQL
  mode: Pipeline
  pipeline:
  - step: run-cue-function
    functionRef:
      name: function-cue
    input:
      apiVersion: template.fn.crossplane.io/v1beta1
      kind: Input
      export: |
        #ENVIRONMENT: "dev"
        #REGION: "us-east-1"

        metadata: env: #ENVIRONMENT
        spec: region: #REGION
```

# Installing

```yaml
apiVersion: pkg.crossplane.io/v1beta1
kind: Function
metadata:
  name: function-cue
spec:
  package: mitsuwa/function-cue:v0.1.0
```

### Desired State Returned

function-cue will return a desired state, which is the result of the `cue export` in the `spec` field

```yaml
apiVersion: cue.crossplane.io/v1
kind: Export
spec:
  metadata:
    env: dev
  spec:
    region: us-east-1
```

### Debugging

This template plumbs a logger up to your Function. Any logs you emit will show
up in the Function's pod logs. Look for the Function pod in `crossplane-system`.

[Crossplane]: https://crossplane.io
[function-design]: https://github.com/crossplane/crossplane/blob/3996f20/design/design-doc-composition-functions.md
[function-pr]: https://github.com/crossplane/crossplane/pull/4500
[new-crossplane-issue]: https://github.com/crossplane/crossplane/issues/new?assignees=&labels=enhancement&projects=&template=feature_request.md
[install-master-docs]: https://docs.crossplane.io/v1.13/software/install/#install-pre-release-crossplane-versions
[proto-schema]: https://github.com/crossplane/function-sdk-go/blob/main/proto/v1beta1/run_function.proto
[grpcurl]: https://github.com/fullstorydev/grpcurl