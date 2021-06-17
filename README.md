Maciej Bliziński's home page
============================

Running hugo
------------

Installing hugo from Debian works well enough.

For building locally:

* Requires [golang](http://golang.org/); if you're installing hugo from github,
  it is likely going to be the latest version of Go.
* Installing hugo

        mkdir -p ~/src/go
        export GOPATH=~/src/go
        export GOLANG=~/src/go
        go get -u -v github.com/spf13/hugo
        alias hugo='~/src/go/bin/hugo'

Dependencies
------------

Skeleton for CSS styles: http://getskeleton.com/

Updating and testing
--------------------

        hugo -D -F server

  * -D for drafts
  * -F for future content

* Creating a new page or post:

        hugo new post/<name>/index.md

* Testing and deploying

        ./util/deploy.sh test
        ./util/deploy.sh deploy
