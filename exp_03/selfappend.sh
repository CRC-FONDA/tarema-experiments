cat test_minigut_hg38host_R1.fastq.gz test_minigut_hg38host_R1.fastq.gz > test_minigut_hg39host_R1.fastq.gz
cat test_minigut_hg38host_R2.fastq.gz test_minigut_hg38host_R2.fastq.gz > test_minigut_hg39host_R2.fastq.gz

cp test_minigut_hg39host_R1.fastq.gz test_minigut_hg37host_R1.fastq.gz
cp test_minigut_hg39host_R2.fastq.gz test_minigut_hg37host_R2.fastq.gz
cp test_minigut_hg39host_R1.fastq.gz test_minigut_hg36host_R1.fastq.gz
cp test_minigut_hg39host_R2.fastq.gz test_minigut_hg36host_R2.fastq.gz
cp test_minigut_hg39host_R1.fastq.gz test_minigut_hg35host_R1.fastq.gz
cp test_minigut_hg39host_R2.fastq.gz test_minigut_hg35host_R2.fastq.gz

rm test_minigut_hg38host_R1.fastq.gz
rm test_minigut_hg38host_R2.fastq.gz