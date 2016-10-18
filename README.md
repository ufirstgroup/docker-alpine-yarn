# docker-alpine-yarn

```bash
docker run -it --rm \
  -e "USER_ID=$(id -u)" \
  -e "GROUP_ID=$(id -g)" \
  -v $HOME:/homedir \
  -v `pwd -P`:/workdir  \
  ufirstgroup/alpine-yarn:0.15.1 yarn
```
