module Model exposing (..)

import Material


type alias Model =
    { mdl : Material.Model
    }


model : Model
model =
    { mdl =
        Material.model
    }
