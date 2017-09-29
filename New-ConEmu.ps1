Function New-ConEmu
{
	param
	(
		[switch]$Vertical,
		[switch]$Horizontal,
		[switch]$Admin,
		$Size
	)

	$conprefix = "-cur_console"
	$split = ""
	$asuffix = ""

	if ($Vertical)
	{
		$split = ":s"+$size+"V"
	}

	if ($Horizontal)
	{
		$split = ":s"+$size+"H"
	}
	
	if ($Admin)
	{
		$asuffix = ":a"
	}

	$output = $conprefix + $asuffix + $split
	ConEmu64.exe -reuse /cmd powershell $output
}