This repo demonstrates some bugs with Docker `COPY`'s `--exclude` option. 

Namely, the exclude pattern is ignored in subdirectories (moby/buildkit#5509) or when files are copied directly (moby/buildkit#5489). 

To illustrate the issue, run `docker build .`

A list of files copied from the docker context will be displayed. Compare these with the files that should be copied based on `Dockerfile`'s `COPY --exclude` command. 

