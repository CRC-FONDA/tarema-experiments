The workflow used in this experiment has been forked from https://github.com/nf-core/chipseq and can be found in the following repository:

https://github.com/jonathanbader/chipseq

We set the cpu to 2.0 and the memory to 5 GB for each task. Moreover, we removed functions that are not available in the Kubernetes environment.

Download the following files to the destination nfs 

https://github.com/jonathanbader/chipseq/blob/master/assets/bamtools_filter_se.json
https://github.com/jonathanbader/chipseq/blob/master/assets/bamtools_filter_pe.json

Downloading the files to you local computer and copy them via ssh is also possible.

Please run the following command to execute the workflow:

time nextflow kuberun https://github.com/jonathanbader/chipseq -profile docker,test  -v fileserver-claim:/mnt/data -pod-image jonathanbader/tarema-nf-fork:1

time nextflow kuberun https://github.com/jonathanbader/chipseq -profile docker,test  -v fileserver-claim:/mnt/data -pod-image jonathanbader/tarema-nf-fork:2