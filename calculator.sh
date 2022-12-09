#!bin/bash
YesorNo="yes"
echo -e  "Welcome to Min-Project \n"
while [ $YesorNo = "yes" ]
do
echo "Enter the first No." 
read num1 
echo "Enter the second No."
read num2
echo  "Press 1 for Addition "
echo  "Press 2 for subtraction "
echo  "Press 3 for Multiplication "
echo  "Press 4 for division "

read option
case $option in
             "1")
                let sum=$num1+$num2
                echo "------------------------------------"  >> history.txt
                echo "Sum = $sum" 
                echo "------------------------------------"  >> history.txt

                echo -e " summation : \n  $num1 + $num2 = $sum" >> history.txt
                echo -e "\n"
                ;;
             "2")
                let diff=$num1-$num2
                echo "------------------------------------" >> history.txt

                echo "Difference = $diff"
               echo "------------------------------------" >> history.txt


                echo -e "difference: \n  $num1 - $num2 = $diff" >> history.txt
                echo -e "\n"
                ;;
             "3")
                let pro=$num1*$num2
                echo "------------------------------------" >>history.txt
 
                echo "Product = $pro"
                echo "------------------------------------" >>history.txt 
                echo -e "product: \n $num1 * $num2 = $pro" >> history.txt
                echo -e "\n"
                ;;
             "4")
                let rslt=$num1/$num2 
                echo "------------------------------------"  >> history.txt
                echo "Result = $rslt"
                echo "------------------------------------" >> history.txt

                echo -e "division \n $num1 / $num2 = $rslt" >> history.txt
                echo -e "\n"
                ;;
             *)
                echo "Operation not found!" ;; 

esac
echo "Do you want to continue (yes or other) ?"
read YesorNo
if [ $YesorNo != "yes" ]
then
exit
fi
done