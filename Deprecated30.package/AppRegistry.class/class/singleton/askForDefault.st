askForDefault
        "self askForDefault"
        self registeredClasses isEmpty ifTrue:
                [self inform: 'There are no ', self appName, ' applications registered.'.
                ^ default := nil].
        self registeredClasses size = 1 ifTrue:
                [^ default := self registeredClasses anyOne].
        ^Smalltalk globals
                at: #UIManager
                ifPresent: [:class | self chooseAppWithUI]
                ifAbsent:  [| stream |
                        stream := WriteStream with: 'You have to choose a Class by using ''#chooseApp: index:'''.
                        stream nextPut: Character cr.
                        self registeredClasses doWithIndex: [:class :index |
                                stream
                                        nextPutAll: index asString;
                                        nextPutAll: ' - ';
                                        nextPutAll: class name asString;
                                        nextPut: Character cr].
                        self inform: stream contents.
                        default := nil]