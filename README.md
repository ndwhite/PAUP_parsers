# PAUP_parsers
Please cite use of this software.

These are a collection of scripts I've written process PAUP\* output. 

PAUP_Indel_parser.pl

Parses PAUP\* indel coding output listing apomorphies (`DescribeTrees / apoList`) for indels on a given topology. Only outputs unambiguous ("=") indels with consistency index = 1. Input looks like:

         node_33 --> node_22          114            1   0.333  0 --> 1
                                      135            1   1.000  1 --> 0
                                      169            1   0.333  0 ==> 1
                                      191            1   1.000  0 ==> 1

