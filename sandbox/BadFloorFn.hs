floorFn :: Float -> Int
floorFn =  read . takeWhile (/= '.') . show

-- Quick check tests to prove that it's incorrect
equalFloorFns :: Float -> Bool
equalFloorFns x = (floorFn x) == (floor x)