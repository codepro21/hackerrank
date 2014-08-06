<?php
function getSum($n){
  $n--;
  $t3 = (int)($n/3.0);
  $t5 = (int)($n/5.0);
  $t15 = (int)($n/15.0);

  return (3*(1+$t3)*$t3 + 5*(1+$t5)*$t5 - 15*(1+$t15)*$t15)/2;
}

$handle = fopen ("php://stdin","r");

$_a = fgets($handle);
$ins = Array();

for($i=0;$i<$_a;$i++)
{
	$ins[] = fgets($handle);
}

foreach($ins as $in)
{
	$sum = getSum((int)$in);
	print($sum.PHP_EOL);
}

fclose($handle);
?>