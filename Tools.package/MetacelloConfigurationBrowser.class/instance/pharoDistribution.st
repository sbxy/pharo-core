defaults
pharoDistribution
	"Returns the correct pharo distribution url"
	
	^'http://ss3.gemstone.com/ss/MetaRepoForPharo', SystemVersion current major asString, SystemVersion current minor asString