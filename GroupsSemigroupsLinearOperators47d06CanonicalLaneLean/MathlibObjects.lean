import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Dynamics.Semigroup

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

structure CoSemigroupAdmittedObject where
  space : Type u
  semigroup : Semigroup space
  operatorFamily : space → (space → space)
  generationClosed : Prop
  conclusion : generationClosed

def CoSemigroupWitnessClosed (O : CoSemigroupAdmittedObject) : Prop :=
  O.generationClosed

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse
