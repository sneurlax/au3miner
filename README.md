# au3miner

Simple tool for deploying and automating mining binaries on Windows x64 environments

### Autoupdate process

Place au3miner-latest.exe and au3miner-latest.exe.sig in the root of a USB drive (or in a subfolder called au3miner), where au3miner.exe.sig is the PGP-signed `SHA1,version` of au3miner-latest.exe

au3miner will watch for an au3miner-latest.exe to appear, check au3miner-latest.exe.sig's validity, check the SHA1 of au3miner-latest.exe, and will update itself if `version > $_Ver`

### Donation addresses

If you appreciate this work, please consider donating to the default addresses included in the code:

 * Monero [XMR]

    4Aqm2RebbpmZEATdPjzpHodLJeYMW8C5oX79jQxboJQhJ3sUU48BwmrerBbFfrVHi8acW6D6EgFTobGaoH2EnK1MVqhYmrf
 * Ethereum [ETH]

    0xa5d358F1e77F2360B996c714EE799A43E0cF183B
 * Decred [DCR]

    Dsm64tQLQwa613mfyfuoWfTRmyVAuc14PSM
 * SiaCoin [SC]

    0b1bd6e0a7c8a96911fe929a2ff52a889ab40f58736f52f88d56de0f4d2bb53e09c797c7a330
