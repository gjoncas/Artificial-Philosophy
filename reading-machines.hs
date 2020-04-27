--Ramsay - Reading Machines: Toward an Algorithmic Criticism (2011)

poem = ["Tell all the truth but tell it slant-",
        "Success in Circuit lies",
        "Too bright for our infirm Delight",
        "The Truth's superb surprise",
        "As lightning to the Children eased",
        "With explanation kind",
        "The Truth must dazzle gradually",
        "Or every man be blind-"]

--simple program to flip the lines of a poem (Ramsay, 2011: 34-5)
backwords = mapM_ putStrLn $ reverse poem

--Reverses both lines & words (Ramsay, 2011: 88, n. 1)
backpoem = mapM_ putStrLn $ unwords <$> reverse <$> words <$> poem

--fancier version that uncapitalizes last words, capitalizes first words, and adjusts dashes
--NB: fixDash must be applied *after* fixCaps, or else it will break
--NB: toUpper & toLower are defined below, for ergodic
fixCaps xs = [toUpper (head xs)] ++ (tail $ init xs) ++ [toLower (last xs)]
fixDash (x:xs) = if last x == '-' 
                 then [init x] ++ init xs ++ [last xs ++ ['-']]
                 else (x:xs)

backpoem' = mapM_ putStrLn $ unwords <$> fixDash <$> fixCaps <$> reverse <$> words <$> poem


poetry = ["The force that through the green fuse drives the flower",
          "Drives my green age; that blasts the roots of trees",
          "Is my destroyer.",
          "And I am dumb to tell the crooked rose",
          "My youth is bent by the same wintry fever.",

          "The force that drives the water through the rocks",
          "Drives my red blood; that dries the mouthing streams",
          "Turns mine to wax.",
          "And I am dumb to mouth unto my veins",
          "How at the mountain spring the same mouth sucks.",

          "The hand that whirls the water in the pool",
          "Stirs the quicksand; that ropes the blowing wind",
          "Hauls my shroud sail.",
          "And I am dumb to tell the hanging man",
          "How of my clay is made the hangman's lime.",

          "The lips of time leech to the fountain head;",
          "Love drips and gathers, but the fallen blood",
          "Shall calm her sores.",
          "And I am dumb to tell a weather's wind",
          "How time has ticked a heaven round the stars.",

          "And I am dumb to tell the lover's tomb",
          "How at my sheet goes the same crooked worm."]

--"Entropic" poem - removing all word-level redundancy (Ramsay, 2011: 36-8)
-- import Data.Sequences (toLower)   <-- don't have to implement by hand
offset :: Int                               --NB: need b/c toEnum only works with Int
offset = fromEnum 'a' - fromEnum 'A'

lower :: Char -> Char                       --NB: doesn't work without type signature
lower c = toEnum (fromEnum c + offset)

toLower :: [Char] -> [Char]
toLower word = let c = head word in 
               if notElem c ['a'..'z'] 
               then (lower c) : (tail word)
               else word

upper :: Char -> Char
upper c = toEnum (fromEnum c - offset)
toUpper :: [Char] -> [Char]
toUpper word = let c = head word in if notElem c ['A'..'Z'] then (upper c) : (tail word) else word

unpunctuate = filter (`notElem` ",.?!-:;\"\'")    --NB: removes ' in 's --> remove \' to keep them

--poem' = map unpunctuate $ map toLower $ concat $ map words poetry  --verbose
poem' = unpunctuate <$> toLower <$> concat (words <$> poetry)

entropic :: [String] -> [(String,Int)]
entropic [] = []
entropic (x:xs) = (x,(length $ filter (== x) xs)+1) : entropic (filter (/= x) xs)
 
--pretty printing via https://stackoverflow.com/questions/25468035
printList xs  = mapM_ (\(a,b) -> putStrLn $ a ++ " " ++ show b) xs
entropoem = printList $ entropic poem'