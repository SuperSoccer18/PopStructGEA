rule all:
    input:
        expand(f"{config['results']}/mig{{mig_rt}}_sel{{sel_coeff}}_rep{{rep}}.vcf",
               mig_rt=[0.05, 0.1],
               sel_coeff=[0.1],
               rep=range(1, 2))

rule run_slim_simulation:
    output:
        f"{config['results']}/mig{{mig_rt}}_sel{{sel_coeff}}_rep{{rep}}.vcf"
    log: f"{config['logs']}/mig{{mig_rt}}_sel{{sel_coeff}}_rep{{rep}}.vcf"
    conda: "envs/slim.yaml"
    shell:
        """
        slim -d mig_rt={wildcards.mig_rt} \
            -d sel_coeff={wildcards.sel_coeff} \
            ./scripts/GEA.slim > {output} 2> {log}
        """
