initializeOn: aTestSuite
	suite := aTestSuite.
	suitePosition := suiteTime := suiteFailures := suiteErrors := 0.
	progressFile := StandardFileStream forceNewFileNamed: 'progress.log'