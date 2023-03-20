# Performance Test Report

*Unit: second

*Testing on: Mac mini M1 2020, 4 cores, 8 GB memory

*Results for ChiralDB Free can be reproduced by running ```cargo bench``` under [ChrialDB project](https://github.com/chiral-data/chiral-db)

|             | ChiralDB Free | ChiralDB Pro |
| :----------- | -----------: | -----------: |
| OpenBabel ECFP4 Fingerprint generating - 100 molecules | 13.8e-3       | 5.6e-3 |
| OpenBabel ECFP4 Fingerprint generating - 200 molecules | 31.0e-3       | 8.6e-3 |
| OpenBabel ECFP4 Fingerprint generating - 500 molecules | 78.1e-3       | 19.2e-3 |
| OpenBabel ECFP4 Fingerprint generating - 1000 molecules | 158.4e-3       | 38.9e-3 |
| OpenBabel ECFP4 Tanimoto Similarity Query - 1000 molecules | 136.4e-6       | 74.8e-6 |
| OpenBabel ECFP4 Tanimoto Similarity Query - 2000 molecules | 274.8e-6       | 104.5e-6 |
| OpenBabel ECFP4 Tanimoto Similarity Query - 5000 molecules | 687.9e-6       | 205.1e-6 |
| OpenBabel ECFP4 Tanimoto Similarity Query - 10000 molecules | 1372.5e-6     | 364.7e-6 |
| OpenBabel Substructure Query - 100 molecules | 22.3e-3       | 4.6e-3 |
| OpenBabel Substructure Query - 200 molecules | 38.3e-3       | 8.9e-3 |
| OpenBabel Substructure Query - 500 molecules | 84.7e-3       | 20.7e-3 |
| OpenBabel Substructure Query - 1000 molecules | 182.5e-3       | 40.4e-3 |
