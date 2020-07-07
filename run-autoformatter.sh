file_or_folder=$1
pwd=$(pwd)

docker run -v ${pwd}/${file_or_folder}:/opt/program/${file_or_folder} fission-python-autoformatter:latest ${file_or_folder}
