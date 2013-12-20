module App where
import Window

scene (w,h) =
  let wrds = width 90 <| plainText "hello world, I am an Elm program!"
  in container 100 100 middle wrds |> color blue
main = scene <~ Window.dimensions
