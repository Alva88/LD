<#
Hi Andretti,

Per my voice message, please complete the take home assignment below, post to your github account,
send the link to me, and I will send over to our DevOps Director to check, thanks.

Create a powershell function or cmdlet that takes an arbitrarily long string parameter $foo 
(e.g. 'abcdedcba') and returns the first recurring character in that Input string.
In 'abcdedcba', 'd' would be the first recurring character, so the cmdlet/function should 
return 'd' for that sample input.

Be mindful of the runtime of your solution.
#>

function ReturnFirstReplicateChar($foo) {
    $ret = ""
    $tmpArray = @()
    foreach($char in $foo.ToCharArray()) {              
        if ($tmpArray.Contains($char)) {                
            $ret = $char                
            break
        }            
    $tmpArray += $char  
    }
    return $ret         
}
$foo = "abcddcba"
ReturnFirstReplicateChar($foo)
