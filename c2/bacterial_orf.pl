print "Please write the nucleotide sequence \n";

while($sequence = <STDIN>)
{
$sequence_r = reverse($sequence);
while ($sequence =~ /(ATG)/i)
        {
        	$str_codon = $&;
        	$middle = $';
	        if($middle =~ /([ATGC][ATGC][ATGC])+?(TAA|TAG|TGA)/i)
                {
                print "Found this one coding region:5'-",$str_codon ,$&, "-3'.\n";
                }
	$sequence = $middle;
	}
while ($sequence_r =~ /(ATG)/i)
        {
		$str_codon_r = $&; 
        	$middle_r = $';
        	if ($middle_r =~ /([ATGC][ATGC][ATGC])+?(TAA|TAG|TGA)/i)
        	{
        	print "Found this one coding region reading the sequence reversly:5'-",$str_codon_r,$&, "-3'.\n";
		}
	$sequence_r = $middle_r;
	}
print "That's all I found!\n";
}
