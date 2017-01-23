module Graphics.Cannon.World  where

import Control.Monad.Eff (Eff)
import Prelude (Unit)

import Graphics.Cannon.Type

foreign import createWorld :: ∀eff. Eff (cannon :: CANNON | eff) World

foreign import addBody :: ∀eff . Body → World → Eff (cannon :: CANNON | eff) Unit

foreign import removeBody :: ∀eff . Body → World → Eff (cannon :: CANNON | eff) Unit

foreign import step :: ∀eff . Number → Number → Int → World → Eff (cannon :: CANNON | eff) Unit

foreign import setGravity :: ∀eff . Vec3 → World → Eff (cannon :: CANNON | eff) Unit

foreign import getBodies :: ∀eff . World → Eff (cannon :: CANNON | eff) (Array Body)

foreign import raycastClosest :: ∀eff . Vec3 → Vec3 → RaycastOptions → RaycastResult → World → Eff (cannon :: CANNON | eff) Boolean


