<?php
function logToFile($filename, $msg) 
   {  
   $fd = fopen($filename, "a"); 
   fwrite($fd, $msg . "\r\n"); 
   fclose($fd); 
   } 
   
echo "You received info about activities on your Route4Me account <br>";

foreach ($_GET as $key => $value) { 
	logToFile("r4m_activities.txt",$key.":");
	if (is_array($value)) {
		foreach ($value as $k1 => $v1) {
			logToFile("r4m_activities.txt",$k1." -> ".$v1);
		}
	}
}
?>
