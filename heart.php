<?php
/**
 * User: litt1e-p
 * Date: 2015/2/12
 * Time: 11:53
 */

echo '<body style="background:black;font-size:18px;">';
$c = '0';
for ($i = 1; $i <= 5; $i++) {
    echo '<br>';
}
for ($i = 1; $i <= 3; $i++) {
    for ($j = 1; $j < 32 - 2 * $i; $j++) {
        echo '&nbsp;&nbsp;';
    }
    for ($k = 1; $k <= 4 * $i + 1; $k++) {
        echo '<b style="color:#D1ADF5">' . $c . '</b>';
    }
    for ($l = 1; $l <= 13 - 4 * $i; $l++) {
        echo '&nbsp;&nbsp;';
    }
    for ($m = 1; $m <= 4 * $i + 1; $m++) {
        echo '<b style="color:#D1ADF5">' . $c . '</b>';
    }
    echo '<br>';
}
for ($i = 1; $i < 3; $i++) {
    for ($j = 1; $j <= 23 + 1; $j++) {
        echo '&nbsp;&nbsp;';
    }
    for ($k = 1; $k < 29 + 1; $k++) {
        echo '<b style="color:#D1ADF5">' . $c . '</b>';
    }
    echo '<br>';
}
for ($i = 7; $i >= 1; $i--) {
    for ($j = 1; $j < 40 - 2 * $i; $j++) {
        echo '&nbsp;&nbsp;';
    }
    for ($k = 1; $k < 4 * $i; $k++) {
        echo '<b style="color:#D1ADF5">' . $c . '</b>';
    }
    echo '<br>';
}
for ($i = 1; $i < 39; $i++) {
    echo '&nbsp;&nbsp;';
}
echo '<b style="color:#D1ADF5">' . $c . '</b>';
for ($i = 1; $i <= 4; $i++) {
    echo '<br>';
}
echo '</div>';
?>