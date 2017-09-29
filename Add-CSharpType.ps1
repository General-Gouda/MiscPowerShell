function Add-CSharpType
{
    [CmdletBinding()]
    param
    (
        [string[]]$Assemblies,
        [string]$Source
    )

    if ([string]::IsNullOrWhiteSpace($Assemblies))
    {
        Add-Type -TypeDefinition $Source -Language CSharp
    }
    else
    {
        Add-Type -ReferencedAssemblies $Assemblies -TypeDefinition $Source -Language CSharp
    }
}
