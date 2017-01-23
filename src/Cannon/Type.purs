module Graphics.Cannon.Type where

foreign import data CANNON :: !

foreign import data World :: *

foreign import data Body :: *

foreign import data Shape :: *

foreign import data Material :: *

foreign import data Vec3 :: *

foreign import data Quaternion :: *

foreign import data RaycastResult :: *

type RaycastOptions = {
    collisionFilterMask :: Int,
    collisionFilterGroup :: Int,
    skipBackfaces :: Boolean,
    checkCollisionResponse :: Boolean
}

type BodyProps = {
    mass :: Number,
    position :: Vec3,
    fixedRotation :: Boolean,
    linearDamping :: Number,
    material :: Material,
    collisionFilterGroup :: Int,
    collisionFilterMask :: Int
}

type MaterialOption = {
    friction :: Number,
    restitution :: Number
}
