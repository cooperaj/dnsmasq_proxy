DNSmasq Proxy
======

![](https://img.shields.io/docker/pulls/cooperaj/dnsmasq_proxy.svg?style=flat-square)
![](https://img.shields.io/github/license/cooperaj/dnsmasq_proxy.svg?style=flat-square)

A simple dnsmaq configuration that forwards requests to an upstream server. 

## Configuration
The image takes two environment variables

`VPN_DNS_SRV` - The hostname of a dns server  
`VPN_DNS_SRV_PORT` - The port number of that server (optional)

### Example usage
In the `/examples` folder you can find a docker-compose file that utilises this image (along with a Cloudflare and IPSec image) to provide a one step VPN server with DNS over HTTPS (DoH).

  1. Edit the compose file with your desired credentials
  2. Run `docker-compose up -d`

The [IPSec image](https://hub.docker.com/r/hwdsl2/ipsec-vpn-server) has a number of advanced configuration options that you might want to take a look at. These can be easily added to your docker-compose file to customise your VPN.