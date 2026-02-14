In this assignment i have created the containers in custom bridge network.

1. I have created 2 custom bridge networks(dev,test).
2. I have created a container(dev-v1), in dev network.
   a). After creating i have logged into the container.
   b). I have taken the IP address of this container(ip addr show).
   c). Logged out of the container.
3. Now, i created a container(test-v1, in test network.
   a). After creating i have logged into the container.
   b). I have taken the IP address of the container(ip addr show).
   c). Now i checked the communication between(dev-v1 & test-v1) using ping<dev-v1 IP>.
   d). The result is "ping couldnt reach the dev-v1 container".
 4. Now i looged into the dev-v1 container and performed the ping<test-v1 IP>.
 5. Here the result is same as the before container.
