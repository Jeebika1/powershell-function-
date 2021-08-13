$foo = Read-Host -Prompt 'Enter your string'

function firstReccuringCharacter {
	Param($foo)
	for($i=0; $i -lt $foo.length; $i++){
		if ($foo.IndexOf($foo[$i]) -ne $foo.LastIndexOf($foo[$i])){
			
			return $foo[$i]
		}
	}
	return "No results found"		
}

firstReccuringCharacter($foo)
