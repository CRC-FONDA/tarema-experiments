The workflow used in this experiment has been forked from https://github.com/nf-core/mag and can be found in the following repository:

https://github.com/jonathanbader/mag

We set the cpu to 2.0 and the memory to 5 GB for each task. Moreover, we removed functions that are not available in the Kubernetes environment.

Before executing the command, you need to make sure to download the needed data and transfer them to the nfs folder /mnt/data/<yourName>/mag.
One possibility is mounting the Google Filestore storage and then run:

sudo wget https://raw.githubusercontent.com/nf-core/test-datasets/mag/test_data/test_minigut_hg38host_R1.fastq.gz &
sudo wget https://raw.githubusercontent.com/nf-core/test-datasets/mag/test_data/test_minigut_hg38host_R2.fastq.gz &

Downloading the files to you local computer and copy them via ssh is also possible.

Then please execute the following script, which has to be in the same folder as the downloaded files:

chmod +x selfappend.sh  
./selfappend.sh

This increases data size of the test data and is only used for the test setup. Not executing and using the plain data is also possible but will result in much shorter runtimes.

Please also download the following files into /mnt/data/<yourName>/null/assets/data:

sudo wget ftp://ftp.ncbi.nlm.nih.gov/genomes/genbank/viral/Escherichia_virus_Lambda/all_assembly_versions/GCA_000840245.1_ViralProj14204/GCA_000840245.1_ViralProj14204_genomic.fna.gz
sudo wget ftp://ftp.ncbi.nlm.nih.gov/genomes/genbank/viral/Enterobacteria_phage_phiX174_sensu_lato/all_assembly_versions/GCA_002596845.1_ASM259684v1/GCA_002596845.1_ASM259684v1_genomic.fna.gz

Please run the following command to execute the workflow:
For Tarema and the basic schedulers:
5;5;5
time nextflow kuberun https://github.com/jonathanbader/mag -profile docker --input './mag/*_R{1,2}.fastq.gz' -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork:10
9;4;4;2
time nextflow kuberun https://github.com/jonathanbader/mag -profile docker --input './mag/*_R{1,2}.fastq.gz' -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork:11

For JSFN:
5;5;5
time nextflow kuberun https://github.com/jonathanbader/mag -profile docker --input './mag/*_R{1,2}.fastq.gz' -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork:6
9;4;4;2
time nextflow kuberun https://github.com/jonathanbader/mag -profile docker --input './mag/*_R{1,2}.fastq.gz' -v fileserver-claim:/mnt/data -pod-image was1docker/nf-fork:9