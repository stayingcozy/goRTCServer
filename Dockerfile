FROM golang:1.21
WORKDIR /gortcserver

# Copy files over
COPY *.go ./

# Build it
RUN go build .

#EXPOSE <PORT>

# Serve it
CMD ["./main"]

# docker build -t username/containerName:1.0 .
# docker run -port LOCALport:CONTAINERport username/containerName

# Volumes
# docker volume create shared-stuff
# multiple containers can mount this volume
# docker run \
# --mount source=shared-stuff,target=/stuff

# Google Cloud
# gcloud config set project <PROJECT_ID>
# gcloud builds submit --tag gcr.io/PROJECT_ID/containerName
# Probably not cloud run as each server needs to be tied to each user