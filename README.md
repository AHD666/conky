# conky
- Config files for conky to monitor different resources. Each type is a seperate config file.
- They are started by 'callconky'
	- .conkyrc-cpu		CPU Monitor
	- .conkyrc-drives 	Storage IO and disk space
	- .conkyrc-net 		Network IO
 	- .conkyrc-ram 		RAM
	- .conkyrc-service 	Service Monitor
- Modifications needed in all configs
	- xftfont
	- alignment
	- gap_x
	- gap_y
- Modifications needed in .conkyrc-service
	- Hostnames and ports (set it to stuff you need to monitor)
	- Example for one host:
		- ${execpi 10 ./pingtest-dns hostname}
		- ${execpi 10 ./portlookup hostname port port name}
		- ${execpi 10 ./portlookup hostname 80 HTTP}
- conkyrc-service starts various shell scripts which in turn need a few other programs to run
	- nmap
	- nslookup
	- ping
- pingtest-dns <some.system.name>
	- checks if the system is available
	- 3 cases: online / offline / dns error
	- gives back a conky line with the result.
	- **10.0.0.10# and 10.0.0.11# need to be adjusted to your network. Like: grep -v '192.168.0.0...'
- portlookup <system.name> <port to check> <Port name>:
	- checks a port on a system with nmap
	- 2 cases port: port reachable / service
	- gives back a conky line with the result.




