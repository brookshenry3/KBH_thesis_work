#!/bin/sh
# properties = {"type": "single", "rule": "call_meth", "local": false, "input": ["output/mapped/FAF01169-4245879798_Multi_SQK-LSK108_WA01.sorted.bam", "output/mapped/FAF01169-4245879798_Multi_SQK-LSK108_WA01.sorted.bam.bai", "GCF_000001405.26_GRCh38_genomic.fna", "data/FAF01169-4245879798_Multi_SQK-LSK108_WA01.merged.fq", "data/FAF01169-4245879798_Multi_SQK-LSK108_WA01.merged.fq.index", "data/FAF01169-4245879798_Multi_SQK-LSK108_WA01.merged.fq.index.fai", "data/FAF01169-4245879798_Multi_SQK-LSK108_WA01.merged.fq.index.gzi", "data/FAF01169-4245879798_Multi_SQK-LSK108_WA01.merged.fq.index.readdb"], "output": ["output/meth/FAF01169-4245879798_Multi_SQK-LSK108_WA01.meth_calls.tsv"], "wildcards": {"sample": "FAF01169-4245879798_Multi_SQK-LSK108_WA01"}, "params": {"jobname": "call_meth", "runtime": "24:00", "memusage": "10000", "slots": "10", "misc": " "}, "log": [], "threads": 1, "resources": {}, "jobid": 92, "cluster": {}}
 cd /icgc/dkfzlsdf/analysis/C010/brooks/meth_calling_pipeline && \
/home/k001y/.conda/envs/pycometh/bin/python \
-m snakemake output/meth/FAF01169-4245879798_Multi_SQK-LSK108_WA01.meth_calls.tsv --snakefile /icgc/dkfzlsdf/analysis/C010/brooks/meth_calling_pipeline/Snakefile \
--force -j --keep-target-files --keep-remote \
--wait-for-files /icgc/dkfzlsdf/analysis/C010/brooks/meth_calling_pipeline/.snakemake/tmp.vrjism4n output/mapped/FAF01169-4245879798_Multi_SQK-LSK108_WA01.sorted.bam output/mapped/FAF01169-4245879798_Multi_SQK-LSK108_WA01.sorted.bam.bai GCF_000001405.26_GRCh38_genomic.fna data/FAF01169-4245879798_Multi_SQK-LSK108_WA01.merged.fq data/FAF01169-4245879798_Multi_SQK-LSK108_WA01.merged.fq.index data/FAF01169-4245879798_Multi_SQK-LSK108_WA01.merged.fq.index.fai data/FAF01169-4245879798_Multi_SQK-LSK108_WA01.merged.fq.index.gzi data/FAF01169-4245879798_Multi_SQK-LSK108_WA01.merged.fq.index.readdb --latency-wait 120 \
 --attempt 1 --force-use-threads \
--wrapper-prefix https://github.com/snakemake/snakemake-wrappers/raw/ \
   --allowed-rules call_meth --nocolor --notemp --no-hooks --nolock \
--mode 2  && touch /icgc/dkfzlsdf/analysis/C010/brooks/meth_calling_pipeline/.snakemake/tmp.vrjism4n/92.jobfinished || (touch /icgc/dkfzlsdf/analysis/C010/brooks/meth_calling_pipeline/.snakemake/tmp.vrjism4n/92.jobfailed; exit 1)

