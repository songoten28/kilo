set -e
rm -rf ./bin
make OS=linux ARCH=amd64

TAG=1.3.0

docker build -t cicdclouddata/kilo:$TAG . --platform=linux/amd64
docker push cicdclouddata/kilo:$TAG

#curl -sfL https://get.k3s.io | K3S_URL=https://52.221.197.90:6443 K3S_TOKEN=mtech1234 sh -s - --node-name vinhtn