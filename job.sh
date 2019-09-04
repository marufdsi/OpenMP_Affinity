#!/bin/bash

export KMP_AFFINITY=granularity=fine,balanced,0,0
#export KMP_AFFINITY=granularity=fine,compact,0,0
#export KMP_AFFINITY=granularity=fine,scatter,0,0
mpirun -n 1 ./affinity_carl | sort -k4n -k8n
