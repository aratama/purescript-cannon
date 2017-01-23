## Module Graphics.Cannon

#### `createSphere`

``` purescript
createSphere :: forall eff. Number -> Eff (cannon :: CANNON | eff) Shape
```

#### `createBox`

``` purescript
createBox :: forall eff. Vec3 -> Eff (cannon :: CANNON | eff) Shape
```

#### `createCylinder`

``` purescript
createCylinder :: forall eff. Number -> Number -> Number -> Int -> Eff (cannon :: CANNON | eff) Shape
```

#### `createPlane`

``` purescript
createPlane :: forall eff. Eff (cannon :: CANNON | eff) Shape
```

#### `createMaterial`

``` purescript
createMaterial :: forall eff. MaterialOption -> Eff (cannon :: CANNON | eff) Material
```


### Re-exported from Graphics.Cannon.Body:

#### `updateMassProperties`

``` purescript
updateMassProperties :: forall eff. Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `setVelocity`

``` purescript
setVelocity :: forall eff. Vec3 -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `setPosition`

``` purescript
setPosition :: forall eff. Vec3 -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `setMass`

``` purescript
setMass :: forall eff. Number -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `setFixedRotation`

``` purescript
setFixedRotation :: forall eff. Boolean -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `getVelocity`

``` purescript
getVelocity :: forall eff. Body -> Eff (cannon :: CANNON | eff) Vec3
```

#### `getPosition`

``` purescript
getPosition :: forall eff. Body -> Eff (cannon :: CANNON | eff) Vec3
```

#### `defaultBodyProps`

``` purescript
defaultBodyProps :: BodyProps
```

#### `createBody`

``` purescript
createBody :: forall eff. BodyProps -> Eff (cannon :: CANNON | eff) Body
```

#### `applyLocalForce`

``` purescript
applyLocalForce :: forall eff. Vec3 -> Vec3 -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `applyImpulse`

``` purescript
applyImpulse :: forall eff. Vec3 -> Vec3 -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `applyForce`

``` purescript
applyForce :: forall eff. Vec3 -> Vec3 -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `addShape`

``` purescript
addShape :: forall eff. Shape -> Maybe Vec3 -> Maybe Quaternion -> Body -> Eff (cannon :: CANNON | eff) Unit
```

### Re-exported from Graphics.Cannon.RaycastResult:

#### `DefaultRaycastOptions`

``` purescript
type DefaultRaycastOptions = { collisionFilterMask :: Int, collisionFilterGroup :: Int, skipBackfaces :: Boolean, checkCollisionResponse :: Boolean }
```

#### `defaultRaycastOptions`

``` purescript
defaultRaycastOptions :: DefaultRaycastOptions
```

#### `createRaycastResult`

``` purescript
createRaycastResult :: forall eff. Eff (cannon :: CANNON | eff) RaycastResult
```

#### `body`

``` purescript
body :: forall eff. RaycastResult -> Eff (cannon :: CANNON | eff) Body
```

### Re-exported from Graphics.Cannon.Type:

#### `World`

``` purescript
data World :: *
```

#### `Vec3`

``` purescript
data Vec3 :: *
```

#### `Shape`

``` purescript
data Shape :: *
```

#### `RaycastResult`

``` purescript
data RaycastResult :: *
```

#### `RaycastOptions`

``` purescript
type RaycastOptions = { collisionFilterMask :: Int, collisionFilterGroup :: Int, skipBackfaces :: Boolean, checkCollisionResponse :: Boolean }
```

#### `Quaternion`

``` purescript
data Quaternion :: *
```

#### `MaterialOption`

``` purescript
type MaterialOption = { friction :: Number, restitution :: Number }
```

#### `Material`

``` purescript
data Material :: *
```

#### `CANNON`

``` purescript
data CANNON :: !
```

#### `BodyProps`

``` purescript
type BodyProps = { mass :: Number, position :: Vec3, fixedRotation :: Boolean, linearDamping :: Number, material :: Material, collisionFilterGroup :: Int, collisionFilterMask :: Int }
```

#### `Body`

``` purescript
data Body :: *
```

### Re-exported from Graphics.Cannon.Vec3:

#### `unit`

``` purescript
unit :: forall eff. Vec3 -> Eff (cannon :: CANNON | eff) Vec3
```

#### `toVec3`

``` purescript
toVec3 :: forall eff. { x :: Number, y :: Number, z :: Number } -> Eff (cannon :: CANNON | eff) Vec3
```

#### `scale`

``` purescript
scale :: forall eff. Number -> Vec3 -> Eff (cannon :: CANNON | eff) Vec3
```

#### `runVec3`

``` purescript
runVec3 :: forall eff. Vec3 -> Eff (cannon :: CANNON | eff) { x :: Number, y :: Number, z :: Number }
```

#### `length`

``` purescript
length :: forall eff. Vec3 -> Eff (cannon :: CANNON | eff) Number
```

#### `createVec3`

``` purescript
createVec3 :: forall eff. Number -> Number -> Number -> Eff (cannon :: CANNON | eff) Vec3
```

### Re-exported from Graphics.Cannon.World:

#### `step`

``` purescript
step :: forall eff. Number -> Number -> Int -> World -> Eff (cannon :: CANNON | eff) Unit
```

#### `setGravity`

``` purescript
setGravity :: forall eff. Vec3 -> World -> Eff (cannon :: CANNON | eff) Unit
```

#### `removeBody`

``` purescript
removeBody :: forall eff. Body -> World -> Eff (cannon :: CANNON | eff) Unit
```

#### `raycastClosest`

``` purescript
raycastClosest :: forall eff. Vec3 -> Vec3 -> RaycastOptions -> RaycastResult -> World -> Eff (cannon :: CANNON | eff) Boolean
```

#### `getBodies`

``` purescript
getBodies :: forall eff. World -> Eff (cannon :: CANNON | eff) (Array Body)
```

#### `createWorld`

``` purescript
createWorld :: forall eff. Eff (cannon :: CANNON | eff) World
```

#### `addBody`

``` purescript
addBody :: forall eff. Body -> World -> Eff (cannon :: CANNON | eff) Unit
```

