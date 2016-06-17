#!perl
#use strict;

#ver 0.1


print "Processing .air files :\n";


foreach $filename(<*.air>)
{
	
	print "\t" . $filename . " ... ";
	
	$filename =~ s/\.cns//i;
	
			
	open  InputFH, "< $filename";
	open ( OutputFH, "> $filename.new" );
	while( $line = <InputFH> )
	{		
								
				
		
			
						if ($line =~ /^\s*\d.*/i)			
						{
						
						#$line =~  s/\r\n//i;
						#@const = split(',',$line);
						
						
							#if ($const[1] > 10000 || $const[2] > 10000 || $const[3] > 10000 || $const[4] > 10000 || $const[5] >10000 ||)							
						if ($line =~ /^\s*-?\d*,\s*-?\d*,\s*-?\d*,\s*-?\d*,-?\s*-?\d{4,}\s*.*/i)						{
							print OutputFH $line;
							}
							
							
						if ($line =~ /^\s*\d*,\s*\d*,\s*\d*,\s*\d*,\s*0\s*.*/i)			
							{
							print OutputFH $line;
							}
							
						}
				
			 		
		
	} #while( $line = <InputFH> )
	
	
	

				close(  InputFH );
				close( OutputFH );

				#system "del $filename";
				system "move $filename.new $filename.txt";
			

			#print "\t\n File $line not found\n" if not ( -e "$line");
			
}#foreach $filename(<*.air>)

	print "\n\tDone.\n";

sleep 10;


