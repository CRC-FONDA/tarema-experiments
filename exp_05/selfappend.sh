#!/bin/bash
for filename in *.fastq.gz; do
    for ((i=0; i<=5; i++)); do
        cat "$filename" "$filename" > buff_$i.fastq.gz
        mv buff_$i.fastq.gz $filename
    done
done

cp cage1.fastq.gz cage3.fastq.gz
cp cage2.fastq.gz cage4.fastq.gz
cp cage2.fastq.gz cage5.fastq.gz
