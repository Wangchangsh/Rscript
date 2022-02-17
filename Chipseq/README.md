# Chipseq workflow

+ Date: 2020/09/14 15:06:57
+ Author: wpf
+ email: changshengw6@gmail.com

## 初始目录（tree）

raw_seq/samplename_case_1.fq.gz

raw_seq/samplename_control_1.fq.gz

ref/genome.fa

ref/genome.gff3

snakefile

chipseq.yaml

chipenv.yaml

cluster_config.yaml

snakemake.lsf

将文件以以上目录的方式保存，并将样本名重命名为samplename_case_1.fq.gz。

水稻参考基因组和注释信息使用[MSU 7.0](http://rice.plantbiology.msu.edu/pub/data/Eukaryotic_Projects/o_sativa/annotation_dbs/pseudomolecules/version_7.0/all.dir/),all.con和all.gff3下载改名为genome.fa和genome.gff3。

## 软件预装并加载入环境变量

使用软件为：

+ snakemake
+ fastp
+ bowtie2
+ samtools
+ picard
+ MACS2

**建议使用conda**，上述软件conda均已集成

## 修改yaml配置文件

chipseq.yaml

+ 修改control的关键词
+ 修改case的关键词
+ 修改SAMPLE的关键词
+ 修改cpu
  
cluster_config.yaml

+ 修改cpu
+ 修改queue

**cpu**与**queue**默认不需要修改

## CMD

```shell
# 复制conda环境，安装相关软件，在交互模式下运行
bsub -q interactive -Is bash
conda env create -f chipenv.yaml
conda activate chip
# 构建比对索引
mkdir -p ref/bowtie2
bowtie2-build ref/genome.fa ref/bowtie2/genome
# 开始运行
bsub < snakemake.lsf
```

## 结果

+ bam/sample.rmdup.bam可用于IGV查看

+ Cpeaks文件下为peak和summit文件，具体文件格式google下MACS2输出文件

+ bW下为标准化后的bigwig文件，用于IGV查看
  