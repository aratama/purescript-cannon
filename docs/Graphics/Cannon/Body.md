## Module Graphics.Cannon.Body

#### `createBody`

``` purescript
createBody :: forall eff. BodyProps -> Eff (cannon :: CANNON | eff) Body
```

#### `setMass`

``` purescript
setMass :: forall eff. Number -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `applyLocalForce`

``` purescript
applyLocalForce :: forall eff. Vec3 -> Vec3 -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `applyForce`

``` purescript
applyForce :: forall eff. Vec3 -> Vec3 -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `applyImpulse`

``` purescript
applyImpulse :: forall eff. Vec3 -> Vec3 -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `getPosition`

``` purescript
getPosition :: forall eff. Body -> Eff (cannon :: CANNON | eff) Vec3
```

#### `setPosition`

``` purescript
setPosition :: forall eff. Vec3 -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `getVelocity`

``` purescript
getVelocity :: forall eff. Body -> Eff (cannon :: CANNON | eff) Vec3
```

#### `setVelocity`

``` purescript
setVelocity :: forall eff. Vec3 -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `addShape`

``` purescript
addShape :: forall eff. Shape -> Maybe Vec3 -> Maybe Quaternion -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `defaultBodyProps`

``` purescript
defaultBodyProps :: BodyProps
```

#### `setFixedRotation`

``` purescript
setFixedRotation :: forall eff. Boolean -> Body -> Eff (cannon :: CANNON | eff) Unit
```

#### `updateMassProperties`

``` purescript
updateMassProperties :: forall eff. Body -> Eff (cannon :: CANNON | eff) Unit
```


