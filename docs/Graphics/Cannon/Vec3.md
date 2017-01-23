## Module Graphics.Cannon.Vec3

#### `createVec3`

``` purescript
createVec3 :: forall eff. Number -> Number -> Number -> Eff (cannon :: CANNON | eff) Vec3
```

#### `runVec3`

``` purescript
runVec3 :: forall eff. Vec3 -> Eff (cannon :: CANNON | eff) { x :: Number, y :: Number, z :: Number }
```

#### `toVec3`

``` purescript
toVec3 :: forall eff. { x :: Number, y :: Number, z :: Number } -> Eff (cannon :: CANNON | eff) Vec3
```

#### `length`

``` purescript
length :: forall eff. Vec3 -> Eff (cannon :: CANNON | eff) Number
```

#### `unit`

``` purescript
unit :: forall eff. Vec3 -> Eff (cannon :: CANNON | eff) Vec3
```

#### `scale`

``` purescript
scale :: forall eff. Number -> Vec3 -> Eff (cannon :: CANNON | eff) Vec3
```


