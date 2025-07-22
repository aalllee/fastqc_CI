rule fastqc:
    input:
        "data/sample.fastq.gz"
    output:
        html="results/sample_fastqc.html",
        zip="results/sample_fastqc.zip"
    conda:
        "envs/fastqc.yaml"
    shell:
        "fastqc {input} --outdir results"
