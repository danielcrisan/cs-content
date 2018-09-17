namespace: io.cloudslang.microfocus.uft
properties:
  - run_robot_script_template: 'Dim qtApp`r`nDim qtTest`r`n Dim qtResultsOpt`r`n Dim qtAutoExportResultsOpts`r`n Dim pDefColl`r`n Dim qtParams`r`n Set qtApp = CreateObject(`"QuickTest.Application`")`r`n qtApp.Launch`r`n qtApp.Visible = <visible_param>`r`n qtApp.Options.Run.ImageCaptureForTestResults = `"OnError`"`r`n qtApp.Options.Run.RunMode = `"Fast`"`r`n qtApp.Options.Run.ViewResults = False`r`n qtApp.Open `"<test_path>`", True`r`n Set qtTest = qtApp.Test`r`nqtTest.Settings.Run.OnError = `"NextStep`"`r`n Set pDefColl = qtApp.Test.ParameterDefinitions`r`n Set qtParams = pDefColl.GetParameters()`r`n <params>`r`n Set qtResultsOpt = CreateObject(`"QuickTest.RunResultsOptions`")`r`n qtResultsOpt.ResultsLocation = `"<test_results_path>`"`r`n Set qtAutoExportResultsOpts = qtApp.Options.Run.AutoExportReportConfig`r`n qtAutoExportResultsOpts.AutoExportResults = True`r`n qtAutoExportResultsOpts.StepDetailsReport = True`r`n qtAutoExportResultsOpts.DataTableReport = True`r`n qtAutoExportResultsOpts.LogTrackingReport = True`r`n qtAutoExportResultsOpts.ScreenRecorderReport = True`r`n qtAutoExportResultsOpts.SystemMonitorReport = False`r`n qtAutoExportResultsOpts.StepDetailsReportFormat = `"UserDefined`"`r`n qtAutoExportResultsOpts.ExportForFailedRunsOnly = True`r`n qtTest.Run qtResultsOpt, , qtParams`r`n qtTest.Close`r`n qtApp.Quit`r`nSet qtParams =Nothing`r`n Set qtResultsOpt = Nothing`r`n Set qtTest = Nothing`r`n Set qtApp = Nothing`r`n Set qtAutoExportSettings = Nothing`r`n'
  - get_robot_params_script_template: "Dim qtApp`r`nDim pDefColl`r`nDim pDef`r`nDim rtParams`r`nDim rtParam`r`nSet qtApp = CreateObject(`\"QuickTest.Application`\")`r`nqtApp.Launch`r`nqtApp.Visible = False`r`nqtApp.Open `\"<test_path>`\"`r`nSet pDefColl = qtApp.Test.ParameterDefinitions`r`ncnt = pDefColl.Count`r`nIndx = 1`r`nparams = `\"`\"`r`nWhile Indx <= cnt`r`n    Set pDef = pDefColl.Item(Indx)`r`n\tparams = params & pDef.Name & `\":`\" & pDef.DefaultValue & `\":`\" & pDef.InOut & `\",`\"`r`n    Indx = Indx + 1`r`nWend`r`nqtApp.Quit`r`nparams = Left(params,len(params)-1)`r`nWScript.StdOut.Write(params)`r`n"
  - run_robot_script_template_no_params: 'Dim qtApp`r`nDim qtTest`r`n Dim qtResultsOpt`r`n Dim qtAutoExportResultsOpts`r`n Dim pDefColl`r`n Dim qtParams`r`n Set qtApp = CreateObject(`"QuickTest.Application`")`r`n qtApp.Launch`r`n qtApp.Visible = <visible_param>`r`n qtApp.Options.Run.ImageCaptureForTestResults = `"OnError`"`r`n qtApp.Options.Run.RunMode = `"Fast`"`r`n qtApp.Options.Run.ViewResults = False`r`n qtApp.Open `"<test_path>`", True`r`n Set qtTest = qtApp.Test`r`nqtTest.Settings.Run.OnError = `"NextStep`"`r`n Set pDefColl = qtApp.Test.ParameterDefinitions`r`n Set qtParams = pDefColl.GetParameters()`r`n `r`n Set qtResultsOpt = CreateObject(`"QuickTest.RunResultsOptions`")`r`n qtResultsOpt.ResultsLocation = `"<test_results_path>`"`r`n Set qtAutoExportResultsOpts = qtApp.Options.Run.AutoExportReportConfig`r`n qtAutoExportResultsOpts.AutoExportResults = True`r`n qtAutoExportResultsOpts.StepDetailsReport = True`r`n qtAutoExportResultsOpts.DataTableReport = True`r`n qtAutoExportResultsOpts.LogTrackingReport = True`r`n qtAutoExportResultsOpts.ScreenRecorderReport = True`r`n qtAutoExportResultsOpts.SystemMonitorReport = False`r`n qtAutoExportResultsOpts.StepDetailsReportFormat = `"UserDefined`"`r`n qtAutoExportResultsOpts.ExportForFailedRunsOnly = True`r`n qtTest.Run qtResultsOpt, , qtParams`r`n qtTest.Close`r`n qtApp.Quit`r`nSet qtParams =Nothing`r`n Set qtResultsOpt = Nothing`r`n Set qtTest = Nothing`r`n Set qtApp = Nothing`r`n Set qtAutoExportSettings = Nothing`r`n'
