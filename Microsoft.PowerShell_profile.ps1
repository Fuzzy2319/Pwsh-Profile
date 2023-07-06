# https://github.com/JanDeDobbeleer/oh-my-posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\ys.omp.json" | Invoke-Expression
# https://github.com/devblackops/Terminal-Icons
Import-Module -Name Terminal-Icons

function Sudo (
	[Parameter(Mandatory)]
	[string]$Program,
	[Parameter()]
	[string[]]$ArgumentList
) {
	if($ArgumentList) {
		Start-Process $Program -WorkingDirectory . -Verb RunAs -ArgumentList $ArgumentList

		return
	}
	Start-Process $Program -WorkingDirectory . -Verb RunAs
}
