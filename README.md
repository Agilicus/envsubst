# envsubst

Simple container to make [envsubst](https://www.gnu.org/software/gettext/manual/html_node/envsubst-Invocation.html) available for use as an init container.
available.

## Operation

This container takes arguments in the form input:output. `input` will be passed
through envsubst and redirected to `output`, making directories as needed.

`docker run --rm -it CONTAINER /etc/passwd:/dev/stdout`

So e.g.:

`docker run --rm -it CONTAINER /config/ifile:/etc/config/dir/ofile`
will take `ifile`, run through `envsubst`, `mkdir -p /etc/config/dir`,
and place the output in `/etc/config/dir/ofile`
