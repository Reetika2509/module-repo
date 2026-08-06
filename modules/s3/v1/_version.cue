// API line v1 for the s3 module.
//
// apiVersion is the stability contract a consumer binds to (type: s3/v1/bucket).
// enabled   gates whether this API line installs (default true when absent).
// This line ships one Composition (auxiliary/composition.yaml) and one
// ComponentDefinition (definitions/bucket.cue), both backed by the module-wide
// XRD at ../auxiliary/xrd.yaml. A future v2/ line can coexist alongside this one.
apiVersion: "v1"
enabled:    true
