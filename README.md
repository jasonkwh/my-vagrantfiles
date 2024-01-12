# my-vagrantfiles
Storage for my personal Virtual PCs vagrantfile

## Change VPC Provider

### VirtualBox
```bash
# or just set the env_var to empty
export VAGRANT_VPC='virtualbox'
```

### Hyper-V
Theoretically faster than VirtualBox (Type 1 Hypervisor > Type 2 Hypervisor), but comes with less feature, less vagrant boxes, and only support Windows!

```bash
export VAGRANT_VPC='hyperv'
```