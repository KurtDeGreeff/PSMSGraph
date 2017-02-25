$projectRoot = Resolve-Path "$PSScriptRoot\.."
$moduleRoot = Split-Path (Resolve-Path "$projectRoot\*\*.psd1")
$moduleName = Split-Path $moduleRoot -Leaf


Describe "Testing all Script against default PSScriptAnalyzer rule-set" {
    
    $Rules = Get-ScriptAnalyzerRule
    $scripts = Get-ChildItem $moduleRoot -Include *.ps1, *.psm1, *.psd1 -Recurse | where fullname -notmatch 'classes'
    
    foreach ($Script in $scripts) {
        Context "Testing Script '$($script.FullName)'" {
            
            foreach ($rule in $rules) {
                It "passes the PSScriptAnalyzer Rule [$rule]" {
                    
                    (Invoke-ScriptAnalyzer -Path $script.FullName -IncludeRule $rule.RuleName).Count | Should Be 0
                }
            }
        }
    }
}


Describe "General project validation: $moduleName" -Tags Build {
    
    It "Module '$moduleName' can import cleanly" {
        { Import-Module (Join-Path $moduleRoot "$moduleName.psm1") -force } | Should Not Throw
    }
}