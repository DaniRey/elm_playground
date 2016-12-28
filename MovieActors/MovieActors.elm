port module MovieActors exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import List exposing (head, filter, foldr)
import String exposing (concat)

type alias Actor = {firstname : String, name : String, age: Int}

tom = Actor "Tom" "Hanks" 60
chuck = Actor "Chuck" "Norris" 76
silvester = Actor "Silvester" "Stallon" 70
leonardo = Actor "Leonardo" "DiCaprio" 42

actors : List Actor
actors = [tom, chuck, silvester, leonardo]

reachedRetirementAge : Actor -> Bool
reachedRetirementAge actor = actor.age > 65

retiredActors = filter reachedRetirementAge actors

viewActor: Actor -> Html msg
viewActor actor =
    li [] [text (actor.firstname ++ " " ++ actor.name)]


view model = div []
              [h1 [] [text "retired actors"],
              ul [] (List.map viewActor retiredActors)
              ]

main = view retiredActors