if [ -z "$1" ] ; then
  echo "Input Dockerfile"
  exit 1
fi

az acr login --name mohanacr89

docker build -f $1 -t mohanacr89.azurecr.io/$1 .
docker push mohanacr89.azurecr.io/$1

##if [ -z "$1" ] ; then echo Input Dockerfile ; exit 1 ;fi
##docker build -f $1 -t mohanacr89.azurecr.io/$1 .
##docker push mohanacr89.azurecr.io/$1
~
