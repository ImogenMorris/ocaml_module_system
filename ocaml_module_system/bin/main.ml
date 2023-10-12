module type Party = sig
  val comfortable : Nice.comfort
end

module type Sweets =
  sig
    module Cake : ChocCake.Baked
    module IceCream : Nice.Dessert
  end

module 
PartyCakes (P:Party) (Brownie:ChocCake.Baked) (MintChoc:Nice.Dessert with module Bread = Brownie) :
(Sweets with module Cake = Brownie and module IceCream = MintChoc) =
  struct

    module Cake = Brownie
    module IceCream = MintChoc

    let circle_pillow = P.comfortable.Nice.round
    
    type balloon_colour = Nice.colour

  end
