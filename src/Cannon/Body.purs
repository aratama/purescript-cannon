module Graphics.Cannon.Body (
    createBody, setMass, addShape,
    applyLocalForce, applyForce, applyImpulse,
    getPosition, setPosition, getVelocity, setVelocity,
    defaultBodyProps, setFixedRotation, updateMassProperties
) where

import Graphics.Cannon.Type
import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable, toMaybe)
import Prelude (Unit, (<$>))

foreign import createBody :: ∀eff . BodyProps → Eff (cannon :: CANNON | eff) Body

foreign import setMass :: ∀eff . Number → Body → Eff (cannon :: CANNON | eff) Unit

foreign import applyLocalForce :: ∀eff . Vec3 → Vec3 → Body → Eff (cannon :: CANNON | eff) Unit

foreign import applyForce :: ∀eff . Vec3 → Vec3 → Body → Eff (cannon :: CANNON | eff) Unit

foreign import applyImpulse :: ∀eff . Vec3 → Vec3 → Body → Eff (cannon :: CANNON | eff) Unit

foreign import getPosition :: ∀eff . Body → Eff (cannon :: CANNON | eff) Vec3

foreign import setPosition :: ∀eff . Vec3 → Body → Eff (cannon :: CANNON | eff) Unit

foreign import getVelocity :: ∀eff . Body → Eff (cannon :: CANNON | eff) Vec3

foreign import setVelocity :: ∀eff . Vec3 → Body → Eff (cannon :: CANNON | eff) Unit

foreign import _addShape :: ∀eff . Shape → Nullable Vec3 → Nullable Quaternion → Body → Eff (cannon :: CANNON | eff) Unit

addShape :: ∀eff . Shape → Maybe Vec3 → Maybe Quaternion → Body → Eff (cannon :: CANNON | eff) Unit
addShape shape offset orientation = _addShape shape (toNullable offset) (toNullable orientation)

foreign import defaultBodyProps :: BodyProps

foreign import setFixedRotation :: ∀eff . Boolean -> Body -> Eff (cannon :: CANNON | eff) Unit

foreign import updateMassProperties :: ∀eff . Body -> Eff (cannon :: CANNON | eff) Unit