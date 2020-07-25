.PHONY: install build

# create the "drand-relay-twitter" binary and install it in $GOBIN
install:
	go install -ldflags "-X github.com/drand/drand-relay-twitter.version=`git describe --tags` -X github.com/drand/drand-relay-twitter.buildDate=`date -u +%d/%m/%Y@%H:%M:%S` -X github.com/drand/drand-relay-twitter.gitCommit=`git rev-parse HEAD`"

# create the "drand-relay-twitter" binary in the current folder
build:
	go build -o drand-relay-twitter -mod=readonly -ldflags "-X github.com/drand/drand-relay-twitter.version=`git describe --tags` -X github.com/drand/drand-relay-twitter.buildDate=`date -u +%d/%m/%Y@%H:%M:%S` -X github.com/drand/drand-relay-twitter.gitCommit=`git rev-parse HEAD`"
