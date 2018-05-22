##Assignment 2
##Author:Kyle Naddeo



makeCacheMatrix <- function(x = matrix()) {
        invert=NULL               #Create object
        set=function(y){
                x<<-y             #store y in diffrent enviroment
                invert<<-NULL     #store invert in diffrent enviroment
        }
        get=function()x           #get the value x
        setInv=function(solveMatix)invert<<-solveMatix   #set the value of the solved
                                                           #matrix in diffrent enviroment
        getInv=function()invert    #get the value of invert
        list(set=set,get=get,setInverse=setInv,getInverse=getInv)   #create a list
}



cacheSolve <- function(x, ...) {
        invert=x$getInv()     #get value of invert from diffrent enviroment
        if(!is.null(invert)){    #Check If there is a value for invert
                return(invert)   #Return result
        }
        data = x$get()           #get value of x from other enviroment and set it to data
        invert = solve(data)     #Solve matrix inversion and set it to invert
        x$setInv(invert)         #Set the new value of invert in other enviroment
        invert                   #Return value
        
        
        
}