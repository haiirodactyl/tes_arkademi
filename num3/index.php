<?php
// for ($j = 1; $j < 7; $j+3) { 
//     echo "*";
// }


$size = 1;
echo "<div style='text-align: center;margin-top: 10em;font-size: 20pt;'>";
for ($i = 0; $i < $size; $i++)
{
    for ($j = 0; $j < $size; $j++)
    {
        if ($i == 0 || $i == $size - 1)
        {
            echo(' * * * * * * * ');
        }
        elseif ($j == 0 || $j == $size - 1)
        {
            echo(' * * * * * * * ');
        }
        else
        {
            echo(' * ');
        }
    }
    echo("<br>");
}
?>
