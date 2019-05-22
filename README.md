

## Testnet

To run on `testnet`, add the `--testnet` flag to the command

```yaml
version: '3.7'

services:
  decred:
    image: 'crypdex/decred:1.4-x86_64'
    volumes:
      - /Volumes/T5/data/decred:/home/decred/.decred
    command: --testnet
```

## v1.4.0 Usage

https://docs.decred.org/wallets/cli/dcrd-and-dcrwallet-cli-arguments/

## dcrwallet

## dcrd

```
Usage:
  dcrd [OPTIONS]

Application Options:
  -A, --appdata=              Path to application home directory (default: /root/.dcrd)
  -V, --version               Display version information and exit
  -C, --configfile=           Path to configuration file (default: /root/.dcrd/dcrd.conf)
  -b, --datadir=              Directory to store data (default: /root/.dcrd/data)
      --logdir=               Directory to log output. (default: /root/.dcrd/logs)
      --nofilelogging         Disable file logging.
  -a, --addpeer=              Add a peer to connect with at startup
      --connect=              Connect only to the specified peers at startup
      --nolisten              Disable listening for incoming connections -- NOTE: Listening is automatically disabled if the
                              --connect or --proxy options are used without also specifying listen interfaces via --listen
      --listen=               Add an interface/port to listen for connections (default all interfaces port: 9108, testnet: 19108)
      --maxsameip=            Max number of connections with the same IP -- 0 to disable (default: 5)
      --maxpeers=             Max number of inbound and outbound peers (default: 125)
      --nobanning             Disable banning of misbehaving peers
      --banduration=          How long to ban misbehaving peers.  Valid time units are {s, m, h}.  Minimum 1 second (default:
                              24h0m0s)
      --banthreshold=         Maximum allowed ban score before disconnecting and banning misbehaving peers. (default: 100)
      --whitelist=            Add an IP network or IP that will not be banned. (eg. 192.168.1.0/24 or ::1)
  -u, --rpcuser=              Username for RPC connections
  -P, --rpcpass=              Password for RPC connections
      --rpclimituser=         Username for limited RPC connections
      --rpclimitpass=         Password for limited RPC connections
      --rpclisten=            Add an interface/port to listen for RPC connections (default port: 9109, testnet: 19109)
      --rpccert=              File containing the certificate file (default: /root/.dcrd/rpc.cert)
      --rpckey=               File containing the certificate key (default: /root/.dcrd/rpc.key)
      --rpcmaxclients=        Max number of RPC clients for standard connections (default: 10)
      --rpcmaxwebsockets=     Max number of RPC websocket connections (default: 25)
      --rpcmaxconcurrentreqs= Max number of concurrent RPC requests that may be processed concurrently (default: 20)
      --norpc                 Disable built-in RPC server -- NOTE: The RPC server is disabled by default if no rpcuser/rpcpass or
                              rpclimituser/rpclimitpass is specified
      --notls                 Disable TLS for the RPC server -- NOTE: This is only allowed if the RPC server is bound to localhost
      --nodnsseed             Disable DNS seeding for peers
      --externalip=           Add an ip to the list of local addresses we claim to listen on to peers
      --proxy=                Connect via SOCKS5 proxy (eg. 127.0.0.1:9050)
      --proxyuser=            Username for proxy server
      --proxypass=            Password for proxy server
      --onion=                Connect to tor hidden services via SOCKS5 proxy (eg. 127.0.0.1:9050)
      --onionuser=            Username for onion proxy server
      --onionpass=            Password for onion proxy server
      --noonion               Disable connecting to tor hidden services
      --torisolation          Enable Tor stream isolation by randomizing user credentials for each connection.
      --testnet               Use the test network
      --simnet                Use the simulation test network
      --regnet                Use the regression test network
      --nocheckpoints         Disable built-in checkpoints.  Don't do this unless you know what you're doing.
      --dbtype=               Database backend to use for the Block Chain (default: ffldb)
      --profile=              Enable HTTP profiling on given [addr:]port -- NOTE port must be between 1024 and 65536
      --cpuprofile=           Write CPU profile to the specified file
      --memprofile=           Write mem profile to the specified file
      --dumpblockchain=       Write blockchain as a flat file of blocks for use with addblock, to the specified filename
      --miningtimeoffset=     Offset the mining timestamp of a block by this many seconds (positive values are in the past)
  -d, --debuglevel=           Logging level for all subsystems {trace, debug, info, warn, error, critical} -- You may also specify
                              <subsystem>=<level>,<subsystem2>=<level>,... to set the log level for individual subsystems -- Use
                              show to list available subsystems (default: info)
      --upnp                  Use UPnP to map our listening port outside of NAT
      --minrelaytxfee=        The minimum transaction fee in DCR/kB to be considered a non-zero fee. (default: 0.0001)
      --limitfreerelay=       Limit relay of transactions with no transaction fee to the given amount in thousands of bytes per
                              minute (default: 15)
      --norelaypriority       Do not require free or low-fee transactions to have high priority for relaying
      --maxorphantx=          Max number of orphan transactions to keep in memory (default: 1000)
      --generate              Generate (mine) coins using the CPU
      --miningaddr=           Add the specified payment address to the list of addresses to use for generated blocks -- At least
                              one address is required if the generate option is set
      --blockminsize=         Mininum block size in bytes to be used when creating a block
      --blockmaxsize=         Maximum block size in bytes to be used when creating a block (default: 375000)
      --blockprioritysize=    Size in bytes for high-priority/low-fee transactions when creating a block (default: 20000)
      --getworkkey=           DEPRECATED -- Use the --miningaddr option instead
      --sigcachemaxsize=      The maximum number of entries in the signature verification cache (default: 100000)
      --nonaggressive         Disable mining off of the parent block of the blockchain if there aren't enough voters
      --nominingstatesync     Disable synchronizing the mining state with other nodes
      --allowoldvotes         Enable the addition of very old votes to the mempool
      --blocksonly            Do not accept transactions from remote peers.
      --acceptnonstd          Accept and relay non-standard transactions to the network regardless of the default settings for the
                              active network.
      --rejectnonstd          Reject non-standard transactions regardless of the default settings for the active network.
      --txindex               Maintain a full hash-based transaction index which makes all transactions available via the
                              getrawtransaction RPC
      --droptxindex           Deletes the hash-based transaction index from the database on start up and then exits.
      --addrindex             Maintain a full address-based transaction index which makes the searchrawtransactions RPC available
      --dropaddrindex         Deletes the address-based transaction index from the database on start up and then exits.
      --noexistsaddrindex     Disable the exists address index, which tracks whether or not an address has even been used.
      --dropexistsaddrindex   Deletes the exists address index from the database on start up and then exits.
      --nocfilters            Disable compact filtering (CF) support
      --dropcfindex           Deletes the index used for compact filtering (CF) support from the database on start up and then
                              exits.
      --piperx=               File descriptor of read end pipe to enable parent -> child process communication
      --pipetx=               File descriptor of write end pipe to enable parent <- child process communication
      --lifetimeevents        Send lifetime notifications over the TX pipe
      --altdnsnames=          Specify additional dns names to use when generating the rpc server certificate [$DCRD_ALT_DNSNAMES]

Help Options:
  -h, --help                  Show this help message
```

## dcrctl

https://docs.decred.org/wallets/cli/dcrctl-rpc-commands/

```
Usage:
  dcrctl [OPTIONS]

Application Options:
  -V, --version          Display version information and exit
  -l, --listcommands     List all of the supported commands and exit
  -C, --configfile=      Path to configuration file (default: /home/decred/.dcrctl/dcrctl.conf)
  -u, --rpcuser=         RPC username
  -P, --rpcpass=         RPC password
  -s, --rpcserver=       RPC server to connect to (default: localhost)
  -w, --walletrpcserver= Wallet RPC server to connect to (default: localhost)
  -c, --rpccert=         RPC server certificate chain for validation (default: /home/decred/.dcrd/rpc.cert)
  -j, --json             Print json messages sent and received
      --notls            Disable TLS
      --proxy=           Connect via SOCKS5 proxy (eg. 127.0.0.1:9050)
      --proxyuser=       Username for proxy server
      --proxypass=       Password for proxy server
      --testnet          Connect to testnet
      --simnet           Connect to the simulation test network
      --skipverify       Do not verify tls certificates (not recommended!)
      --wallet           Connect to wallet

Help Options:
  -h, --help             Show this help message

```

```
Chain Server Commands:
addnode "addr" "add|remove|onetry"
createrawtransaction [{"amount":n.nnn,"txid":"value","vout":n,"tree":n},...] {"address":amount,...} (locktime expiry)
debuglevel "levelspec"
decoderawtransaction "hextx"
decodescript "hexscript"
estimatefee numblocks
estimatesmartfee confirmations (mode="conservative")
estimatestakediff (tickets)
existsaddress "address"
existsaddresses ["address",...]
existsexpiredtickets "txhashblob"
existsliveticket "txhash"
existslivetickets "txhashblob"
existsmempooltxs "txhashblob"
existsmissedtickets "txhashblob"
generate numblocks
getaddednodeinfo dns ("node")
getbestblock
getbestblockhash
getblock "hash" (verbose=true verbosetx=false)
getblockchaininfo
getblockcount
getblockhash index
getblockheader "hash" (verbose=true)
getblocksubsidy height voters
getblocktemplate ({"mode":"value","capabilities":["capability",...],"longpollid":"value","sigoplimit":sigoplimit,"sizelimit":sizelimit,"maxversion":n,"target":"value","data":"value","workid":"value"})
getcfilter "hash" "filtertype"
getcfilterheader "hash" "filtertype"
getchaintips
getcoinsupply
getconnectioncount
getcurrentnet
getdifficulty
getgenerate
gethashespersec
getheaders "blocklocators" "hashstop"
getinfo
getmempoolinfo
getmininginfo
getnettotals
getnetworkhashps (blocks=120 height=-1)
getnetworkinfo
getpeerinfo
getrawmempool (verbose=false "txtype")
getrawtransaction "txid" (verbose=0)
getstakedifficulty
getstakeversioninfo (count)
getstakeversions "hash" count
getticketpoolvalue
gettxout "txid" vout (includemempool=true)
gettxoutsetinfo
getvoteinfo version
getwork ("data")
help ("command")
livetickets
missedtickets
node "connect|remove|disconnect" "target" ("perm|temp")
ping
rebroadcastmissed
rebroadcastwinners
searchrawtransactions "address" (verbose=1 skip=0 count=100 vinextra=0 reverse=false ["filteraddr",...])
sendrawtransaction "hextx" (allowhighfees=false)
setgenerate generate (genproclimit=-1)
stop
submitblock "hexblock" ({"workid":"value"})
ticketfeeinfo (blocks windows)
ticketsforaddress "address"
ticketvwap (start end)
txfeeinfo (blocks rangestart rangeend)
validateaddress "address"
verifychain (checklevel=3 checkdepth=288)
verifymessage "address" "signature" "message"
version

Wallet Server Commands (--wallet):
accountaddressindex "account" branch
accountsyncaddressindex "account" branch index
addmultisigaddress nrequired ["key",...] ("account")
addticket "tickethex"
consolidate inputs ("account" "address")
createmultisig nrequired ["key",...]
createnewaccount "account"
createrawssgentx [{"amount":n.nnn,"txid":"value","vout":n,"tree":n},...] votebits
createrawssrtx [{"amount":n.nnn,"txid":"value","vout":n,"tree":n},...] (fee)
createrawsstx [{"txid":"value","vout":n,"tree":n,"amt":n},...] amount [{"addr":"value","commitamt":n,"changeaddr":"value","changeamt":n},...]
createvotingaccount "name" "pubkey" (childindex=0)
dropvotingaccount
dumpprivkey "address"
estimatepriority numblocks
fundrawtransaction "hexstring" "fundaccount" ({"changeaddress":changeaddress,"feerate":feerate,"conftarget":conftarget})
generatevote "blockhash" height "tickethash" votebits "votebitsext"
getaccount "address"
getaccountaddress "account"
getaddressesbyaccount "account"
getbalance ("account" minconf=1)
getcontracthash ["filepath",...]
getmasterpubkey ("account")
getmultisigoutinfo "hash" index
getnewaddress ("account" "gappolicy")
getpaytocontractaddress ["filepath",...]
getrawchangeaddress ("account")
getreceivedbyaccount "account" (minconf=1)
getreceivedbyaddress "address" (minconf=1)
getstakeinfo
getticketfee
gettickets includeimmature
gettransaction "txid" (includewatchonly=false)
getvotechoices
getwalletfee
importprivkey "privkey" ("label" rescan=true scanfrom)
importscript "hex" (rescan=true scanfrom)
keypoolrefill (newsize=100)
listaccounts (minconf=1)
listlockunspent
listreceivedbyaccount (minconf=1 includeempty=false includewatchonly=false)
listreceivedbyaddress (minconf=1 includeempty=false includewatchonly=false)
listscripts
listsinceblock ("blockhash" targetconfirmations=1 includewatchonly=false)
listtickets
listtransactions ("account" count=10 from=0 includewatchonly=false)
listunspent (minconf=1 maxconf=9999999 ["address",...])
lockunspent unlock [{"amount":n.nnn,"txid":"value","vout":n,"tree":n},...]
purchaseticket "fromaccount" spendlimit (minconf=1 "ticketaddress" numtickets "pooladdress" poolfees expiry "comment" ticketfee)
redeemmultisigout "hash" index tree ("address")
redeemmultisigouts "fromscraddress" ("toaddress" number)
renameaccount "oldaccount" "newaccount"
rescanwallet (beginheight=0)
revoketickets
sendfrom "fromaccount" "toaddress" amount (minconf=1 "comment" "commentto")
sendmany "fromaccount" {"address":amount,...} (minconf=1 "comment")
sendtoaddress "address" amount ("comment" "commentto")
sendtomultisig "fromaccount" amount ["pubkey",...] (nrequired=1 minconf=1 "comment")
setticketfee fee
settxfee amount
setvotechoice "agendaid" "choiceid"
signmessage "address" "message"
signrawtransaction "rawtx" ([{"txid":"value","vout":n,"tree":n,"scriptpubkey":"value","redeemscript":"value"},...] ["privkey",...] flags="ALL")
signrawtransactions ["rawtx",...] (send=true)
stakepooluserinfo "user"
startautobuyer "account" "passphrase" (balancetomaintain maxfeeperkb maxpricerelative maxpriceabsolute "votingaddress" "pooladdress" poolfees maxperblock)
stopautobuyer
sweepaccount "sourceaccount" "destinationaddress" (requiredconfirmations feeperkb)
verifyseed "seed" (account)
walletinfo
walletlock
walletpassphrase "passphrase" timeout
walletpassphrasechange "oldpassphrase" "newpassphrase"
```