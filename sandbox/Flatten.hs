-- flatten List, i.e. remove Nothing's, keep the Just's
flatten :: [Maybe a] -> [Maybe a]
flatten xs = xs >>= f

f :: Maybe a -> [Maybe a]
f x = case x of Just _  -> [x]
                Nothing -> []