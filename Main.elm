module Main exposing (..)

import Html.App as App
import Material
import Model exposing (model)
import View exposing (view)
import Update exposing (update, Msg(Mdl))


main : Program Never
main =
    App.program
        { init = ( model, Material.init Mdl )
        , view = view
        , subscriptions =
            \model ->
                Material.subscriptions Mdl model
        , update = update
        }
