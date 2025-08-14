root@vagrant:~# cat prime.sh
#!/bin/bash

read -p "entar a number :" num

if [ $num -lt 2 ]; then
        echo "not prime"
        exit
fi

isprime=1
for (( i=2; i*i<=num ; i++ ))
do
        if ((num % i == 0)); then
        isprime=0
         break
    fi
done
if [ $isprime -eq 1 ]; then
        echo "prime"
else
        echo "not"
fi


