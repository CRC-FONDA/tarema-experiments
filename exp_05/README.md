The workflow used in this experiment has been forked from https://github.com/nf-core/cageseq and can be found in the following repository:

https://github.com/jonathanbader/cageseq

We set the cpu to 2.0 and the memory to 5 GB for each task. Moreover, we removed functions that are not available in the Kubernetes environment.

Please run the following command to execute the workflow:

sudo wget https://github.com/nf-core/test-datasets/raw/cageseq/testdata/cage2.fastq.gz 
sudo wget https://github.com/nf-core/test-datasets/raw/cageseq/testdata/cage1.fastq.gz

Put the files into /mnt/data/<yourName>

Copy rrna-db-defaults.txt from the repository to the nfs into /mnt/data/<yourName>/null/assets

run the copy.sh script


For Tarema and the basic schedulers:
5;5;5
time nextflow kuberun https://github.com/jonathanbader/cageseq  -profile test_full -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork:12
9;4;4;2
time nextflow kuberun https://github.com/jonathanbader/cageseq  -profile test_full -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork:9

For SJFN:
5;5;5
time nextflow kuberun https://github.com/jonathanbader/cageseq  -profile test_full -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork:3
9;4;4;2
time nextflow kuberun https://github.com/jonathanbader/cageseq  -profile test_full -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork:36

