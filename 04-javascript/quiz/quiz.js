var user = {};
var responses = []; 


function question1() {
  var name = prompt('What is your name?')
  user.name = name
}

question1();


function question2() {

  var firstQuestion = prompt('Does null === 0 ? (Yes or No)')

// why do you need to convert the answer to lowercase?
  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false
  } else {
// what if the user writes something other than yes or no? 
// they will have to answer the question again
    alert("Please answer either Yes or No");
    return question2();
  }
  responses.push(firstQuestion);
 // add the true or false value to the responses array
}

question2();
question2();


/*function question3() {
	var js = prompt ('Which is your favourite day of the weekend: Friday, Saturday or Sunday?');
	js = js.toLowerCase();
	switch (js){
		case 'friday':
		  alert('Starting the weekend...');
		break;

		case 'saturday':
		  alert('In the middle of the weekend...');
		break;

		case 'sunday':
		  alert('Tomorrow is Monday :((')
		break;

		default: 
		alert('I said, weekend!');
		break;

	}
}

question3();*/


function evaluate(responsesArray){
	var responsesYes=0;
	var responsesNo=0;

	console.log(responsesArray);

	for (i=0; i<responsesArray.length; i++)
	{
		if (responsesArray[i]===true)
			responsesYes++;
		else
			responsesNo++;
	}
	user.yes = responsesYes;
	user.no = responsesNo;

	showResults();

}

function showResults(){
	console.log(user.yes);
	console.log(user.no);

}

evaluate(responses);


