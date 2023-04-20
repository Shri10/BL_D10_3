# UC2: Loop through multiple times and store the Singlet Combination in a dictionary
declare -A singlet_count=( ["H"]=0 ["T"]=0 )
num_flips=100

for (( i=0; i<num_flips; i++ )); do
  flip=$(flip_coin)
  singlet_count[$flip]=$((singlet_count[$flip] + 1))
done

# Calculate and display the percentage of the Singlet Combination
echo "UC2: Singlet Percentage"
for key in "${!singlet_count[@]}"; do
  percentage=$(echo "scale=2; (${singlet_count[$key]} / $num_flips) * 100" | bc)
  echo "$key: $percentage%"
done