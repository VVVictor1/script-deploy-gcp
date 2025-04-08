# Set variables
VM_NAME="webapp-vm"
ZONE="europe-west1-c"
MACHINE_TYPE="e2-standard-2"
IMAGE_FAMILY="ubuntu-2004-lts"
IMAGE_PROJECT="ubuntu-os-cloud"
DISK_SIZE="250"
STATIC_IP_NAME="webapp-static-ip"
FIREWALL_NAME="webapp-firewall"
# Reserve a static IP
gcloud compute addresses create $STATIC_IP_NAME --region=europe-west1
# Create a firewall rule to allow HTTP and SSH
gcloud compute firewall-rules create $FIREWALL_NAME \
  --allow=tcp:22,tcp:80 \
  --target-tags=http-server \
  --description="Allow SSH and HTTP"
# Create the VM
gcloud compute instances create $VM_NAME \
  --zone=$ZONE \
  --machine-type=$MACHINE_TYPE \
  --image-family=$IMAGE_FAMILY \
  --image-project=$IMAGE_PROJECT \
  --boot-disk-size=${DISK_SIZE}GB \
  --tags=http-server \
  --address=$STATIC_IP_NAME