# ServerHandler

This is how you can Install openresty nginx for ubuntu 16.04. I recommand not having regular nginx as Openresty will be bundled with all you need to run a normal nginx server.

## Note: 
if nginx is already installed and running, try disabling and stopping it before installing openresty like below:
```
sudo systemctl disable nginx
sudo systemctl stop nginx
```
Otherwise the installation might fail.

You can add our APT repository to your Ubuntu system so as to easily install our packages and receive updates in the future (via the ```apt-get update command```).

To add the repository, just run the following commands (only need to run once for each system): <br/>
1 import our GPG key: <br/>
```
wget -qO - https://openresty.org/package/pubkey.gpg | sudo apt-key add -
```

2 for installing the add-apt-repository command <br/>
(you can remove this package and its dependencies later): <br/>
```
sudo apt-get -y install software-properties-common
```

3 add the our official APT repository: <br/>
```
sudo add-apt-repository -y "deb http://openresty.org/package/ubuntu $(lsb_release -sc) main" 
```

4 to update the APT index: <br/>
```
sudo apt-get update
``` 

Then you can install a package, say, openresty, like this: <br/>
```
sudo apt-get install openresty
```

Then you can use the command below to start, stop restart reload:
```
sudo systemctl start openresty
sudo systemctl stop openresty
sudo systemctl restart openresty
```
Following will be some example running your script from OpenResty using ngx_lua
