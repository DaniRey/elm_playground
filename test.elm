import Html exposing (div, h1, img, text, p)
import Html.Attributes exposing (..)
import List exposing (head, filter, foldr)
import String exposing (concat)

type alias Actor = {firstname : String, name : String, age: Int}

tom = Actor "Tom" "Hanks" 54
chuck = Actor "Chuck" "Norris" 62
silvester = Actor "Silvester" "Stallon" 67
leonardo = Actor "Leonardo" "DiCaprio" 45

actors : List Actor
actors = [tom, chuck, silvester, leonardo]

reachedRetirementAge : Actor -> Bool
reachedRetirementAge actor = actor.age > 65
first = head actors
retiredActors = concat (List.map .name (filter reachedRetirementAge actors))


view model = div []
              [h1 [] [text "actors"],
              p [] [text retiredActors]
              ]

main = view retiredActors