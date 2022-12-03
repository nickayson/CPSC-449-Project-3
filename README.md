# WordleCPSC449
This is a project for class. An API and database system that can handle requests relating to the game "Wordle".
In this project we create two micro services and implement reverse proxys and load balancing.

## Developed by:      
Nicholas Ayson   
Hardik Vagrecha   
Michael Collins   
Maria Ortega   


7 PM: Tuesday Class
Section-01         


# Welcome to Project 3

## Set-Up Instructions:

1) Copy the nginx.txt contents into the nginx config file on your system
2) Restart the nginx file with the nginx restart command "sudo service nginx restart"
3) Make var folder with primary secodary and third
4) Inside the api directory run "bin/init.sh" to initiate db
5) run "foreman start"
6) The servers should be running after this
7) Open a new terminal and begin making API calls below


## API calls using http:

	Sign-Up:                          http POST tuffix-vm/signup username=[example] password=[example]

	Make new game:                    http --auth username:password POST tuffix-vm/makeGame

	Get all current games for user:   http --auth username:password GET  http://tuffix-vm/getGames

	Make a guess for a game:          http --auth username:password POST tuffix-vm/makeGuess guess=[apple] game_id=[example]

	Get game status:                  http --auth username:password GET tuffix-vm/gameStatus/[game_id]

	Leaderboard results:              http POST http://127.0.0.1:5100/results/ game_id=[game_id] username=[username] win=[1 or 0] num_guesses=[numofguesses]

	Leaderboard top-scores:           http GET http://127.0.0.1:5100/top-scores/



## Online References:
https://dev.to/danielkun/nginx-everything-about-proxypass-2ona
http://nginx.org/en/docs/http/ngx_http_upstream_module.html
https://stackoverflow.com/questions/9523910/iterating-through-a-redis-sorted-set-to-update-an-active-record-table
