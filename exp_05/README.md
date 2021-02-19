The workflow used in this experiment has been forked from https://github.com/nf-core/cageseq and can be found in the following repository:

https://github.com/jonathanbader/cageseq

We set the cpu to 2.0 and the memory to 5 GB for each task. Moreover, we removed functions that are not available in the Kubernetes environment.

Please run the following command to execute the workflow:

sudo wget https://github.com/nf-core/test-datasets/raw/cageseq/testdata/cage2.fastq.gz 
sudo wget https://github.com/nf-core/test-datasets/raw/cageseq/testdata/cage1.fastq.gz

Copy rrna-db-defaults.txt from the repository to the nfs

run the copy.sh script



time nextflow kuberun https://github.com/jonathanbader/cageseq  -profile test_full -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork-test:39

time nextflow kuberun https://github.com/jonathanbader/cageseq  -profile test_full -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork-test:39

