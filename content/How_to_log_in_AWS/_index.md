---
title: "How to log in AWS"
---

## Connect to pre-configured AWS machine

```sh
KEY="path/to/your/key.pem"
chmod 600 ${KEY}
#
USER= #e.g. user=user2
IP=54.200.240.166
#
ssh -i ${KEY} ${USER}@${IP}
```

E.g., for user1: 

```sh
KEY="c1.pem"
chmod 600 ${KEY}
USER=user1
IP=54.200.240.166
ssh -i ${KEY} ${USER}@${IP}
```

More information is available [here](/{{<myPackageUrl>}}docs/Connection_to_the_Amazon_EC2_service_.pdf) if needed. 

## Today's IP

```sh
IP="54.200.240.166"
```