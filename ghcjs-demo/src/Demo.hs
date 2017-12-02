module Demo where

import GHCJS.Foreign
import GHCJS.Types

foreign import javascript unsafe
  "document.write($1)"
  documentWrite :: JSVal -> IO ()
