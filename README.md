# PAUP_parsers
Please cite use of this software.


[![DOI](https://zenodo.org/badge/97757611.svg)](https://zenodo.org/badge/latestdoi/97757611)



These are a collection of scripts I've written to process PAUP\* (`Swofford, D. L. 2002. PAUP*. Phylogenetic Analysis Using Parsimony (*and Other Methods). Version 4. Sinauer Associates, Sunderland, Massachusetts.`) output. 

**PAUP_Indel_parser.pl**

Parses PAUP\* indel coding output listing apomorphies (`DescribeTrees / apoList;`) for indels on a given topology. Only outputs unambiguous ("=") indels with consistency index = 1. Input looks like:

    node_33 --> node_22          114            1   0.333  0 --> 1
                                 135            1   1.000  1 --> 0
                                 169            1   0.333  0 ==> 1
                                 191            1   1.000  0 ==> 1
Output looks like:

    node_24<->node_27	Indels	48
    node_27-->node_28	Indels	5
    node_28-->node_30	Indels	5
    node_30-->node_32	Indels	13

Execute with command 'perl PAUP_Indel_parser.pl <your_paup_output>'.
