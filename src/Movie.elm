module Movie exposing (..)

import Url exposing (Url)
import Url.Builder as UrlBuilder

type alias Movie = 
    {title: String
    ,imageUrl: Url
    ,plot: String
    ,rating: Float
    ,year: Int
    ,id: String
    }

getImbdLink : Movie -> String
getImbdLink movie = 
    UrlBuilder.crossOrigin "https://imdb.com/" ["title", movie.id] []
