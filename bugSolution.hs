The corrected version handles the `Nothing` case explicitly, returning a default value (0 in this case) when the input is `Nothing`.
```haskell
import Data.Maybe (fromMaybe)

getStringLength :: Maybe String -> Int
getStringLength (Just str) = length str
getStringLength Nothing = 0

main :: IO ()
main = do
  let strLength1 = getStringLength (Just "Hello")
  let strLength2 = getStringLength Nothing
  print strLength1
  print strLength2
```