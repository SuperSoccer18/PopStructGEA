rule run_myscript:
    output:
        "data/output.vcf"
    shell:
        "./myscript.sh > {output}"
