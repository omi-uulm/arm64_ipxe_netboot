FROM alpine

RUN apk add git openssh-client gcc binutils make perl xz-dev mtools musl-dev

RUN git clone git://git.ipxe.org/ipxe.git
WORKDIR /ipxe/src
ADD boot.ipxe ./
ADD scripts/make_arm64_snp.sh ./

ENTRYPOINT [ "./make_arm64_snp.sh" ]
