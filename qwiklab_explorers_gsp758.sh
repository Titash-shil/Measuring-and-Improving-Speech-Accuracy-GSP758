gcloud services enable notebooks.googleapis.com

gcloud services enable aiplatform.googleapis.com

sleep 15

export NOTEBOOK_NAME="qwiklab-jupyter"
export MACHINE_TYPE="e2-standard-2"

gcloud notebooks instances create $NOTEBOOK_NAME \
  --location=$ZONE \
  --vm-image-project=deeplearning-platform-release \
  --vm-image-family=tf-latest-cpu
