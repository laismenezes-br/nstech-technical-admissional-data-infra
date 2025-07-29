repo-add:
	helm repo update;
	helm repo add bitnami https://charts.bitnami.com/bitnami;
	helm repo add duyet https://duyet.github.io/charts;

local-namespace:
	kubectl config use-context minikube;
	kubectl create namespace {namespace}

local-upgrade: repo-add local-namespace 

	helm upgrade --install spark bitnami/spark -f {path-values} -n {namespace} --debug;
	helm upgrade --install zeppelin duyet/zeppelin -f {path-values} -n {namespace} --debug;

local-clusterrolebinding:
	kubectl create clusterrolebinding zeppelin-cluster-admin-binding \
	--clusterrole=cluster-admin \
	--serviceaccount=spark-technical-test-data-platform:zeppelin