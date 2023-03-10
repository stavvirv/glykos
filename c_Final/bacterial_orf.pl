print "Παρακαλώ εισάγετε μία νουκλεοτιδική αλληλουχία, χωρίς να δίνετε απαραίτητα τον προσανατολισμό της και εγώ θα ψάξω για την ύπαρξη διαφόρων orfs εξετάζοντάς την και πCρος τις κατευθύνσεις. Σε περίπτωση που γνωρίζετε τον προσανατολισμό της δοθείσας αλληλουχίας απλώς αγνοήστε τα orfs που βρήκα έχοντας θεωρήσει ότι η αλυσίδα θα μπορούσε να έχει οποιονδήποτε προσανατολισμό.\n";
while($sequence = <STDIN>)
{
if ($sequence =~ /[^ATGC\n]/i)
	{
	print "Αυτό που πληκτρολογήσατε δε μοιάζει με αλληλουχία DNA. Μάλλον κάτι πήγε στραβά.\n";
	}
else 
{
$sequence_r = reverse($sequence);
while ($sequence =~ /(ATG)/i)
        {
        	$str_codon = $&;
        	$middle = $';
	        if($middle =~ /([ATGC][ATGC][ATGC])*?(TAA|TAG|TGA)/i)
                {
                print "Θεωρώντας την τη κωδική αλυσίδα του γονιδίου, βρήκα αυτό το orf διαβάζοντάς την με αυτή την κατεύθυνση (-->):5'-",$str_codon ,$&, "-3'.\n";
                }
	$sequence = $middle;
	}
while ($sequence_r =~ /(ATG)/i)
        {
		$str_codon_r = $&; 
        	$middle_r = $';
        	if ($middle_r =~ /([ATGC][ATGC][ATGC])*?(TAA|TAG|TGA)/i)
        	{
        	print "Θεωρώντας την τη κωδική αλυσίδα του γονιδίου, βρήκα αυτό το orf διαβάζοντάς την με αυτή την κατεύθυνση (<--):5'-",$str_codon_r,$&, "-3'.\n";
		}
	$sequence_r = $middle_r;
	}
while ($sequence =~ /(TAC)/i)
	{
		$str_codon_n = $&;
		$middle_n = $';
		if($middle_n =~ /([ATGC][ATGC][ATGC])*?(ACT|ATT|ATC)/i)
		{
		print "Θεωρώντας την τη μη κωδική αλυσίδα του γονιδίου, βρήκα αυτό το orf διαβάζοντάς την με αυτή την κατεύθυνση (-->):3'-", $str_codon_n,$&,"-5' .\n";
		}
	$sequence = $middle_n;
	}
while ($sequence_r =~ /(TAC)/i)
	{
		$str_codon_r_n = $&;
		$middle_r_n = $';
		if ($middle_r_n =~ /([ATGC][ATGC][ATGC])*?(ACT|ATT|ATC)/i)
		{
		print "Θεωρώντας την τη μη κωδική αλυσίδα του γονιδίου, βρήκα αυτό το orf διαβάζοντάς την με αυτή την κατεύθυνση (<--):3'-", $str_codon_r_n,$&,"-5.\n";
		}
	$sequence_r = $middle_r_n;
	}
print "Κάπου εδώ τελείωσα το ψάξιμο. Αν παραπάνω δεν έχει εμφανιστεί τίποτα, τότε δεν έχει ανιχνευτεί κανένα orf, σε κανέναν προσανατολισμό, θεωρώντας την δοθείσα αλληλουχία είτε την κωδική, είτε τη μη κωδική αλυσίδα. Σε αντίθετη περίπτωση θα πρέπει να εμφανίζεται κάθε ένα orf που βρέθηκε. Σε κάθε περίπτωση μπορείτε να πληκτρολογήσετε την επόμενη αλληλουχία ή να φύγετε από το πρόγραμμα πατώντας ταυτόχρονα Ctrl και c (^C). \n";
}
}

