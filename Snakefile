
configfile: "config.yaml"

rule all:
    input:
        expand("bigwigs/{sample}.bw",sample=config["samples"])

rule bam2bw:
    input:
        "data/{sample}.bam"
    output:
         "bigwigs/{sample}.bw"
    log:
        bw = "{sample}.bwlog"
    shell:
        "bamCoverage -b {input} --normalizeUsing {config[normMethod]} {config[bwParams]} -o {output} 2> {log.bw}"


