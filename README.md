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
In the `/examples` folder you can find a docker-compose file that utilises this image (along with a Cloudflare and IPSEC image) to provide a one step VPN server with DNS over HTTPS (DoH).