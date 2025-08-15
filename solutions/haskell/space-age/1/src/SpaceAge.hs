module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn Mercury sec= (sec / 31557600) /0.2408467
ageOn Venus sec=(sec / 31557600) /0.61519726
ageOn Earth sec=(sec / 31557600)/1
ageOn Mars sec=(sec / 31557600)/1.8808158
ageOn Jupiter sec=(sec / 31557600)/11.862615
ageOn Saturn sec=(sec / 31557600)/29.447498
ageOn Uranus sec=(sec / 31557600)/84.016846
ageOn Neptune sec=(sec / 31557600)/164.79132

