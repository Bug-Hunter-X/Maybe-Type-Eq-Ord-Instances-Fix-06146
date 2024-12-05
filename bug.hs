{-# LANGUAGE FlexibleInstances #-}

instance Eq (Maybe a) where
  Nothing == Nothing = True
  (Just a) == (Just b) = a == b
  _ == _ = False

instance Ord (Maybe a) where
  compare Nothing Nothing = EQ
  compare Nothing (Just _) = LT
  compare (Just _) Nothing = GT
  compare (Just a) (Just b) = compare a b

main :: IO ()
main = do
  print (Nothing :: Maybe Int)
  print (Just 5 :: Maybe Int)
  print ((==) (Just 5) (Just 5))
  print ((==) Nothing Nothing)