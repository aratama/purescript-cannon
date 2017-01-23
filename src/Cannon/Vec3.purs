module Graphics.Cannon.Vec3 where

import Graphics.Cannon.Type

import Control.Monad.Eff (Eff)

foreign import createVec3 :: ∀eff . Number → Number → Number → Eff (cannon :: CANNON | eff) Vec3

foreign import runVec3 :: ∀eff . Vec3 → Eff (cannon :: CANNON | eff) { x :: Number, y :: Number, z :: Number }

foreign import toVec3 :: ∀eff . { x :: Number, y :: Number, z :: Number } → Eff (cannon :: CANNON | eff) Vec3

foreign import length :: ∀eff . Vec3 → Eff (cannon :: CANNON | eff) Number

foreign import unit :: ∀eff . Vec3 → Eff (cannon :: CANNON | eff) Vec3

foreign import scale :: ∀eff . Number → Vec3 → Eff (cannon :: CANNON | eff) Vec3