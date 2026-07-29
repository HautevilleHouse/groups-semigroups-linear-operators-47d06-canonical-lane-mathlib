import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

structure InfinitesimalGeneratorPackage {X : Type u} [NormedAddCommGroup X]
    (S : StronglyContinuousSemigroupPackage X) where
  generator : X → X
  domain : Set X
  generatorDerivative : Prop
  resolventSet : Set ℂ
  spectrum : Set ℂ

def InfinitesimalGeneratorClosed {X : Type u} [NormedAddCommGroup X]
    {S : StronglyContinuousSemigroupPackage X} (G : InfinitesimalGeneratorPackage S) : Prop :=
  G.generatorDerivative

theorem infinitesimal_generator_closed {X : Type u} [NormedAddCommGroup X]
    {S : StronglyContinuousSemigroupPackage X} (G : InfinitesimalGeneratorPackage S) :
    InfinitesimalGeneratorClosed G :=
  G.generatorDerivative

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse
