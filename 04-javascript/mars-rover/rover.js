var myRover = {
  position: [0,0], 
  direction: 'N'
};
var lastPosition = [0,0];

var grid = new Array(10);
for (i=0; i<10; i++){
  grid[i] = new Array(10);
}

//Prueba OBST
//grid[3][0]='OBST';

function checkLimits(rover){
  if (rover.position[0]===10)
    rover.position[0]=0;
  if(rover.position[1]===10)
    rover.position[1]=0;
  if(rover.position[0]===-1)
    rover.position[0]=9;
  if(rover.position[1]===-1)
    rover.position[1]=9;
  return rover;
}

function roverOnGrid(rover, grid, lastPosition){

  if(grid[rover.position[0]][rover.position[1]] !== 'OBST')
  {
    grid[rover.position[0]][rover.position[1]] = 'ON';
    clearpath=true;
  }
  else if(grid[rover.position[0]][rover.position[1]] === 'OBST')
  {
    console.log('There is an obstacle on x: ' + rover.position[0] + ' and y: ' + rover.position[1]);
    console.log('Rover holds position on x: '+ lastPosition[0] + ' and y: ' + lastPosition[1]);

    rover.position[0]=lastPosition[0];
    rover.position[1]=lastPosition[1];
    clearpath=false;
  }
  return clearpath;
}


function goForward(rover) {

  lastPosition[0]=rover.position[0];
  lastPosition[1]=rover.position[1];

  switch(rover.direction) {
    case 'N':
      rover.position[0]++
      break;
    case 'E':
      rover.position[1]++
      break;
    case 'S':
      rover.position[0]--
      break;
    case 'W':
      rover.position[1]--
      break;
  };

  checkLimits(rover);
  clearpath = roverOnGrid(rover, grid, lastPosition);
  console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
;
return clearpath;
}

//goForward(myRover);
//goForward(myRover);

function goBack(rover) {

  lastPosition[0]=rover.position[0];
  lastPosition[1]=rover.position[1];

  switch(rover.direction) {
    
    case 'N':
      rover.position[0]--
      break;
    case 'E':
      rover.position[1]--
      break;
    case 'S':
      rover.position[0]++
      break;
    case 'W':
      rover.position[1]++
      break;
  };
  checkLimits(rover);
  clearpath= roverOnGrid(rover, grid, lastPosition);
  console.log("New Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]")
  return clearpath;
}

//goBack(myRover);
//goBack(myRover);

function turnLeft(rover){
    switch(rover.direction) {
    case 'N':
      rover.direction = 'W';
      break;
    case 'E':
      rover.direction = 'N';
      break;
    case 'S':
      rover.direction = 'E';
      break;
    case 'W':
      rover.direction = 'S';
      break;
  };
  console.log(myRover);

}

function turnRight(rover){
      switch(rover.direction) {
    case 'N':
      rover.direction = 'E';
      break;
    case 'E':
      rover.direction = 'S';
      break;
    case 'S':
      rover.direction = 'W';
      break;
    case 'W':
      rover.direction = 'N';
      break;
  };
  console.log(myRover);
}

function sequenceCommands(sequence){
  i=0;
  var clearpath = true;
  while((i<sequence.length)&&(clearpath===true)){
    switch(sequence[i]){
      case 'f':
        clearpath = goForward(myRover);
        break;
      case 'b':
        clearpath = goBack(myRover);
        break;
      case 'r':
        turnRight(myRover);
        break;
      case 'l':
        turnLeft(myRover);
        break;
    };
    i++;
  }
  //console.log(myRover);
  //console.log(grid);
}

sequenceCommands('fffrfflfffbbfffffffffff');


