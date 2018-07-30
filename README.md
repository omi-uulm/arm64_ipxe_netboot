# arm64_ipxe_netboot
Build ipxe images for arm64

ipxe sourcecode from:
http://git.ipxe.org/ipxe.git

currently only works on arm64 machines

## Customize
for direct chainloading (if your dhcp server doesn't provide) edit 
```
compile_ipxe/chain.ipxe
```

## Install and usage
```
docker build -t makesnp .
#for usage
docker run -it makesnp -h

#get binary with docker cp after succesful build
docker cp <containerid>:/ipxe/src/bin-arm64-efi/snp.efi ./
```
