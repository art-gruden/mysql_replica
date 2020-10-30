dateOfUse=$(TZ=EEST date)
echo "Date: $dateOfUse"
$(df -h > t.txt)
while read Filesystem Size Used Avail Use Mounted on
do
    mysql -h 127.0.0.1 --port 3308 -uroot -ptoor db -e "insert into DiskUsage (DiskUsage, DateOfUsage,Filesystem ) values ('$Use', '$dateOfUse','$Filesystem')"
done < t.txt
# Filesystem 
