## Module Graphics.Cannon.World

#### `createWorld`

``` purescript
createWorld :: forall eff. Eff (cannon :: CANNON | eff) World
```

#### `addBody`

``` purescript
addBody :: forall eff. Body -> World -> Eff (cannon :: CANNON | eff) Unit
```

#### `removeBody`

``` purescript
removeBody :: forall eff. Body -> World -> Eff (cannon :: CANNON | eff) Unit
```

#### `step`

``` purescript
step :: forall eff. Number -> Number -> Int -> World -> Eff (cannon :: CANNON | eff) Unit
```

#### `setGravity`

``` purescript
setGravity :: forall eff. Vec3 -> World -> Eff (cannon :: CANNON | eff) Unit
```

#### `getBodies`

``` purescript
getBodies :: forall eff. World -> Eff (cannon :: CANNON | eff) (Array Body)
```

#### `raycastClosest`

``` purescript
raycastClosest :: forall eff. Vec3 -> Vec3 -> RaycastOptions -> RaycastResult -> World -> Eff (cannon :: CANNON | eff) Boolean
```


