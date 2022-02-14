--Name - Ajay Mahendra Mehra MCA Roll no- 21112002

--Head
getPPMHeader :: String -> String -> [String]
getPPMHeader row columns = ["P3", row ++ " " ++ columns, "255"]


getWhitePixels :: Int -> [String]
getWhitePixels n = take n (repeat "255 255 255")

getBlackPixels :: Int -> [String]
getBlackPixels n = take n (repeat "0 0 0")

getGreenPixels :: Int -> [String]
getGreenPixels n = take n (repeat "0 255 0")

--Body

getData0 =(getPPMHeader "5" "5")++(getWhitePixels 6)++(getBlackPixels 3)++(getWhitePixels 2)++(getBlackPixels 3)++(getWhitePixels 2)++(getBlackPixels 3)++(getWhitePixels 6)

getData1 =(getPPMHeader "5" "5")++(getBlackPixels 2)++(getWhitePixels 2)++(getBlackPixels 3)++(getWhitePixels 2)++(getBlackPixels 3)++(getWhitePixels 2)++(getBlackPixels 3)++(getWhitePixels 2)++(getBlackPixels 3)++(getWhitePixels 2)++(getBlackPixels 1)

getData2 =(getPPMHeader "5" "5")++(getWhitePixels 5)++(getBlackPixels 3)++(getWhitePixels 9)++(getBlackPixels 3)++(getWhitePixels 5)

getData3 =(getPPMHeader "5" "5")++(getWhitePixels 5)++(getBlackPixels 3)++(getWhitePixels 2)++(getWhitePixels 5)++(getBlackPixels 3)++(getWhitePixels 2)++(getWhitePixels 5)

getData4 = (getPPMHeader "5" "5")++(getWhitePixels 1)++(getBlackPixels 3)++(getWhitePixels 1)++(getWhitePixels 1)++(getBlackPixels 3)++(getWhitePixels 1)++(getWhitePixels 5)++(getBlackPixels 4)++(getWhitePixels 1)++(getBlackPixels 4)++(getWhitePixels 1)

getData5 = (getPPMHeader "5" "5")++(getWhitePixels 6)++(getBlackPixels 4)++(getWhitePixels 5)++(getBlackPixels 4)++(getWhitePixels 6)

getData6 = (getPPMHeader "5" "5")++(getWhitePixels 6)++(getBlackPixels 4)++(getWhitePixels 6)++(getBlackPixels 3)++(getWhitePixels 6)

getData7 = (getPPMHeader "5" "5")++(getWhitePixels 5)++(getBlackPixels 4)++(getWhitePixels 1)++(getBlackPixels 4)++(getWhitePixels 1)++(getBlackPixels 4)++(getWhitePixels 1)++(getBlackPixels 4)++(getWhitePixels 1)

getData8 = (getPPMHeader "5" "5")++(getWhitePixels 6)++(getBlackPixels 3)++(getWhitePixels 7)++(getBlackPixels 3)++(getWhitePixels 6)

getData9 = (getPPMHeader "5" "5")++(getWhitePixels 6)++(getBlackPixels 3)++(getWhitePixels 6)++(getBlackPixels 4)++(getWhitePixels 1)++(getBlackPixels 4)++(getWhitePixels 1)

getDataError = (getPPMHeader "5" "5") ++ (getGreenPixels 25)

printDigit :: Int -> IO()
printDigit number | number==0 =  writeStringsToFile "0.ppm" getData0
		  | number==1 =  writeStringsToFile "1.ppm" getData1
		  | number==2 =  writeStringsToFile "2.ppm" getData2
		  | number==3 =  writeStringsToFile "3.ppm" getData3
		  | number==4 =  writeStringsToFile "4.ppm" getData4
		  | number==5 =  writeStringsToFile "5.ppm" getData5
	          | number==6 =  writeStringsToFile "6.ppm" getData6
		  | number==7 =  writeStringsToFile "7.ppm" getData7
		  | number==8 =  writeStringsToFile "8.ppm" getData8
		  | number==9 =  writeStringsToFile "9.ppm" getData9
		  | otherwise =  writeStringsToFile "Error.ppm" getDataError


-- Write File
directoryPath ="/home/ajay/" -- Change this as per your folder location
writeStringsToFile :: String -> [String] -> IO()
writeStringsToFile fileName content = do
	writeFile (directoryPath ++ fileName) lines

	where
		lines = concat $ map (\x -> x ++ "\n") content
	

