# RNAseq workflow

+ Date: 2020/09/14 15:07:32
+ Author: wpf
+ email: changshengw6@gmail.com
  
## 初始目录（tree)

raw_seq/samplename-Rep_1.fq.gz

ref/genome.fa

ref/genome.gtf

snakefile

rnaseq.yaml

rnaenv.yaml

rna_cluster_config.yaml

snakemake.lsf

将文件以以上目录的方式保存，并将样本名重命名为samplename-Rep_1.fq.gz。

水稻参考基因组和注释信息使用[MSU 7.0](http://rice.plantbiology.msu.edu/pub/data/Eukaryotic_Projects/o_sativa/annotation_dbs/pseudomolecules/version_7.0/all.dir/),all.con和all.gff3下载改名为genome.fa和genome.gff3，以Cufflinks的组件gffread将gff3转换为gtf。

## 软件预装并加载入环境变量

使用软件为：

+ snakemake
+ fastp
+ hisat2
+ samtools
+ featureCounts

**建议使用conda**，上述软件conda均已集成

## 修改yaml配置文件

rnaseq.yaml

+ 修改SAMPLENAME
+ 修改Rep
+ 修改cpu

rna_cluster_config.yaml

+ 修改cpu
+ 修改queue
  
**cpu**与**queue**默认不需要修改

## CMD

```shell
# 复制conda环境，安装相关软件，在交互模式下运行
bsub -q interactive -Is bash
conda env create -f rnaenv.yaml
conda activate rna
# gff3转换为gtf
module load Cufflinks/2.2.1
gffread ref/genome.gff3 -T -o ref/genome.gtf
# 构建比对索引
mkdir -p ref/hisat2
extract_exons.py ref/genome.gtf > ref/hisat2/genome.exon
extract_splice_sites.py ref/genome.gtf > ref/hisat2/genome.ss
hisat2-build -p 8 --ss ref/hisat2/genome.ss --exon ref/hisat2/genome.exon ref/genome.fa ref/hisat2/genome_tran 
# 开始运行
bsub < snakemake.lsf
```
