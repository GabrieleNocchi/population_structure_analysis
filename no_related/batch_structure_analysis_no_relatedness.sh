for FILE in *.vcf.gz
do

# MAF 0.05 filter to analyse structure

/data/programs/vcftools_0.1.13/bin/vcftools --gzvcf $FILE --max-missing 0.7 --maf 0.05 --minQ 30 --minGQ 20 --minDP 5 --max-alleles 2 --recode --recode-INFO-all

# Need to set SNPs IDs
/data/programs/bcftools-1.9/bcftools annotate --set-id +'%CHROM\_%POS\_%REF\_%FIRST_ALT' out.recode.vcf --threads 4 -Ov -o ID.vcf

# LD pruning as highly linked SNPs can bias the structure analysis
/data/programs/plink --vcf ID.vcf --allow-extra-chr --indep-pairphase 50 5 0.4 --double-id --out ./pruned

# make a VCF only with unlinked SNPs (LD r2 max 0.4)
/data/programs/plink --vcf ID.vcf --allow-extra-chr --extract pruned.prune.in --double-id --recode vcf --out pruned



# VCF to plink format (bed, bim, fam)

/data/programs/plink2 --vcf pruned.vcf --allow-extra-chr --make-bed --out $FILE\_plink_data

# relatedness
/data/programs/plink --bfile $FILE\_plink_data --genome --allow-extra-chr

Rscript filterRelatedness.R

/data/programs/bcftools-1.9/bcftools view pruned.vcf -S ^to_remove.txt -Ov -o no_relatedness.vcf

#VCF to plink format again for faststructure
/data/programs/plink2 --vcf no_relatedness.vcf --allow-extra-chr --make-bed --out $FILE\_plink_data

# faststructure K from 1 to 10

python /lu213/gabriele.nocchi/fastStructure-master/structure.py -K 1 --input=$FILE\_plink_data --output=$FILE\_fast_output --full --seed=100 
python /lu213/gabriele.nocchi/fastStructure-master/structure.py -K 2 --input=$FILE\_plink_data --output=$FILE\_fast_output --full --seed=100 
python /lu213/gabriele.nocchi/fastStructure-master/structure.py -K 3 --input=$FILE\_plink_data --output=$FILE\_fast_output --full --seed=100 
python /lu213/gabriele.nocchi/fastStructure-master/structure.py -K 4 --input=$FILE\_plink_data --output=$FILE\_fast_output --full --seed=100 
python /lu213/gabriele.nocchi/fastStructure-master/structure.py -K 5 --input=$FILE\_plink_data --output=$FILE\_fast_output --full --seed=100 
python /lu213/gabriele.nocchi/fastStructure-master/structure.py -K 6 --input=$FILE\_plink_data --output=$FILE\_fast_output --full --seed=100 
python /lu213/gabriele.nocchi/fastStructure-master/structure.py -K 7 --input=$FILE\_plink_data --output=$FILE\_fast_output --full --seed=100 
python /lu213/gabriele.nocchi/fastStructure-master/structure.py -K 8 --input=$FILE\_plink_data --output=$FILE\_fast_output --full --seed=100 
python /lu213/gabriele.nocchi/fastStructure-master/structure.py -K 9 --input=$FILE\_plink_data --output=$FILE\_fast_output --full --seed=100 
python /lu213/gabriele.nocchi/fastStructure-master/structure.py -K 10 --input=$FILE\_plink_data --output=$FILE\_fast_output --full --seed=100


# quick and dirty PCA

/data/programs/plink2 --vcf no_relatedness.vcf --pca 10 var-wts --allow-extra-chr --out $FILE\_pca

# Heterozygosity assessment

/data/programs/vcftools_0.1.13/bin/vcftools --vcf no_relatedness.vcf --het --out $FILE\_heterozygosity


rm *.vcf
rm out.log
done
