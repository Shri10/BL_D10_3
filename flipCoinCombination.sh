# UC1: Flipping a coin to display Heads or Tails
flip_coin() {
  if [ $((RANDOM % 2)) -eq 0 ]; then
    echo "H"
  else
    echo "T"
  fi
}