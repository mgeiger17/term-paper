// Here all used variables in the paper are defined with speaking names,
// to avoid inconsistencies and speaking names are also helpful

#let var_pi = $pi$
#let physicalSignal(i: none) = {
  if i != none [ $x_#i (t)$ ] else [ $x(t)$ ]
}

#let digitalSignal(i: none) = {
  if i != none [ $x_#i [n]$ ] else [ $x[n]$ ]
}

#let timeInterval = $T_s$
#let samplingRate = $f_s$
// #let mixtureSignal = $y [n]$
#let mixtureSignal(discrete: none) = {
  if discrete == true [ $y [n]$ ] else [ $y(n)$ ]
}
#let amountSignalsWithinMixture = $N$
