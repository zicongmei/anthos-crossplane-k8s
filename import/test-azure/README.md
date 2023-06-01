# Usage

## deploy

```shell
pushd deploy
terrafrom init
terrafrom apply
popd
```

Keep a note of the terraform outputs. They are the values of the `crossplane.io/external-name` in importing.

## Import with observed only

- Change the `managementPolicy` to `ObserveOnly` in the yaml files.
- Change the names of resources to the names from the previous step.
- kubectl apply the yaml files.

## Change the import with full control
- Change the `managementPolicy` to `FullControl` in the yaml files.
- kubectl apply the yaml files.