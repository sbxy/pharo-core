clipboardText: text 

        | string |
        string := text asString.
        self noteRecentClipping: text asText.
        contents := text asText.
        string := string convertToWithConverter: UTF8TextConverter new.
        string := string replaceAll: 13 asCharacter with: 10 asCharacter.
        self primitiveClipboardText: string.