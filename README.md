# trobot [![Build Status](https://travis-ci.org/devacto/toy-robot.svg?branch=master)](https://travis-ci.org/devacto/toy-robot) [![Code Climate](https://codeclimate.com/github/devacto/toy-robot/badges/gpa.svg)](https://codeclimate.com/github/devacto/toy-robot)[![Issue Count](https://codeclimate.com/github/devacto/toy-robot/badges/issue_count.svg)](https://codeclimate.com/github/devacto/toy-robot)
Toy robot simulation in Ruby.

## Usage
`./bin/trobot -f [path/to/file]`
* One file can only contain one toy robot.
* Runs commands from a file. Once it sees a `REPORT`, it will exit and display output.
* If it does not see a `REPORT` and has reached the end of the file, it will display output.
* Start by reading a `PLACE` command. If can't find it, will exit straight away.

### Try using test inputs
* `./bin/trobot -f test-data/test-01.command`
* `./bin/trobot -f test-data/test-02.command`
* `./bin/trobot -f test-data/test-03.command`

## Testing

`rake` runs all unit tests

* RSpec for tests
* SimpleCov for code test coverage.
* Code Climate for code quality metrics.

## Build
* Travis for CI.

## About the toy robot

### Description
* The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units.
* There are no other obstructions on the table surface.
* The robot is free to roam around the surface of the table, but must be prevented from falling to destruction. Any movement that would result in the robot falling from the table must be prevented, however further valid movement commands must still be allowed.

### Instruction
* Create an application that can read in commands of the following form -
```
PLACE X,Y,F
MOVE
LEFT
RIGHT
REPORT
```

* PLACE will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST.
* The origin (0,0) can be considered to be the SOUTH WEST most corner.
* The first valid command to the robot is a PLACE command, after that, any sequence of commands may be issued, in any order, including another PLACE command. The application should discard all commands in the sequence until a valid PLACE command has been executed.
* MOVE will move the toy robot one unit forward in the direction it is currently facing.
* LEFT and RIGHT will rotate the robot 90 degrees in the specified direction without changing the position of the robot.
* REPORT will announce the X,Y and orientation of the robot.
* A robot that is not on the table can choose to ignore the MOVE, LEFT, RIGHT and REPORT commands.
* Provide test data to exercise the application.

### Constraints
* The toy robot must not fall off the table during movement. This also includes the initial placement of the toy robot.
* Any move that would cause the robot to fall must be ignored.

### Example Input and Output
```
PLACE 0,0,NORTH
MOVE
REPORT
```
Output: `0,1,NORTH`

```
PLACE 0,0,NORTH
LEFT
REPORT
```
Output: `0,0,WEST`

```
PLACE 1,2,EAST
MOVE
MOVE
LEFT
MOVE
REPORT
```
Output: `3,3,NORTH`
