## metric
it is quite easy to use the docker to collect information of system , or docker info .when up set up the metric container ,
then use the docker exec command to enter the running container, then use the below command to set up the dashboard of kibana

```
metricbeat setup --strict.perms=false
```