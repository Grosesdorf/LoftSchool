<?php
function stringToP($arr){
    foreach($arr as $element) {
        echo "<p>" . $element . "</p>";
    }
}

$strArr = ["The PHP development team announces the immediate availability of PHP 5.6.12. 12 security-related issues were fixed in this release.",
        "All PHP 5.6 users are encouraged to upgrade to this version.",
        "For source downloads of PHP 5.6.12 please visit our downloads page, Windows binaries can be found on windows.php.net/download/.",
        "The list of changes is recorded in the ChangeLog."];

stringToP($strArr);



