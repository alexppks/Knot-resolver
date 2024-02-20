Description:
The following task, creates a docker container of Knot Resolver with networking in host mode. Knot Resolver has been configured to return NXDOMAIN when querying for 'google.com'

Commands and guidelines:
Docker image build -> "docker build -t <image name>" .
Run the container based on the "image name" which was previously created and add the container to "host" network mode -> docker run -d --name <container name> --network="host" <image name>
Open a shell inside the container -> docker exec -it <container name> sh
While inside the container test by querying 'google.com' -> dig A google.com
