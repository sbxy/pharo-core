messageCategoryMenu: aMenu
	^ aMenu addList: #(
		('Browse'								buildMessageCategoryBrowser)
		('FileOut'								fileOutMessageCategories)
		('Reorganize'							editMessageCategories)
		-
		('Alphabetize'							alphabetizeMessageCategories)
		('Remove empty categories'			removeEmptyCategories)
		('Categorize all uncategorized'			categorizeAllUncategorizedMethods)
		('New Category...'						addCategory)
		('Rename...'								renameCategory)
		-
		('Remove'								removeMessageCategory))
