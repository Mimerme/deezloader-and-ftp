# Deezloader & FTP
Run 2 docker images (one for deezloader one for the FTP) so that you can download and transfer music to any device easily

## Requirements
- Docker installed and properly configured
- Preferably a *NIX machine (although the installtion scripts can easily be used on Windows with some modificaton)

## Installation
- Clone the repo (duh)
- Run ./setup
	- This will prompt you to make a new FTP user account.
	- The script also creates 2 new volumes (one for the FTP user information and one for the saved music)
	- The script also downloads the FTP image and starts a container with it temporarily to setup the new user
- Run ./start to start both the Deezloader instance and the FTP server

## Notes
- The Deezloader server is downloaded through yarn
- The FTP image used is [pure-ftpd](http://github.com/stilliard/docker-pure-ftpd)
- Connect to your browser with localhost:1720 to download music
- connect with an FTP client to localhost:21 to transfer music
- The following ports are used (1720 for deezloader, 21 for the FTP command stream, 30000-30009 for the FTP data stream). All of this can be configured in ./start & ./setup
