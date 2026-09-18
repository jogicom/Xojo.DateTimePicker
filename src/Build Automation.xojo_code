#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
				Begin ExternalIDEScriptStep SetBranchLinus
					AppliesTo = 1
					Architecture = 0
					Target = 0
					FolderItem = Li4ALi4Ac2V0X2dpdF9icmFuY2gueG9qb19zY3JpcHQ=
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin SignProjectStep Sign
				  DeveloperID=
				  macOSEntitlements={"App Sandbox":"False","Hardened Runtime":"False","Notarize":"False","UserEntitlements":""}
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
				Begin ExternalIDEScriptStep SetBranchWindows
					AppliesTo = 1
					Architecture = 0
					Target = 0
					FolderItem = Li4ALi4Ac2V0X2dpdF9icmFuY2gueG9qb19zY3JpcHQ=
				End
			End
#tag EndBuildAutomation
