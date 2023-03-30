#bin/bash

#     ____ _                              
#    / ___| | ___  __ _ _ __  _   _ _ __  
#   | |   | |/ _ \/ _` | '_ \| | | | '_ \ 
#   | |___| |  __/ (_| | | | | |_| | |_) |
#    \____|_|\___|\__,_|_| |_|\__,_| .__/ 
#                                  |_|    

# Delete Apis
kubectl delete -f ./apis

# Delete Dapr Components
kubectl delete -f ./dapr-components

# Delete Databases
kubectl delete -f ./dbs

# Delete Ingress
kubectl delete -f ./ingress

# Delete Tracing
kubectl delete -f ./tracing

# Delete Web App
kubectl delete -f ./web-app

# Uninstall Ingress-Nginx
helm uninstall ingress-nginx

# Uninstall Dapr
dapr uninstall -k