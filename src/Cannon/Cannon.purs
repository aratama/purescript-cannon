module Graphics.Cannon (
    module Graphics.Cannon.Type,
    module Graphics.Cannon.Vec3,
    module Graphics.Cannon.Body,
    module Graphics.Cannon.World,
    module Graphics.Cannon.RaycastResult,
    createSphere, createBox, createCylinder, createPlane, createMaterial
) where

import Control.Monad.Eff (Eff)
import Graphics.Cannon.Type
import Graphics.Cannon.Vec3
import Graphics.Cannon.Body
import Graphics.Cannon.World
import Graphics.Cannon.RaycastResult

foreign import createSphere :: ∀eff . Number → Eff (cannon :: CANNON | eff) Shape

foreign import createBox :: ∀eff . Vec3 → Eff (cannon :: CANNON | eff) Shape

foreign import createCylinder :: ∀eff . Number → Number → Number → Int → Eff (cannon :: CANNON | eff) Shape

foreign import createPlane :: ∀eff . Eff (cannon :: CANNON | eff) Shape

foreign import createMaterial :: ∀eff . MaterialOption → Eff (cannon :: CANNON | eff) Material

