
sum=0
if [ $# -lt 2 ]
then
	echo "Enter atleast 2 numbers"
	exit 1
fi


for arg in "$@"
do
	sum=$((sum + arg))
done

echo "Sum of numbers= $sum"
