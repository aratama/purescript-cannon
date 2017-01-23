module Graphics.Cannon.RaycastResult (DefaultRaycastOptions, createRaycastResult, defaultRaycastOptions, body) where

import Control.Monad.Eff (Eff)
import Prelude (negate)
import Graphics.Cannon.Type (RaycastResult, Body, CANNON)

foreign import createRaycastResult :: ∀eff. Eff (cannon :: CANNON | eff) RaycastResult

foreign import body :: ∀eff. RaycastResult → Eff (cannon :: CANNON | eff) Body

type DefaultRaycastOptions = {
    collisionFilterMask :: Int,
    collisionFilterGroup :: Int,
    skipBackfaces :: Boolean,
    checkCollisionResponse :: Boolean
}

defaultRaycastOptions :: DefaultRaycastOptions
defaultRaycastOptions = {
    collisionFilterMask: negate 1,
    collisionFilterGroup: negate 1,
    skipBackfaces: false,
    checkCollisionResponse: true
}
