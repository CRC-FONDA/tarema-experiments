The workflow used in this experiment has been forked from https://github.com/nf-core/viralrecon and can be found in the following repository:

https://github.com/jonathanbader/viralrecon 

We set the cpu to 2.0 and the memory to 5 GB for each task. Moreover, we removed functions that are not available in the Kubernetes environment. 

Please run the following command to execute the workflow:

For Tarema and the basic schedulers:
5;5;5
time nextflow kuberun https://github.com/jonathanbader/viralrecon  -profile test --skip_multiqc --skip_fastqc -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork:12
9;4;4;2
time nextflow kuberun https://github.com/jonathanbader/viralrecon  -profile test --skip_multiqc --skip_fastqc -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork:9

For JSFN:
5;5;5
time nextflow kuberun https://github.com/jonathanbader/viralrecon  -profile test --skip_multiqc --skip_fastqc -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork:3
9;4;4;2
time nextflow kuberun https://github.com/jonathanbader/viralrecon  -profile test --skip_multiqc --skip_fastqc -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork:6




