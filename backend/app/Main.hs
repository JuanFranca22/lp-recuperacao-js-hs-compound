{-# LANGUAGE OverloadedStrings #-}

module Main where

import Web.Scotty
import Network.Wai.Middleware.Cors
import Data.Aeson (FromJSON, ToJSON)
import qualified Data.Aeson as A
import GHC.Generics
import Network.HTTP.Types.Status

data CompoundReq = CompoundReq
  { principal     :: Double
  , rate          :: Double
  , timesPerYear  :: Int
  , years         :: Double
  } deriving (Show, Generic)

instance FromJSON CompoundReq
instance ToJSON CompoundReq

data CompoundRes = CompoundRes
  { amount :: Double
  } deriving (Show, Generic)

instance ToJSON CompoundRes

main :: IO ()
main = scotty 8080 $ do
  middleware $ cors (const $ Just simpleCorsResourcePolicy { corsRequestHeaders = ["Content-Type"] })

  post "/api/compound" $ do
    bodyJson <- jsonData `rescue` (\_ -> do
        status badRequest400
        json (A.object ["error" A..= ("JSON inválido" :: String)])
        finish)

    let p = principal bodyJson
        r = rate bodyJson
        n = timesPerYear bodyJson
        t = years bodyJson

    if p <= 0 || r < 0 || n <= 0 || t <= 0
      then do
        status badRequest400
        json (A.object [ "error" A..= ("Valores inválidos" :: String) ])
      else do
        let amountValue = p * (1 + r / fromIntegral n) ** (fromIntegral n * t)
        json (CompoundRes amountValue)
