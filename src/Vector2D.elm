module Vector2D exposing (..)

{-| This file contains the implmantion of Vector 2D for elm-lang.

# Model
@docs Vector2D

# Constructor
@docs vector2D

# Comparison
@docs equal

# Basic Arithmatics
@docs add, sub, div, mul

# Advanced Airthmatics
@docs dot, magnitude, distance, normalise, angle

-}


{-| Represents the Vector2D model
-}
type alias Vector2D =
    { x : Float
    , y : Float
    }


{-| Creates Vector2D from two float number
-}
vector2D : Float -> Float -> Vector2D
vector2D x y =
    { x = x
    , y = y
    }


{-| Compares two Vecotr2D
-}
equal : Vector2D -> Vector2D -> Bool
equal v1 v2 =
    v1.x == v2.x && v1.y == v2.y


{-| Adds two Vector2D and returns summation of them
-}
add : Vector2D -> Vector2D -> Vector2D
add v1 v2 =
    { x = v1.x + v2.x
    , y = v1.y + v2.y
    }


{-| Subtracts two Vector2D
-}
sub : Vector2D -> Vector2D -> Vector2D
sub v1 v2 =
    { x = v1.x - v2.x
    , y = v1.y - v2.y
    }


{-| Applies division a float variable to a given Vector2D
-}
div : Vector2D -> Float -> Vector2D
div v num =
    { x = v.x / num
    , y = v.y / num
    }


{-| Applies multiplication a float number to a given Vector2D
-}
mul : Vector2D -> Float -> Vector2D
mul v num =
    { x = v.x * num
    , y = v.y * num
    }


{-| Calculates a dot product of two Vector2D
-}
dot : Vector2D -> Vector2D -> Float
dot v1 v2 =
    v1.x * v2.x + v1.y * v2.y


{-| Calculates magnitude of a Vector2D
-}
magnitude : Vector2D -> Float
magnitude v =
    dot v v
        |> sqrt


{-| Calculates the distance between two Vector2D
-}
distance : Vector2D -> Vector2D -> Float
distance v1 v2 =
    sub v2 v1
        |> magnitude


{-| Normalises the given Vector2D
-}
normalise : Vector2D -> Vector2D
normalise v =
    magnitude v
        |> div v


{-| Calculates the angle of a given Vector2D and returns the radians value
-}
angle : Vector2D -> Float
angle v =
    atan2 v.y v.x
