source /root/.profile
docker load --input $(nix-build --cores 4 ../default.nix --show-trace | grep tar)
docker push  docker-registry.intr/webservices/apache2-php71:master
