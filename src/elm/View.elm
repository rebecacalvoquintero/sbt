module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


-- My Elm Files

import Types exposing (..)
import Routes.Home exposing (..)
import Routes.SecondPage exposing (..)
import Routes.PageTwo exposing (..)
import Routes.ThirdPage exposing (..)
import Routes.Navbar exposing (..)


view : Model -> Html Msg
view model =
    let
        page =
            case model.route of
                HomeRoute ->
                    home model

                SecondPageRoute ->
                    secondPage model

                PageTwoRoute ->
                    pageTwo model

                ThirdPageRoute ->
                    thirdPage model
    in
        div [ class "" ]
            [ navbar model
            , page
            ]
