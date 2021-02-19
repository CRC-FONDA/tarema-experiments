The workflow used in this experiment has been forked from https://github.com/nf-core/viralrecon and can be found in the following repository:

https://github.com/jonathanbader/viralrecon 

We set the cpu to 2.0 and the memory to 5 GB for each task. Moreover, we removed functions that are not available in the Kubernetes environment. 

Please run the following command to execute the workflow:

time nextflow kuberun https://github.com/jonathanbader/viralrecon  -profile test --skip_multiqc --skip_fastqc -v fileserver-claim:/mnt/data -pod-image jonathanbader/tarema-nf-fork:1

time nextflow kuberun https://github.com/jonathanbader/viralrecon  -profile test --skip_multiqc --skip_fastqc -v fileserver-claim:/mnt/data -pod-image jonathanbader/tarema-nf-fork:2