docker build -t fission-python-autoformatter:latest .
docker images fission-python-autoformatter --filter "dangling=true" | awk '{print $3}' | xargs docker rmi -f
