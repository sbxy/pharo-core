coercionMayFail
	"answer true if argument coercion ST->C may fail due to passing incomatible argument type.
	Some types could accept any ST object as argument and therefore never fail,
	and we don't need to check a primitive failuer before making a call.
	By default, asnwer true
	"
	^ true