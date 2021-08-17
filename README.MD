# Uncomplicating Packer
Create template on VMWare

### Run container packer
```docker run -it -v $PWD:/app -w /app --entrypoint "" hashicorp/packer:light sh```

### Install Ansible container

```apk -U add ansible```

### Adicionado provisioner ansible e shell
- Instalando o Docker
- Install k8s

### Running project
```packer build app.json.pkr.hc```

### Debugging Packer Builds
- ```packer build -debug```
- ```PACKER_LOG=1 packer build```
- Debug mode informs the builders that they should output debugging information.
- Packer has detailed logs which can be enabled
