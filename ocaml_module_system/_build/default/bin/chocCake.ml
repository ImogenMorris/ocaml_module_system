
module type Baked =
  sig
    val cooked : bool
    type recipe = string list
  end

module type Level = 
  sig
    type choc_level = int
    val very_choc : choc_level
  end

module type Cocoa =
  sig
    type thing
    val choc : thing -> unit
    module Chocness : Level
  end

module Chocolatey : Cocoa =
  struct
    type thing = string
    let s = "is good with chocolate."
    let choc a = Printf.printf "%s %s" a s
    module Chocness =
      struct
          type choc_level = int
          let very_choc = (9 : choc_level)
      end
  end