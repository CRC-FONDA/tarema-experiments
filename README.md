# Tarema Paper - Experiments

This repository contains the experiment setup, instructions and data for the paper:

**Tarema: Adaptive Task-Resource Matching for Large-Scale Scientific Workflows in Heterogeneous Cluster Infrastructures**

Each _exp\_{number}_ folder represents one experiment on with two cluster configurations, where the commands to run the experiments are at the end of the README files.
Run the first command for the cluster 5;5;5 and the second command for cluster 5;4;4;2

The folder _terraform_ contains the Infrastructure as Code files, needed to replicate the experiment setups. Please follow the README.md file in the terraform folder to specify used defined variables 

Make sure to install nextflow on the main machine running the experiments. This can be done by executing:

curl -s https://get.nextflow.io | bash 