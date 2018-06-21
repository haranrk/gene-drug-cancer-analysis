#!/bin/sh
#$ -S /bin/sh
#$ -o /sshare3/home/haranrk/gene-drug-cancer-analysis/gene-drug-cancer-analysis/shirokane_runs/RNAi_Nov_DEM/3#$ -e /sshare3/home/haranrk/gene-drug-cancer-analysis/gene-drug-cancer-analysis/shirokane_runs/RNAi_Nov_DEM/3#$ -M haranrk@hgc.jp
#$ -m bae
#$ -N depmap
#$ -cwd -j y -l ljob -l s_vmem=12G -l mem_req=12G
echo "START: " `date  "+%Y%m%d-%H%M%S"`
start_time=`date +%s`
module load python/3.6.4
python /sshare3/home/haranrk/gene-drug-cancer-analysis/gene-drug-cancer-analysis/run-nmf.py -v RNAi_Nov_DEM 3
echo "DONE: " `date  "+%Y%m%d-%H%M%S"`
end_time=`date +%s`
duration=$((end_time - start_time))
echo "TIME: " $duration