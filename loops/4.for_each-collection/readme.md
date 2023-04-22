- now this creates 3 subnets in 1 az . But if we need to in 3 different
  azs , we need to keep azs block inside for each . 
  
- But in one resource/module block, only 1 for_each can be given

- so we merge subnets and AZS into a collection , and run for_each through them
