import Data.List
import System.IO

header_ord a b	| length a > length b = GT
		| length a < length b = LT
header_ord a b = compare a b

order_headers = concat . (intersperse "\n") .  nub . (sortBy header_ord) . lines

main = do interact order_headers
