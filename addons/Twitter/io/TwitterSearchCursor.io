TwitterSearchCursor := Object clone do(
	search ::= nil
	
	index ::= -1
	results ::= nil
	
	init := method(
		setResults(List clone)
	)	
	
	next := method(
		if(index == results size - 1) then(
			index = index + 1
			fetchNext
		) else(
			index = index + 1
		)
		
		result
	)
	
	result := method(
		results at(index)
	)
	
	fetchNext := method(
		results appendSeq(search setPage(search page + 1) results)
		self
	)
)