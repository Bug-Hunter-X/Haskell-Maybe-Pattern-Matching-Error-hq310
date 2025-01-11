The following Haskell code attempts to use a pattern match on a Maybe type, but it forgets to handle the `Nothing` case, leading to a runtime exception.
```haskell
import Data.Maybe (fromMaybe)

getStringLength :: Maybe String -> Int
getStringLength (Just str) = length str

main :: IO ()
main = do
  let strLength = getStringLength Nothing
  print strLength
```