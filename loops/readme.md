loops 
===========

count 
------------
loops over resources and modules , cant loop inside them

count has 2 limitations

-- we cant loop over inline elements such as ingress and egress rules in sg
-- when we use count , it creates array of resources/ modules . If we delete any one of them from middle of array
   every single variable will be shifted by -1 .

aws_subnet.example[0] : 10.0.0.0/16
aws_subnet.example[1] : 10.0.1.0/16
aws_subnet.example[2] : 10.0.2.0/16


for_each
------------
- loops over resources and modules , can loop inside inline blocks in resources and modules
- accepts inputs as sets and maps
- creates map of resources, so if you delete something from middle , it doesnt give a fuck
- it doesnt support lists , so to convert lists use toset() function


aws_subnet.example["10.0.0.0/16"] : 10.0.0.0/16
aws_subnet.example["10.0.1.0/16"] : 10.0.1.0/16
aws_subnet.example["10.0.2.0/16"] : 10.0.2.0/16












for expression
----------------
used to loop over lists and maps













for string directive 
--------------------------
used to loop over lists and maps within a string