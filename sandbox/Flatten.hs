-- flatten List, i.e. remove Nothing's, keep the Just's & extract the `a`'s.
flatten :: [Maybe a] -> [a]
flatten xs = map g $ xs >>= f

f :: Maybe a -> [Maybe a]
f x = case x of Just _  -> [x]
                Nothing -> []

-- partial function!
g :: Maybe a -> a
g (Just x) = x