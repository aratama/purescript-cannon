## Module Graphics.Cannon.RaycastResult

#### `createRaycastResult`

``` purescript
createRaycastResult :: forall eff. Eff (cannon :: CANNON | eff) RaycastResult
```

#### `body`

``` purescript
body :: forall eff. RaycastResult -> Eff (cannon :: CANNON | eff) Body
```

#### `DefaultRaycastOptions`

``` purescript
type DefaultRaycastOptions = { collisionFilterMask :: Int, collisionFilterGroup :: Int, skipBackfaces :: Boolean, checkCollisionResponse :: Boolean }
```

#### `defaultRaycastOptions`

``` purescript
defaultRaycastOptions :: DefaultRaycastOptions
```


