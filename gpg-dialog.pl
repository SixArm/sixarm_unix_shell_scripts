# This program is distributed under the terms of the GNU General Public
# License in effect on August 2001. For further information please see
# http://www.fsf.org
# Copyright (C) 2001 Jagadeesh Venugopal gpg-dialog@jagadeesh.org
# This program is a simple menu interface to GNUPG 1.0.6. I find myself 
# forgetting the command line options, so I created this. You can essentially
# run this script on Windows and Unix systems that have Perl 5.x installed.
# This was meant to be a quick and dirty script, but if you provide feedback
# I will incorporate it. Send all feedback to gpg-dialog@jagadeesh.org
# To run this script, all you need to do is to type 
# perl gpg-dialog.pl 
# on your command line.

###########################################################################
# The main routine where the main menu is presented. Depending upon what
# the user selected, the appropriate subroutine is called
###########################################################################

while(1) {
print "\nWelcome to the GNUPG Wizard!\n";
print "============================\n\n";
$value = menu(
	
	"Main Menu",
	"Key Management",
	"Encryption/Decryption",
	"Clear Signature/Verification",
	"Detached Signature/Verification",
);

($value == 1) && key_management();
($value == 2) && encrypt_decrypt();
($value == 3) && clear_signature();
($value == 4) && detached_signature();
($value == 0) && exit;

}

###########################################################################
# The submenus
# 
###########################################################################
sub key_management {
	my $value;
	$value = menu(
		"Key Management Submenu",
		"Generate public and private keypair",
		"Export keys",
		"Import keys",
		"Revoke keys",
		"List keys",
		"List signatures",
		"Show fingerprints",
		"Show private keys",
		"Delete key",
		"Delete private key",
		"Edit key",
	);
	($value == 1) && call_gpg("--gen-key");
	($value == 2) && export_keys();
	($value == 3) && import_keys();
	($value == 4) && revoke_keys();
	($value == 5) && list_keys();
	($value == 6) && list_signatures();
	($value == 7) && show_fingerprints();
	($value == 8) && show_private_keys();
	($value == 9) && delete_key();
	($value == 10) && delete_private_key();
	($value == 11) && edit_key();
	($value == 0) && return;
}

sub encrypt_decrypt{
	my $value;
	$value = menu(
		"Encryption/Decryption Submenu",
		"Encrypt and sign file",
		"Decrypt file and verify signature",
		"Conventional encrypt file",
		"Conventional decrypt file"
	);
	
	($value == 1) && encrypt_and_sign();
	($value == 2) && decrypt_and_verify();
	($value == 3) && conventional_encrypt();
	($value == 4) && conventional_decrypt();
	($value == 0) && return;

}

sub clear_signature {
	my $value;
	$value = menu(
		"Clear Signature/Verification Menu",
		"Clear sign a file",
		"Verify a clearsigned file"
	);

	($value == 1) && create_clear_signature();
	($value == 2) && verify_clear_signature();
	($value == 0) && return;
}

sub detached_signature {
	my $value;
	$value = menu(
		"Detached Signature/Verification Menu",
		"Detached sign a file",
		"Verify a detached signature"
	);

	($value == 1) && create_detached_signature();
	($value == 2) && verify_detached_signature();
	($value == 0) && return;
}

sub create_detached_signature {
	$input_file = 
		file_dialog("input", "Enter input file to sign");
	$output_file = 
		file_dialog("output", 
			"Enter output signature file name");
	call_gpg("-o $output_file --armor --detach-sig $input_file");
	
}

sub verify_detached_signature {
	$sig_file = file_dialog("input", "Enter signature file name");
	$signed_file = file_dialog("input", "Enter signed file name");
	call_gpg("--verify $sig_file $signed_file");

}
	
sub create_clear_signature{
	$input_file = file_dialog("input",
			"Enter input file to clearsign");
	$output_file = file_dialog("output", "Enter output file name");
	call_gpg("-o $output_file --clearsign $input_file");
}

sub verify_clear_signature {
	$input_file = file_dialog("input", 
		"Enter input file to verify");
	call_gpg("$input_file");
}
	
sub export_keys {
				
	$output_file = file_dialog("output", "Enter output file");
	$username = accept_string(
		"Enter optional username [none exports all users]");
	call_gpg("--export -a -o $output_file $username");
}
sub import_keys {
	$input_file = file_dialog("input", "Enter key file name");
	call_gpg("--import $input_file");
}

sub revoke_keys {
	$output_file = file_dialog("input", 
		"Enter revocation certificate file name");
	$username = accept_string("Enter user name to revoke");
	call_gpg(" -a -o $output_file --gen-revoke $username");
}

sub list_keys {
	call_gpg("--list-keys");
}

sub list_signatures {
	call_gpg("--list-sigs");
}

sub show_fingerprints {
	call_gpg("--fingerprint");
}

sub show_private_keys {
	call_gpg("--list-secret-keys");
}

sub delete_key {
	$username = accept_string("Enter username to be deleted");
	call_gpg(" --delete-key $username");
}

sub delete_private_key {
	$username = accept_string("Enter username to be deleted");
	call_gpg(" --delete-secret-key $username");
}

sub edit_key {
	$username = accept_string("Enter username to be edited");
	call_gpg("--edit-key $username");
}

sub encrypt_and_sign {

	$input_file = file_dialog("input", 
		"Enter input file to encrypt");
	$output_file = file_dialog("output",
			"Enter encrypted file name");
	$recipient = accept_string("Enter recipient\'s username");
	call_gpg("-o $output_file --armor --recipient $recipient --sign --encrypt $input_file");

}

sub decrypt_and_verify {
	$input_file = file_dialog("input", "Enter input file to decrypt");
	$output_file = file_dialog("output", "Enter decrypted file name");
	call_gpg("-o $output_file --decrypt $input_file");

}

sub conventional_encrypt {
	$input_file = file_dialog("input", "Enter input file to encrypt");
	$output_file = file_dialog("output", "Enter encrypted file name");
	call_gpg("-o $output_file --armor --symmetric $input_file");

}

sub conventional_decrypt {
	decrypt_and_verify();	
}


sub call_gpg {
	my $arg = $_[0];
	print "gpg $arg\n";
	$output = `gpg $arg`;
	print "$output";
}

sub menu {
	my @options;
	my $title;

	($title, @options) = @_;
	my $title_length = length($title);
	while(1) {
		my $count = 0;
		print "\n$title\n" . "-" x $title_length . "\n\n";
	
		my $option;
		foreach $option (@options) {
			$count++;
			print "$count: " . $options[$count-1] . "\n";
		}
		print "0: Return";
		print "\n\nSelect an option(0-$count): ";
			
		my $input_number;
		$input_number = <STDIN>;
		chomp($input_number);
		if(($input_number < 0) or ($input_number > $count)) {
			print "\nError. Choose a number from 0 to $count\n";
		} else {
			return $input_number;
		}
	}
}
sub menu_test {
	my @menu_opts = ("Choose only one option", 
	"First", "Second", "Third", "Fourth", 
	"Fifth");
	print "You selected: " . $menu_opts[menu(@menu_opts)] . "\n";
}
#&menu_test;

sub file_dialog {
	my $mode = shift; #should be "input" or "output"
	my $prompt = shift;
	
	if($mode eq "input") {
		#input mode; just check that the file exists and return the file
		#name. If the file does not exist, then loop endlessly
		my $input_file_name = "";
		while(1) {
			print "$prompt: ";
			$input_file_name = <STDIN>;
			chomp($input_file_name);
			if(-r $input_file_name) {
				return $input_file_name;
			} else {
				print "Error. File $input_file_name is not readable\n";
			}
		}
	} else {
		my $output_file_name = "";
		while(1) {
			print "$prompt: ";
			$output_file_name = <STDIN>;
			chomp($output_file_name);
			if((! -e $output_file_name) 
				or ((-e $output_file_name) and (-w $output_file_name))){
					return $output_file_name;
			} else {
				print "Error. File $output_file_name is not writeable\n";
			}
		}
	}
}

sub file_dialog_test {
	my $input_file = file_dialog("input", "Enter a file name for input");
	print "You entered $input_file for read\n";
	my $output_file = file_dialog("output", "Enter a file name for output");
	print "You entered $output_file for write\n";
}
#&file_dialog_test;

sub accept_string {
        my $prompt = $_[0];
        print "$prompt: ";
        $choice = <STDIN>;
        chomp($choice);
        return($choice);
}
1;
