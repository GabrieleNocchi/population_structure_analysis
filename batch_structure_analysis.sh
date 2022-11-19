for FILE in *.vcf.gz
do

# VCF to plink format for faststructure

/data/programs/plink2 --vcf $FILE --allow-extra-chr --threads 4 --make-bed --out $FILE\_plink_data

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

/data/programs/plink2 --vcf $FILE --pca 10 var-wts --allow-extra-chr --out $FILE\_pca

# Heterozygosity assessment

/data/programs/vcftools_0.1.13/bin/vcftools --gzvcf $FILE --het --out $FILE\_heterozygosity


done
