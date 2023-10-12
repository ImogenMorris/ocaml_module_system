type comfort = {
  round : bool ;
  fluffy : bool ;
}

type colour = {
  blue : bool ;
  red : bool ;
}

module type Dessert =
  sig
    module Bread : ModuleA.Baked
    val sweet : bool
    type quantity = int
  end