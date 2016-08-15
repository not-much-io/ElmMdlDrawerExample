module View exposing (..)

import Material.Layout as Layout
import Html exposing (..)
import Html.Events as Events
import Update exposing (Msg(Mdl))
import Model exposing (Model, model)


header : List (Html Msg)
header =
    [ Layout.row []
        [ Layout.title [] [ text "Example Title" ] ]
    ]


drawer : List (Html Msg)
drawer =
    [ Layout.title [] [ text "Example drawer" ]
    , Layout.navigation
        []
        [ Layout.link
            []
            [ text "Example 1" ]
        , Layout.link
            []
            [ text "Example 2" ]
        , Layout.link
            []
            [ text "Example 3" ]
        ]
    ]


layout : Html Msg
layout =
    Layout.render Mdl
        model.mdl
        [ Layout.fixedHeader
        ]
        { header = header
        , drawer = drawer
        , tabs = ( [], [] )
        , main =
            [ button
                [ Events.onClick (Layout.toggleDrawer Mdl) ]
                [ text "Toggle Drawer" ]
            ]
        }


view : Model -> Html Msg
view model =
    div []
        [ layout ]
