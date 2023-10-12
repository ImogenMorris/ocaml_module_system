type comfort = {
  round : bool ;
  fluffy : bool ;
}

type ccolour = {
  blue : bool ;
  red : bool ;
}

module type Dessert =
  sig
    module Bread : ModuleA.Baked
    val sweet : bool
    type quantity = int
  end