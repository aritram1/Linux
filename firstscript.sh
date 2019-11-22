#Bash script examples

# Try to create variable

# We can create a variable by declaring it with local or without lcoal keyword. With local keyword the variable becomes scoped.
# V. Imp : always declare variable without any extra space in the line. no space beside = sign.
# i.e. name="aritra" and NOT name = "aritra" [Remove EXTRA spaces]

firstName="Aritra"


# a function can be declared like this
get_FullName(){
	local salutation="Mr." #this is declared with local see is not avaialble outside the function scope
	lastName=$(get_LastName) #a function call that reruns some value
	echo "$salutation $firstName $lastName" #echo can also be used as return statement, like here the full name is returned from the function
}

#a function can be declared with the function keyword as well. For brevity it's prefferred to drop it
function get_LastName(){
	echo "mukherjee"
}

#Arguments are implicitly assigned as sequencial variables $1, $2 .. etc ($0 is always passed as filename)
get_Arguments(){
	echo "First argument is filename. i.e. $0" #it will echo firstscript.sh
	echo "Second arguments is $1"
	echo "Third arguments is $2"
}

#let's test
echo "First name is $firstName" #will work
echo "Salutation is $salutation" #will not work, since salutation is local variable
echo "name is $(get_FullName) (from function)" #the function is called inside (). like $(my_func) where as variables are presented without () as $varName
echo "$(get_Arguments 10 20)" #the arguments passed to a function are written one after another

# credits
# https://stackoverflow.com/questions/6212219/passing-parameters-to-a-bash-function
# https://devhints.io/bash
