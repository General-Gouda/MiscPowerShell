# Uses .Net's Speech Synthesizer to output text as voice from your computer.

function New-VoiceOutput
{
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory=$true, Position = 0)]
        [string]$TextInput,

        [Parameter(Mandatory=$false, Position = 1)]
        [ValidateRange(-10,10)]
        [int]$Rate = 0
    )

    Add-Type -AssemblyName System.Speech

    $talk = New-Object System.Speech.Synthesis.SpeechSynthesizer
    $talk.Rate = $Rate

    $talk.Speak($TextInput)
}