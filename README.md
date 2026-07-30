# module-repo

A standalone module repository for the KEP-2.20 module-as-component POC. It holds
versioned capability modules that a `module` component installs into a cluster.
The first module, `s3`, is taken from oam-library (the `atmos-crossplane-aws-s3`
composition and the `atmos-s3-v1` KubeVela component).

## Layout

```
modules/
  s3/
    _module.cue                 # module identity (name: s3)
    auxiliary/
      xrd.yaml                  # Tier 2: module-wide Crossplane XRD (xs3.objectstore.atmos.guidewire.com)
    v1/
      _version.cue              # API line v1 (apiVersion: v1)
      auxiliary/
        composition.yaml        # Tier 3: the v1 Composition (s3.objectstore.atmos.guidewire.com)
      definitions/
        bucket.cue              # the v1 ComponentDefinition (workload kind S3)
```

## Tiers (install order)

1. `auxiliary/xrd.yaml` — the module-wide XRD. Shared by every API line. Must be
   Established before the Composition is applied.
2. `v1/auxiliary/composition.yaml` — the v1 Composition. Depends on the XRD.
3. `v1/definitions/bucket.cue` — the ComponentDefinition consumers reference. It is
   installed last, once its backing Composition exists.

## How the POC uses this

The `module` component (see the POC plan) reads a module from this repo, renders its
tiers into an owned Application, orders them with `dependsOn`, and gates each tier on a
`healthPolicy` (the XRD being `Established`). Enabling a line is selecting an
`apiVersion`; adding a `v2/` directory here makes v1 and v2 coexist.

## Source

The `s3` module content is copied verbatim from
`CCS-atmos-oam-library`:
- XRD and Composition: `library/crossplane/compositions/aws-s3/`
- ComponentDefinition: `library/kubevela/components/s3/`
