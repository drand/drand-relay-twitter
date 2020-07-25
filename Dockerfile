FROM golang:1.14.2-buster

# Install deps
RUN apt-get update && apt-get install -y

WORKDIR /drand-relay-twitter

COPY go.mod go.sum ./
RUN go mod download

# Copy the source from the current directory
# to the Working Directory inside the container
COPY . .

RUN go build -o drand-relay-twitter .

CMD ["./drand-relay-twitter", "run", "--hash", "8990e7a9aaed2ffed73dbd7092123d6f289930540d7651336225dc172e51b2ce", "--url", "http://api.drand.sh", "--url", "http://api2.drand.sh", "--url", "http://api3.drand.sh", "--url", "https://drand.cloudflare.com"]
