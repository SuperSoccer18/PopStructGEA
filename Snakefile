rule all:
    input:
        expand("results/mig{mig_rt}_sel{sel_coeff}_rep{rep}.vcf",
               mig_rt=[0.05, 0.1],
               sel_coeff=[0.1],
               rep=range(1, 2))

rule run_slim_simulation:
    output:
        "results/mig{mig_rt}_sel{sel_coeff}_rep{rep}.vcf"
    shell:
        "./scripts/myscript.sh {wildcards.mig_rt} {wildcards.sel_coeff} > {output}"