'''
docker build -t cobol .

docker run -it -v local-path:/source cobol /bin/bash

cobc -x hello.cbl
'''
