module type Sofa = sig
  val comfortable : Nice.comfort
end

module type Party =
  sig
    module Cake : ChocCake.Baked
    module IceCream : Nice.Dessert

    val cushion : bool
  end

module 
SofaParty (S:Sofa) (Brownie:ChocCake.Baked) (MintChoc:Nice.Dessert with module Bread = Brownie) :
(Party) =
  struct

    module Cake = Brownie
    module IceCream = MintChoc

    let cushion = S.comfortable.round
    
    type balloon_colour = Nice.colour

  end
