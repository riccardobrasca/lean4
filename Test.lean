import Lean

namespace List

variable {α : Type u}

theorem deriving_lawful_beq_helper_nd' {x y : α} [BEq α] [ReflBEq α]
    {P : Prop}
    (inst : (x == y) = true → x = y)
    (k : x = y → P) :
    (x == y) = true → P := fun h ↦ k (inst h)


#print axioms deriving_lawful_beq_helper_nd'

end List
