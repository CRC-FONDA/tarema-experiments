# Tarema Paper - Experiments

This repository contains the experiment setup and instructions for the paper:

[**Tarema: Adaptive Resource Allocation for Scalable Scientific Workflows in Heterogeneous Clusters**](https://arxiv.org/abs/2111.05167)

### BibTeX
```bibtex
@INPROCEEDINGS{bader2021tarema,
  author={Bader, Jonathan and Thamsen, Lauritz and Kulagina, Svetlana and Will, Jonathan and Meyerhenke, Henning and Kao, Odej},
  booktitle={2021 IEEE International Conference on Big Data (Big Data)}, 
  title={Tarema: Adaptive Resource Allocation for Scalable Scientific Workflows in Heterogeneous Clusters}, 
  year={2021},
  publisher={IEEE},
  pages={65-75},
  doi={10.1109/BigData52589.2021.9671519}}
```

### Note

The [**nf-core repository**](https://github.com/nf-core/) contains a set of diverse workflows with several execution profiles and [**data sets**](https://github.com/nf-core/test-datasets). There you find the up-to-date workflows and input datasets.


### Setup

Each _exp\_{number}_ folder represents one experiment on with two cluster configurations, where the commands to run the experiments are at the end of the README files.
Run the first command for the cluster 5;5;5 and the second command for cluster 5;4;4;2

The folder _terraform_ contains the Infrastructure as Code files, needed to replicate the experiment setups. Please follow the README.md file in the terraform folder to specify used defined variables 

Make sure to install nextflow on the main machine running the experiments. This can be done by executing:

curl -s https://get.nextflow.io | bash 
