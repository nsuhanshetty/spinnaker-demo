FROM golang

ADD . /go/src/github.com/nsuhanshetty/spinnaker-demo

RUN go install github.com/nsuhanshetty/spinnaker-demo

ADD ./content /content

ENTRYPOINT /go/bin/k8s-demo
