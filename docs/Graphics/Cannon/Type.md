## Module Graphics.Cannon.Type

#### `CANNON`

``` purescript
data CANNON :: !
```

#### `World`

``` purescript
data World :: *
```

#### `Body`

``` purescript
data Body :: *
```

#### `Shape`

``` purescript
data Shape :: *
```

#### `Material`

``` purescript
data Material :: *
```

#### `Vec3`

``` purescript
data Vec3 :: *
```

#### `Quaternion`

``` purescript
data Quaternion :: *
```

#### `RaycastResult`

``` purescript
data RaycastResult :: *
```

#### `RaycastOptions`

``` purescript
type RaycastOptions = { collisionFilterMask :: Int, collisionFilterGroup :: Int, skipBackfaces :: Boolean, checkCollisionResponse :: Boolean }
```

#### `BodyProps`

``` purescript
type BodyProps = { mass :: Number, position :: Vec3, fixedRotation :: Boolean, linearDamping :: Number, material :: Material, collisionFilterGroup :: Int, collisionFilterMask :: Int }
```

#### `MaterialOption`

``` purescript
type MaterialOption = { friction :: Number, restitution :: Number }
```


