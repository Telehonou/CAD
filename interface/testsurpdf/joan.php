<?php 
function RabinKarp($Key, $Text)
{
	$TextLength = strlen($Text);
	$KeyLength = strlen($Key);
	$tempSplitData = explode(" ",$Text);
	$tempArrayData = array_filter($tempSplitData);
	for($i=0;$i<count($tempSplitData);$i++)
	{
		if(empty($tempArrayData[$i]))
		{

		}else{
			if(Convert($tempArrayData[$i])==Convert($Key))
			{
				echo "<br/>".$tempArrayData[$i]." = ".Convert($tempArrayData[$i])."<br/> Same with
				Key <br/>".$Key." = ".Convert($Key)."<br/>";
				if(CheckEqual($Key,$tempArrayData[$i])){
					$GLOBALS[‘temp’][$Key]+=1;
					$i++;
				}
			else continue;
			}
		}
	}
}

function JaroWinkler($string1,$string2,$PREFIXSCALE=0.1)
{
	$JaroDistance = Jaro($string1,$string2);
	$prefixLength = getPrefixLength($string1,$string2);
	$dw = $JaroDistance + ($prefixLength * $PREFIXSCALE * (1.0 - $JaroDistance));
	Return $dw;
}
JaroWinkler("telehonou donfack","Donfack telehonou olivier junior infoematique");
 ?>