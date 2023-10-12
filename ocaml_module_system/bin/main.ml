module type Party = sig
  val comfortable : ModuleB.comfort
end

module type Sweets =
  sig
    module Cake : ModuleA.Baked
    module IceCream : ModuleB.Dessert
  end

module 
PartyCakes (P:Party) (Brownie:ModuleA.Baked) (Neopolitan:ModuleB.Dessert with module Bread = Brownie) :
(Sweets with module Cake = Brownie and module IceCream = Neopolitan) =
  struct

    module Cake = Brownie
    module IceCream = Neopolitan

    let circle_pillow = P.comfortable.ModuleB.round
    
    type balloon_colour = ModuleB.colour

  end
