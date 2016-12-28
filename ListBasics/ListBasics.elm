port module ListBasics exposing (..)

import Html exposing (..)
import List

numbers = [1,2,3,4,5,6]

viewNumber: number -> Html msg
viewNumber num =
    li [] [text (toString num)]

--change the following lines, such that they adhere to their names
evenNumbers = List.filter (\n -> n % 2 == 0) numbers
squaredNumbers = List.map (\n -> n * n) numbers
sum = List.foldl (\x -> \y -> x + y) 0 numbers

view = div []
              [
              h1 [] [text "List Basics"],
              h2 [] [text "numbers"],
              p [] [text (toString numbers)],
              h2 [] [text "evenNumbers"],
              p [] [text (toString evenNumbers)],
              h2 [] [text "squaredNumbers"],
              p [] [text (toString squaredNumbers)],
              h2 [] [text "sum"],
              p [] [text (toString sum)],
              h2 [] [text "numbers as list"],
              ul [] (List.map viewNumber numbers)
              ]

main = view