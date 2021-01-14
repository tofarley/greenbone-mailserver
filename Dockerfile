FROM securecompliance/gvm:20.08-v2

RUN apt update && apt install -y \
	msmtp \
	msmtp-mta \
	mailutils \
	openssl \
	ca-certificates

# DOWNLOAD CERTS -------------------------
RUN update-ca-certificates
RUN ln -sf /usr/bin/msmtp /usr/sbin/sendmail
# msmtprc is injected via kubernetes secret
#COPY mail/msmtprc /etc
CMD while true; do sleep 1000; done
