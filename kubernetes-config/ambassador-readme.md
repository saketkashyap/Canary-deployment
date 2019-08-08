===========================AMBASSADOR CONFIGURATIONS======================================
1) Ambassador can be used as Ingress controller and Load balancer in Kubernetes environment.
2) The main advantage of using ambassador as Ingress controller is that it
   provides intelligent routing which is perfect for canary testing and roll out 
   of applications in different environments.
3) It is not K8 native but works as K8 native.
4) Steps to implement Canary testing using Ambassador
  4.1) Deploy version v1 of your application
  4.2) Create a service for your v1 application. Make sure service is of Type ClusterIP
  4.3) Deploy version v2 of your application
  4.4) Create a service for your v2 application. Make sure service is of Type ClusterIP
  4.5) Create an Ambassador service of type LoadBalancer which will also have mapping for
       intelligent routing. Check  canary-service-ambasador.yaml in the project.
       - It creates a mapping of request URI based on prefix and headers and routes request to 
         different services.
  4.6)It’s worth noting that the routing is conducted by a “sidecar” proxy,
       which in this case is the Envoy proxy.     
  4.7) Ambassador related K8 configs then need to be applied to Kubernetes
      4.7.1) if rbac is enabled, use this command
        kubectl apply -f https://getambassador.io/yaml/ambassador/ambassador-rbac.yaml
       
       4.7.2) if rbac is not enabled, use this command
        kubectl apply -f https://getambassador.io/yaml/ambassador/ambassador-no-rbac.yaml
  4.8) Note that the mappings provided in ambassador service can also be kept separetly 
       in a different configuration file.           
              
  