.PHONY: install build

# create the "drand-relay-twitter" binary and install it in $GOBIN
install:
	go install -ldflags "-X main.version=`git describe --tags` -X main.buildDate=`date -u +%d/%m/%Y@%H:%M:%S` -X main.gitCommit=`git rev-parse HEAD`"

# create the "drand-relay-twitter" binary in the current folder
build:
	go build -o drand-relay-twitter -mod=readonly -ldflags "-X main.version=`git describe --tags` -X main.buildDate=`date -u +%d/%m/%Y@%H:%M:%S` -X main.gitCommit=`git rev-parse HEAD`"
