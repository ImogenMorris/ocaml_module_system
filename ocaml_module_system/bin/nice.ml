type comfort = {
  round : bool ;
  fluffy : bool ;
}

let roundness x = x.round

type colour = {
  blue : bool ;
  red : bool ;
}

module type Dessert =
  sig
    module Bread : ChocCake.Baked
    val sweet : bool
    type quantity = int
  end