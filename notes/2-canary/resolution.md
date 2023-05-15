# Canary deployment
After Canary Deployment:
![Alt text](sre3-step2-canary-after-running.png)
1. Created `canary.sh` script which deploys canary version 2.

2. Service in [repo](../../../starter/apps/canary/canary-svc.yml) targeted only version v1. Needed to remove label selector for version v2, so that all version were targeted.


3. output of `kubectl get pods --all-namespaces`
![All Pods](kubectl_get_pods.png)
