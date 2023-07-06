#This is a function file so no shabang line, extension and ex permission needed

goodmorning() {
        echo "OHAYO GOZAIMASU"
        echo "Todays Date : `date`"
}

takingbkp() {
        echo "Taking backup of $1 directory"
        sleep 5
        echo "Backup Successfull"
}
 
# STEPS TO USE THE FUNCTION
- source funfile (write the file name)
- goodmorning
	OHAYO GOZAIMASU
	Todays Date : Thu Jul  6 03:22:33 UTC 2023
- takingbkp
	Taking backup of  directory
	Backup Successfull

