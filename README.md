[![](https://images.microbadger.com/badges/image/ufirstgroup/alpine-yarn.svg)](https://microbadger.com/images/ufirstgroup/alpine-yarn "Get your own image badge on microbadger.com")

# docker-alpine-yarn

```bash
docker run -it --rm \
  -e USER_ID=`id -u` \
  -e GROUP_ID=`id -g` \
  -v $HOME:/homedir \
  -v `pwd -P`:/workdir  \
  ufirstgroup/alpine-yarn:0.20.3 yarn
```
