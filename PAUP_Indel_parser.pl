#!/usr/bin/perl
$counter = 0;
@sites=();

#Open file
open (FILE, $ARGV[0]) || die "where is the key file?\n";
$line = <FILE>;
chomp $line;


###################################Process first line#####################################
@array = split (" ", $line);

###########Subloop for lines that have two node labels
if ($array[2] =~ m/node/){
	print "$array[0]$array[1]$array[2]\t";

			if ($array[5] == 1.000){
					if ($array[7] =~ m/=/){
						$counter++;
						push (@sites, $array[3]);
						} else {
						}
				} else {
				}
		} else {

##########Subloop for lines containing taxon names
	print "$array[0]$array[1]$array[2]_$array[3]\t";

		if ($array[6] == 1.000){
					if ($array[8] =~ m/=/){
						$counter++;
						push (@sites, $array[4]);
						} else {
						}
				} else {
				}
	}

#################################Start main loop##########################################
until (eof FILE) {
	$line = <FILE>;
	chomp $line;

#Process further lines	
	if ($line =~ m/node/){

#Get rid of prior information
		print "Indels\t".$counter."\n";

##########Uncomment this and below to print which indels
# 		foreach (@sites) {
# 			print "$_\n";
# 			}

#Reset arrays and counter
		@sites=();
		$counter=0;

		@array = split (" ", $line);
	
		foreach (@sites) {
			print "$_\n";
			}


##########################Log sites for header lines######################################
##########Subloop for lines that have two node labels

			if ($array[2] =~ m/node/){
			print "$array[0]$array[1]$array[2]\t";

					if ($array[5] == 1.000){
							if ($array[7] =~ m/=/){
								$counter++;
								push (@sites, $array[3]);
								} else {
								}
						} else {
						}

				} else {
				

###########Subloop for lines containing taxon names
			print "$array[0]$array[1]$array[2]_$array[3]\t";

				if ($array[6] == 1.000){
							if ($array[8] =~ m/=/){
								$counter++;
								push (@sites, $array[4]);
								} else {
								}
						} else {
						}
				}
		} else {


#########################Log sites for non-header lines###################################
		@array = split (" ", $line);
		if ($array[2] == 1.000){
				if ($array[4] =~ m/=/){
					$counter++;
					push (@sites, $array[0]);
					} else {
					}
			} else {
			}
		}
}

###########Log final data
print "Indels\t".$counter."\n";

###########Uncomment this and above to print which indels
# foreach (@sites) {
# 	print "$_\n";
# 	}

end;
