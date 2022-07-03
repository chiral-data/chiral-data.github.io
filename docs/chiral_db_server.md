# 3 Ways to start a ChiralDB gRPC Server

## 1. Pull and Run the Demo Docker Image Locally

We proivde a demo docker image for testing purposes with fingerprint data of 10k molecules from [ChEMBL](https://chembl.gitbook.io/chembl-interface-documentation/downloads).

```bash
docker pull chiraljp/chiral-db-server              
docker run -p 10000:10000 chiraljp/chiral-db-server:latest
```

Then, the service will be available via [localhost:10000](localhost:10000)


## 2. Build the Server Locally

Local build can be flexible for data configuration.

```bash
# First of all, clone the project.
git clone https://github.com/chiral-data/chiral-db-grpc.git
```

Then, modify the file ChiralDB.toml for your own data configuration. 5 parameters are required to set a valid `fp_doc`.
- `name` acts as the "id" of a `fp_doc`. It will be used as a parameter of a query method. Multiple `fp_doc`s can be set with their unique names.  
- Fingerprint `kind` can be selected from the list [here](https://docs.rs/chiral-db/latest/chiral_db/types/enum.FingerprintKind.html).
- `nbits` represents how many bits of the fingerprint data for one molecule. For normal practice, it's set as 512, 1024, 2048, 4096, ... Memory usage should be paid attention to while you have a large amount of molecule with a large `nbits`, since ChiralDB puts all the data in memory for the purpose of a better performance.
- `filepath` is where the data file locates.
- Currently `source` can be set as "Chembl" only with a reference list [here](https://docs.rs/chiral-db/latest/chiral_db/types/enum.Source.html).

```toml
# ChiralDB.toml
[[fp_doc]]
name = "ChEMBL"
kind = "OpenBabelECFP4"
nbits = 2048
filepath = "./data/chembl_30_chemreps_10k.txt"
source = "Chembl"

[[fp_doc]]
name = "Another"
......
```

Where the data file is ready and the configuration is set, we can build and run the server.

```
cargo build
cargo run --bin chiral-db-server
```

## 3. Build a Customized Docker Image

After tuning the codes according the steps above, the docker image can be rebuild and started with your own data and configuration.

```
docker build -t chiral-db-server-new .
docker run -p 10000:10000 chiral-db-server-new
```