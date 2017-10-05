targetKnownPath="/Users/tsiebler/Documents/Projects/Mac/AI/ImageClassification/PokerCards/known"
srcKnownPath="/Users/tsiebler/Desktop/pkr/images/known"

declare -a cards=("2" "3" "4" "5" "6" "7" "8" "9" "T" "J" "Q" "K" "A")
declare -a suits=("c" "s" "h" "d")

# clean up old table and noise folder
echo "Cleaning: $targetKnownPath/_table/"
rm $targetKnownPath/_table/*

echo "Cleaning: $targetKnownPath/card/_table/"
rm $targetKnownPath/card/_table/*

echo "Cleaning: $targetKnownPath/card/_noise/"
rm $targetKnownPath/card/_noise/*

cp $srcKnownPath/_noise/* $targetKnownPath/card/_noise/
cp $srcKnownPath/_table/* $targetKnownPath/_table/
cp $srcKnownPath/_table/* $targetKnownPath/card/_table/

for suit in "${suits[@]}"
do
	subdir="$srcKnownPath/$suit";
	echo "Checking $subdir";

	for card in "${cards[@]}"
	do
		targetSubDir="$targetKnownPath/card/$card$suit";
		#echo "target: $targetSubDir"
		rm $targetSubDir/*
	
		srcSubDir="$srcKnownPath/cards/$suit/$card";
		echo "source: $srcSubDir"
		
		cp $srcSubDir/* $targetSubDir/
		

	
	done
done

echo "Done"